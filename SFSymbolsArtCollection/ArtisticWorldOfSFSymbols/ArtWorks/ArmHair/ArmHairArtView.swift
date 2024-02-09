//
//  ArmHairArtView.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

struct ArmHairArtView: View {
    
    @Environment(ArtWorkModel.self) var model
    @State private var isAnimating = false
    
    private let hairAnimationDuration = 3.0
    
    var hairOffset: CGSize {
        let lowestX = model.calculatingProportionalValue(withRatio: -0.14)
        let highestX = model.calculatingProportionalValue(withRatio: 0.246)
        let lowestY = model.calculatingProportionalValue(withRatio: -0.075)
        let highestY = model.calculatingProportionalValue(withRatio: 0.02)
        return CGSize(
            width: CGFloat.random(in: lowestX...highestX),
            height: CGFloat.random(in: lowestY...highestY)
        )
    }
    
    var randomOffsetRatio: CGSize {
        let range: ClosedRange<CGFloat> = -0.45...0.45
        let offsetX = model.calculatingProportionalValue(withRatio: CGFloat.random(in: range))
        let offsetY = model.calculatingProportionalValue(withRatio: CGFloat.random(in: range))
        return CGSize(
            width: offsetX,
            height: offsetY
        )
    }
    
    var randomRotationDegrees: CGFloat {
        CGFloat.random(in: -720...720)
    }
    
    var body: some View {
        ZStack {
            ForEach(ArmHairArtView.Element.allCases) {
                AnimatableSymbolView(element: $0.value, isAnimating: isAnimating)
            }

            ForEach(0..<260) { _ in
                Image(systemName: "alternatingcurrent")
                    .resizable()
                    .foregroundStyle(.black)
                    .keyframeAnimator(
                        initialValue: AnimationValues(
                            width: model.initialSymbolLength,
                            height: model.initialSymbolLength,
                            offsetX: model.calculatingInitialOffsetX(forPosition: .third(.fifth)),
                            offsetY: model.calculatingInitialOffsetY(forPosition: .third(.fifth))
                        ),
                        trigger: isAnimating
                    ) { content, value in
                        
                        SymbolNameFrameView(
                            name: "alternatingcurrent",
                            length: model.initialSymbolLength,
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
                        }
                        .offset(value.offset)
                        
                    } keyframes: { value in
                        
                        KeyframeTrack(\.fontWeightValue) {
                            LinearKeyframe(
                                value.fontWeightValue,
                                duration: model.waitingTime(forCount: 4)
                            )
                            CubicKeyframe(Font.Weight.thin.animatableValue, duration: hairAnimationDuration)
                        }
                        
                        KeyframeTrack(\.width) {
                            LinearKeyframe(
                                value.height,
                                duration:  model.waitingTime(forCount: 4)
                            )
                            CubicKeyframe(model.calculatingProportionalValue(withRatio: 0.08), duration: hairAnimationDuration)
                        }
                        
                        KeyframeTrack(\.height) {
                            LinearKeyframe(
                                value.height,
                                duration: model.waitingTime(forCount: 4)
                            )
                            CubicKeyframe(model.calculatingProportionalValue(withRatio: 0.024), duration: hairAnimationDuration)
                        }
                        
                        KeyframeTrack(\.rotationDegrees) {
                            LinearKeyframe(
                                value.rotationDegrees,
                                duration: model.waitingTime(forCount: 4)
                            )
                            LinearKeyframe(randomRotationDegrees, duration: hairAnimationDuration * 0.1)
                            LinearKeyframe(randomRotationDegrees, duration: hairAnimationDuration * 0.1)
                            LinearKeyframe(randomRotationDegrees, duration: hairAnimationDuration * 0.1)
                            LinearKeyframe(randomRotationDegrees, duration: hairAnimationDuration * 0.1)
                            LinearKeyframe(randomRotationDegrees, duration: hairAnimationDuration * 0.1)
                            LinearKeyframe(randomRotationDegrees, duration: hairAnimationDuration * 0.1)
                            LinearKeyframe(randomRotationDegrees, duration: hairAnimationDuration * 0.1)
                            LinearKeyframe(randomRotationDegrees, duration: hairAnimationDuration * 0.1)
                            LinearKeyframe(100, duration: hairAnimationDuration * 0.1)
                        }
                        
                        KeyframeTrack(\.offset) {
                            LinearKeyframe(
                                value.offset,
                                duration: model.waitingTime(forCount: 4)
                            )
                            LinearKeyframe(randomOffsetRatio, duration: hairAnimationDuration * 0.1)
                            LinearKeyframe(randomOffsetRatio, duration: hairAnimationDuration * 0.1)
                            LinearKeyframe(randomOffsetRatio, duration: hairAnimationDuration * 0.1)
                            LinearKeyframe(randomOffsetRatio, duration: hairAnimationDuration * 0.1)
                            LinearKeyframe(randomOffsetRatio, duration: hairAnimationDuration * 0.1)
                            LinearKeyframe(randomOffsetRatio, duration: hairAnimationDuration * 0.1)
                            LinearKeyframe(randomOffsetRatio, duration: hairAnimationDuration * 0.1)
                            LinearKeyframe(hairOffset, duration: hairAnimationDuration * 0.3)
                        }
                        
                        KeyframeTrack(\.symbolNameVisibleValue) {
                            LinearKeyframe(1, duration: model.waitingTime(forCount: 4))
                            CubicKeyframe(0, duration: model.animationDurationPerSymbol * 0.2)
                        }
                    }
            }
        }
        .navigationTitle("Arm hair")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar(content: {
            ToolbarItemGroup(placement: .bottomBar) {
                Spacer()
                
                PlayButton {
                    isAnimating = true
                }
                .font(.system(size: 32))
                .disabled(isAnimating)
            }
        })
    }
}

#Preview {
    NavigationStack {
        ArmHairArtView()
            .environment(ArtWorkModel.preview)
    }
}
