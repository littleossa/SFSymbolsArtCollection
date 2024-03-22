//
//  AnimatableSymbolView.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

struct AnimatableSymbolView: View {
    
    init(element: SymbolArtElement, isAnimating: Bool) {
        self.name = element.name
        self.initialPrimaryColor = element.initialPrimaryColor
        self.initialSecondaryColor = element.initialSecondaryColor
        self.initialPosition = element.initialPosition
        self.primaryColor = element.primaryColor
        self.secondaryColor = element.secondaryColor
        self.fontWeight = element.fontWeight
        self.widthRatio = element.widthRatio
        self.heightRatio = element.heightRatio
        self.rotationDegrees = element.rotationDegrees
        self.rotationAxis = element.flip.axis
        self.horizontalOffsetRatio = element.horizontalOffsetRatio
        self.verticalOffsetRatio = element.verticalOffsetRatio
        self.isAnimating = isAnimating
        self.symbolCountToWaitFor = element.symbolCountToWaitFor
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
                    .rotationEffect(.degrees(value.rotationDegrees))
                    .rotation3DEffect(.degrees(180),
                                      axis: value.rotationAxis,
                                      anchorZ: 0)
                }
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
    AnimatableSymbolView(
        element: AfroBoyArtView.Element.hair.value,
        isAnimating: true
    )
    .environment(ArtWorkModel.preview)
}
