//
//  ArtComponentView.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

struct ArtComponentView: View {
    
    let name: String
    let initialValue: AnimationValues
    let finalValue: AnimationValues
    let isAnimating: Bool
    let animationDuration: Double
    let waitingTime: Double
    
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
                    CubicKeyframe(finalValue.primaryColor, duration: animationDuration)
                }
                
                KeyframeTrack(\.secondaryColor) {
                    LinearKeyframe(value.secondaryColor, duration: waitingTime)
                    CubicKeyframe(finalValue.secondaryColor, duration: animationDuration)
                }
                
                KeyframeTrack(\.fontWeightValue) {
                    LinearKeyframe(value.fontWeightValue, duration: waitingTime)
                    CubicKeyframe(finalValue.fontWeightValue, duration: animationDuration)
                }
                
                KeyframeTrack(\.width) {
                    LinearKeyframe(value.width, duration: waitingTime)
                    CubicKeyframe(finalValue.width, duration: animationDuration)
                }
                
                KeyframeTrack(\.height) {
                    LinearKeyframe(value.height, duration: waitingTime)
                    CubicKeyframe(finalValue.height, duration: animationDuration)
                }
                
                KeyframeTrack(\.rotationDegrees) {
                    LinearKeyframe(value.rotationDegrees, duration: waitingTime)
                    CubicKeyframe(finalValue.rotationDegrees, duration: animationDuration)
                }
                
                KeyframeTrack(\.rotationAxis.x) {
                    LinearKeyframe(value.rotationAxis.x, duration: waitingTime)
                    CubicKeyframe(finalValue.rotationAxis.x, duration: animationDuration)
                }
                
                KeyframeTrack(\.rotationAxis.y) {
                    LinearKeyframe(value.rotationAxis.y, duration: waitingTime)
                    CubicKeyframe(finalValue.rotationAxis.y, duration: animationDuration)
                }
                
                KeyframeTrack(\.rotationAxis.z) {
                    LinearKeyframe(value.rotationAxis.z, duration: waitingTime)
                    CubicKeyframe(finalValue.rotationAxis.z, duration: animationDuration)
                }
                
                KeyframeTrack(\.offset) {
                    LinearKeyframe(value.offset, duration: waitingTime)
                    CubicKeyframe(finalValue.offset, duration: animationDuration)
                }
                
                KeyframeTrack(\.symbolNameVisibleValue) {
                    LinearKeyframe(1, duration: waitingTime)
                    CubicKeyframe(0, duration: animationDuration * 0.2)
                }
            }
    }
}

#Preview {
    ArtComponentView(
        name: "circle.fill",
        initialValue: .init(
            width: 100,
            height: 100,
            offsetX: 0,
            offsetY: 0
        ), finalValue: .init(
            width: 200,
            height: 200,
            offsetX: 0,
            offsetY: 0
        ),
        isAnimating: true,
        animationDuration: 20,
        waitingTime: 0
    )
}
