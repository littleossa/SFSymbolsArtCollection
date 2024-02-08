//
//  ArtComponentView.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

struct ArtComponentView: View {
    
    init(
        name: String,
        initialPrimaryColor: Color = .black,
        initialSecondaryColor: Color = .black,
        initialPosition: ArtWorkModel.InitialSymbolRow,
        primaryColor: Color = .black,
        secondaryColor: Color = .black,
        fontWeight: Font.Weight = .regular,
        widthRatio: CGFloat,
        heightRatio: CGFloat,
        rotationDegrees: CGFloat = 0,
        rotationAxis: (x: CGFloat, y: CGFloat, z: CGFloat) = (x: 0, y: 0, z: 1),
        horizontalOffsetRatio: CGFloat = 0,
        verticalOffsetRatio: CGFloat = 0,
        isAnimating: Bool,
        symbolCountToWaitFor: Int
    ) {
        self.name = name
        self.initialPrimaryColor = initialPrimaryColor
        self.initialSecondaryColor = initialSecondaryColor
        self.initialPosition = initialPosition
        self.primaryColor = primaryColor
        self.secondaryColor = secondaryColor
        self.fontWeight = fontWeight
        self.widthRatio = widthRatio
        self.heightRatio = heightRatio
        self.rotationDegrees = rotationDegrees
        self.rotationAxis = rotationAxis
        self.horizontalOffsetRatio = horizontalOffsetRatio
        self.verticalOffsetRatio = verticalOffsetRatio
        self.isAnimating = isAnimating
        self.symbolCountToWaitFor = symbolCountToWaitFor
    }
    
    @Environment(ArtWorkModel.self) var model
    let name: String
    let initialPrimaryColor: Color
    let initialSecondaryColor: Color
    let initialPosition: ArtWorkModel.InitialSymbolRow
    let primaryColor: Color
    let secondaryColor: Color
    let fontWeight: Font.Weight
    let widthRatio: CGFloat
    let heightRatio: CGFloat
    let rotationDegrees: CGFloat
    var rotationAxis: (x: CGFloat, y: CGFloat, z: CGFloat)
    let horizontalOffsetRatio: CGFloat
    let verticalOffsetRatio: CGFloat
    let isAnimating: Bool
    let symbolCountToWaitFor: Int
    
    private var initialValue: AnimationValues {
        return .init(
            primaryColor: initialPrimaryColor,
            secondaryColor: initialSecondaryColor,
            width: model.initialSymbolLength,
            height: model.initialSymbolLength,
            offsetX: model.calculatingInitialOffsetX(forPosition: initialPosition),
            offsetY: model.calculatingInitialOffsetY(forPosition: initialPosition)
        )
    }
    
    private var finalValue: AnimationValues {
        return .init(
            primaryColor: primaryColor,
            secondaryColor: secondaryColor,
            fontWeight: fontWeight,
            width: model.calculatingProportionalValue(withRatio: widthRatio),
            height: model.calculatingProportionalValue(withRatio: heightRatio),
            rotationDegrees: rotationDegrees,
            rotationAxis: rotationAxis,
            offsetX: model.calculatingProportionalValue(withRatio: horizontalOffsetRatio),
            offsetY: model.calculatingProportionalValue(withRatio: verticalOffsetRatio)
        )
    }
    
    private var waitingTime: Double {
        if symbolCountToWaitFor <= 0 {
            // In case of setting it to 0, the symbols disappear from the view.
            return 0.001
        }
        return model.waitingTime(forCount: symbolCountToWaitFor)
    }
    
    var body: some View {
        Image(systemName: name)
            .resizable()
            .keyframeAnimator(
                initialValue: initialValue,
                trigger: isAnimating
            ) { content, value in
                
                SymbolNameFrameView(
                    name: name,
                    length: initialValue.width,
                    frameOpacity: value.symbolNameVisibleValue
                ) {
                    
                    Group {
                        if value.symbolNameVisibleValue == 1 {
                            content
                                .scaledToFit()
                        } else {
                            content
                        }
                    }
                    .foregroundStyle(
                        value.primaryColor,
                        value.secondaryColor
                    )
                    .fontWeight(value.fontWeight)
                    .frame(
                        width: value.width,
                        height: value.height
                    )
                }
                .rotation3DEffect(
                    .degrees(value.rotationDegrees),
                    axis: value.rotationAxis
                )
                .offset(value.offset)
                
            } keyframes: { value in
                
                KeyframeTrack(\.primaryColor) {
                    LinearKeyframe(value.primaryColor, duration: waitingTime)
                    CubicKeyframe(finalValue.primaryColor, duration: model.animationDurationPerSymbol)
                }
                
                KeyframeTrack(\.secondaryColor) {
                    LinearKeyframe(value.secondaryColor, duration: waitingTime)
                    CubicKeyframe(finalValue.secondaryColor, duration: model.animationDurationPerSymbol)
                }
                
                KeyframeTrack(\.fontWeightValue) {
                    LinearKeyframe(value.fontWeightValue, duration: waitingTime)
                    CubicKeyframe(finalValue.fontWeightValue, duration: model.animationDurationPerSymbol)
                }
                
                KeyframeTrack(\.width) {
                    LinearKeyframe(value.width, duration: waitingTime)
                    CubicKeyframe(finalValue.width, duration: model.animationDurationPerSymbol)
                }
                
                KeyframeTrack(\.height) {
                    LinearKeyframe(value.height, duration: waitingTime)
                    CubicKeyframe(finalValue.height, duration: model.animationDurationPerSymbol)
                }
                
                KeyframeTrack(\.rotationDegrees) {
                    LinearKeyframe(value.rotationDegrees, duration: waitingTime)
                    CubicKeyframe(finalValue.rotationDegrees, duration: model.animationDurationPerSymbol)
                }
                
                KeyframeTrack(\.rotationAxis.x) {
                    LinearKeyframe(value.rotationAxis.x, duration: waitingTime)
                    CubicKeyframe(finalValue.rotationAxis.x, duration: model.animationDurationPerSymbol)
                }
                
                KeyframeTrack(\.rotationAxis.y) {
                    LinearKeyframe(value.rotationAxis.y, duration: waitingTime)
                    CubicKeyframe(finalValue.rotationAxis.y, duration: model.animationDurationPerSymbol)
                }
                
                KeyframeTrack(\.rotationAxis.z) {
                    LinearKeyframe(value.rotationAxis.z, duration: waitingTime)
                    CubicKeyframe(finalValue.rotationAxis.z, duration: model.animationDurationPerSymbol)
                }
                
                KeyframeTrack(\.offset) {
                    LinearKeyframe(value.offset, duration: waitingTime)
                    CubicKeyframe(finalValue.offset, duration: model.animationDurationPerSymbol)
                }
                
                KeyframeTrack(\.symbolNameVisibleValue) {
                    LinearKeyframe(1, duration: waitingTime)
                    CubicKeyframe(0, duration: model.animationDurationPerSymbol * 0.2)
                }
            }
    }
}

#Preview {
    ArtComponentView(
        name: "circle.fill",
        initialPosition: .third(.first),
        primaryColor: .red,
        widthRatio: 1,
        heightRatio: 1,
        isAnimating: true,
        symbolCountToWaitFor: 0
    )
    .environment(ArtWorkModel.preview)
}
