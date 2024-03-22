//
//  FireworksArtView.swift
//  SFSymbolsArtCollection
//
//  Created Lil Ossa
//

import SwiftUI

struct FireworksArtView: View {
    
    @Environment(ArtWorkModel.self) var model
    @State private var isAnimating = false
    @State private var isBouncedMediumFirework = false
    
    var body: some View {
        
        ZStack {
            background
            sun
            moon
            rocketFireworks
            buildings
            people
            fireworks
        }
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
        .onChange(of: isAnimating) { _, newValue in
            if newValue {
                Timer.scheduledTimer(withTimeInterval: 15, repeats: false) { _ in
                    isBouncedMediumFirework = true
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        FireworksArtView()
            .environment(ArtWorkModel.preview)
    }
}
    
// MARK: - Private components
extension FireworksArtView {
    // MARK: - Background
    private var background: some View {
        Color.midnightNavy
            .keyframeAnimator(
                initialValue: AnimationValues(
                    width: 0,
                    height: 0,
                    opacity: 0
                ),
                trigger: isAnimating
            ) { content, value in
                content
                    .opacity(value.opacity)
            } keyframes: { value in
                KeyframeTrack(\.opacity) {
                    CubicKeyframe(1, duration: 4)
                }
            }
    }
    
    // MARK: - 􀆮 Sun
    private var sun: some View {
        Image(systemName: "sun.max.fill")
            .resizable()
            .foregroundStyle(.orange)
            .keyframeAnimator(
                initialValue: AnimationValues(
                    width: model.calculatingProportionalValue(withRatio: 0.12),
                    height: model.calculatingProportionalValue(withRatio: 0.12),
                    offsetX: model.calculatingProportionalValue(withRatio: 0.4),
                    offsetY: model.calculatingProportionalValue(withRatio: -0.51)
                ),
                trigger: isAnimating
            ) { content, value in
                content
                    .frame(width: value.width, height: value.height)
                    .offset(value.offset)
            } keyframes: { value in
                KeyframeTrack(\.opacity) {
                    CubicKeyframe(1, duration: 4)
                }
                
                KeyframeTrack(\.offset) {
                    CubicKeyframe(
                        CGSize(width: model.calculatingProportionalValue(withRatio: 0.8),
                               height: model.calculatingProportionalValue(withRatio: -0.31)),
                        duration: 4
                    )
                }
            }
    }
    
    // MARK: - 􀇁 Moon
    private var moon: some View {
        Image(systemName: "moon.stars.fill")
            .resizable()
            .keyframeAnimator(
                initialValue: AnimationValues(
                    primaryColor: .yellow.opacity(0.7),
                    secondaryColor: .awesomeYellow.opacity(0.6),
                    width: model.calculatingProportionalValue(withRatio: 0.12),
                    height: model.calculatingProportionalValue(withRatio: 0.12),
                    offsetX: model.calculatingProportionalValue(withRatio: -0.6),
                    offsetY: model.calculatingProportionalValue(withRatio: -0.41)
                ),
                trigger: isAnimating
            ) { content, value in
                content
                    .foregroundStyle(value.primaryColor, value.secondaryColor)
                    .frame(width: value.width, height: value.height)
                    .offset(value.offset)
            } keyframes: { value in
                KeyframeTrack(\.opacity) {
                    CubicKeyframe(1, duration: 4)
                }
                
                KeyframeTrack(\.offset) {
                    CubicKeyframe(
                        CGSize(
                            width: model.calculatingProportionalValue(withRatio: -0.4),
                            height: model.calculatingProportionalValue(withRatio: -0.44)
                        ),
                        duration: 2
                    )
                    
                    CubicKeyframe(
                        CGSize(
                            width: model.calculatingProportionalValue(withRatio: 0.4),
                            height: model.calculatingProportionalValue(withRatio: -0.51)
                        ),
                        duration: 4
                    )
                }
            }
    }
    
    private var rocketFireworks: some View {
        ZStack {
            // MARK: - RocketFireworkRed
            rocketFirework(.red)
                .keyframeAnimator(
                    initialValue: AnimationValues(
                        width: 0,
                        height: 0,
                        offsetX: model.calculatingProportionalValue(withRatio: -0.215),
                        offsetY: model.calculatingProportionalValue(withRatio: 0.48),
                        opacity: 0
                    ),
                    trigger: isAnimating
                ) { content, value in
                    content
                        .offset(value.offset)
                        .opacity(value.opacity)
                } keyframes: { value in
                    KeyframeTrack(\.offset) {
                        LinearKeyframe(CGSize(
                            width: model.calculatingProportionalValue(withRatio: -0.215),
                            height: model.calculatingProportionalValue(withRatio: 0.48)), duration: 7)
                        CubicKeyframe(CGSize(
                            width: model.calculatingProportionalValue(withRatio: -0.215),
                            height: model.calculatingProportionalValue(withRatio: 0.23)
                        ), duration: 3)
                    }
                    
                    KeyframeTrack(\.opacity) {
                        LinearKeyframe(0, duration: 7)
                        CubicKeyframe(1, duration: 3)
                        CubicKeyframe(0, duration: 1)
                    }
                }
            
            // MARK: - RocketFireworkYellow
            rocketFirework(.yellow)
                .keyframeAnimator(
                    initialValue: AnimationValues(
                        width: 0,
                        height: 0,
                        offsetX: model.calculatingProportionalValue(withRatio: -0.076),
                        offsetY: model.calculatingProportionalValue(withRatio: 0.48),
                        opacity: 0
                    ),
                    trigger: isAnimating
                ) { content, value in
                    content
                        .offset(value.offset)
                        .opacity(value.opacity)
                } keyframes: { value in
                    KeyframeTrack(\.offset) {
                        LinearKeyframe(CGSize(
                            width: model.calculatingProportionalValue(withRatio: -0.076),
                            height: model.calculatingProportionalValue(withRatio: 0.48)), duration: 9)
                        CubicKeyframe(CGSize(
                            width: model.calculatingProportionalValue(withRatio: -0.076),
                            height: model.calculatingProportionalValue(withRatio: 0.36)
                        ), duration: 2)
                    }
                    
                    KeyframeTrack(\.opacity) {
                        LinearKeyframe(0, duration: 9)
                        CubicKeyframe(1, duration: 2)
                        CubicKeyframe(0, duration: 1)
                    }
                }
            
            // MARK: - RocketFireworkYellow
            rocketFirework(.green)
                .keyframeAnimator(
                    initialValue: AnimationValues(
                        width: 0,
                        height: 0,
                        offsetX: model.calculatingProportionalValue(withRatio: 0.34),
                        offsetY: model.calculatingProportionalValue(withRatio: 0.48),
                        opacity: 0
                    ),
                    trigger: isAnimating
                ) { content, value in
                    content
                        .offset(value.offset)
                        .opacity(value.opacity)
                } keyframes: { value in
                    KeyframeTrack(\.offset) {
                        LinearKeyframe(CGSize(
                            width: model.calculatingProportionalValue(withRatio: 0.34),
                            height: model.calculatingProportionalValue(withRatio: 0.48)), duration: 10)
                        CubicKeyframe(CGSize(
                            width: model.calculatingProportionalValue(withRatio: 0.34),
                            height: model.calculatingProportionalValue(withRatio: 0.28)
                        ), duration: 2)
                    }
                    
                    KeyframeTrack(\.opacity) {
                        LinearKeyframe(0, duration: 10)
                        CubicKeyframe(1, duration: 2)
                        CubicKeyframe(0, duration: 1)
                    }
                }
            
            // MARK: - RocketMediumFirework
            rocketFirework(.red)
                .keyframeAnimator(
                    initialValue: AnimationValues(
                        width: 0,
                        height: 0,
                        offsetX: model.calculatingProportionalValue(withRatio: 0.16),
                        offsetY: model.calculatingProportionalValue(withRatio: 0.48),
                        opacity: 0
                    ),
                    trigger: isAnimating
                ) { content, value in
                    content
                        .offset(value.offset)
                        .opacity(value.opacity)
                } keyframes: { value in
                    KeyframeTrack(\.offset) {
                        LinearKeyframe(CGSize(
                            width: model.calculatingProportionalValue(withRatio: 0.16),
                            height: model.calculatingProportionalValue(withRatio: 0.48)), duration: 12)
                        CubicKeyframe(CGSize(
                            width: model.calculatingProportionalValue(withRatio: 0.16),
                            height: model.calculatingProportionalValue(withRatio: 0.18)
                        ), duration: 2)
                    }
                    
                    KeyframeTrack(\.opacity) {
                        LinearKeyframe(0, duration: 12)
                        CubicKeyframe(1, duration: 2)
                        CubicKeyframe(0, duration: 1)
                    }
                }
            
            // MARK: - RocketLargeFirework
            rocketFirework(.white)
                .keyframeAnimator(
                    initialValue: AnimationValues(
                        width: 0,
                        height: 0,
                        offsetX: model.calculatingProportionalValue(withRatio: -0.1),
                        offsetY: model.calculatingProportionalValue(withRatio: 0.48),
                        opacity: 0
                    ),
                    trigger: isAnimating
                ) { content, value in
                    content
                        .offset(value.offset)
                        .opacity(value.opacity)
                } keyframes: { value in
                    KeyframeTrack(\.offset) {
                        LinearKeyframe(CGSize(
                            width: model.calculatingProportionalValue(withRatio: -0.1),
                            height: model.calculatingProportionalValue(withRatio: 0.48)), duration: 14)
                        CubicKeyframe(CGSize(
                            width: model.calculatingProportionalValue(withRatio: -0.1),
                            height: model.calculatingProportionalValue(withRatio: 0)
                        ), duration: 3)
                    }
                    
                    KeyframeTrack(\.opacity) {
                        LinearKeyframe(0, duration: 15)
                        CubicKeyframe(1, duration: 1)
                        CubicKeyframe(0, duration: 1)
                    }
                }
            
            // MARK: - RocketLargeFirework Yellow
            rocketFirework(.yellow)
                .keyframeAnimator(
                    initialValue: AnimationValues(
                        width: 0,
                        height: 0,
                        offsetX: model.calculatingProportionalValue(withRatio: 0.11),
                        offsetY: model.calculatingProportionalValue(withRatio: 0.48),
                        opacity: 0
                    ),
                    trigger: isAnimating
                ) { content, value in
                    content
                        .offset(value.offset)
                        .opacity(value.opacity)
                } keyframes: { value in
                    KeyframeTrack(\.offset) {
                        LinearKeyframe(CGSize(
                            width: model.calculatingProportionalValue(withRatio: 0.11),
                            height: model.calculatingProportionalValue(withRatio: 0.48)), duration: 16)
                        CubicKeyframe(CGSize(
                            width: model.calculatingProportionalValue(withRatio: 0.11),
                            height: model.calculatingProportionalValue(withRatio: -0.23)
                        ), duration: 3)
                    }
                    
                    KeyframeTrack(\.opacity) {
                        LinearKeyframe(0, duration: 16)
                        CubicKeyframe(1, duration: 1)
                        CubicKeyframe(0, duration: 1)
                    }
                }
        }
    }
    
    private var buildings: some View {
        ZStack {
            // MARK: - 􀏄 LitBuildingLarge
            Image(systemName: "rectangle.fill")
                .resizable()
                .keyframeAnimator(
                    initialValue: AnimationValues(
                        width: model.calculatingProportionalValue(withRatio: 0.18),
                        height: model.calculatingProportionalValue(withRatio: 0.3),
                        offsetX: model.calculatingProportionalValue(withRatio: 0.07),
                        offsetY: model.calculatingProportionalValue(withRatio: 0.434)
                    ),
                    trigger: isAnimating
                ) { content, value in
                    content
                        .foregroundStyle(.yellow)
                        .frame(width: value.width, height: value.height)
                        .offset(value.offset)
                } keyframes: { value in
                    KeyframeTrack(\.opacity) {
                        CubicKeyframe(1, duration: 4)
                    }
                }
            
            // MARK: - 􀏄 LitBuildingLarge
            Image(systemName: "rectangle.fill")
                .resizable()
                .keyframeAnimator(
                    initialValue: AnimationValues(
                        primaryColor: .white,
                        width: model.calculatingProportionalValue(withRatio: 0.18),
                        height: model.calculatingProportionalValue(withRatio: 0.3),
                        offsetX: model.calculatingProportionalValue(withRatio: 0.07),
                        offsetY: model.calculatingProportionalValue(withRatio: 0.434)
                    ),
                    trigger: isAnimating
                ) { content, value in
                    content
                        .foregroundStyle(value.primaryColor)
                        .frame(width: value.width, height: value.height)
                        .offset(value.offset)
                } keyframes: { value in
                    KeyframeTrack(\.primaryColor) {
                        CubicKeyframe(Color.yellow.resolve(in: .init()), duration: 6)
                    }
                }
            
            // MARK: - 􀏄 LitBuildingSmall
            Image(systemName: "rectangle.fill")
                .resizable()
                .keyframeAnimator(
                    initialValue: AnimationValues(
                        primaryColor: .white,
                        width: model.calculatingProportionalValue(withRatio: 0.1),
                        height: model.calculatingProportionalValue(withRatio: 0.17),
                        offsetX: model.calculatingProportionalValue(withRatio: -0.09),
                        offsetY: model.calculatingProportionalValue(withRatio: 0.497)
                    ),
                    trigger: isAnimating
                ) { content, value in
                    content
                        .foregroundStyle(value.primaryColor)
                        .frame(width: value.width, height: value.height)
                        .offset(value.offset)
                } keyframes: { value in
                    KeyframeTrack(\.primaryColor) {
                        CubicKeyframe(Color.yellow.resolve(in: .init()), duration: 6)
                    }
                }
            
            // MARK: - 􀮆 BuildingLarge
            Image(systemName: "building.fill")
                .resizable()
                .keyframeAnimator(
                    initialValue: AnimationValues(
                        primaryColor: .gray,
                        width: model.calculatingProportionalValue(withRatio: 0.2),
                        height: model.calculatingProportionalValue(withRatio: 0.3),
                        offsetX: model.calculatingProportionalValue(withRatio: 0.07),
                        offsetY: model.calculatingProportionalValue(withRatio: 0.434)
                    ),
                    trigger: isAnimating
                ) { content, value in
                    content
                        .foregroundStyle(value.primaryColor)
                        .frame(width: value.width, height: value.height)
                        .offset(value.offset)
                } keyframes: { value in
                    KeyframeTrack(\.primaryColor) {
                        CubicKeyframe(Color.lightGray.resolve(in: .init()), duration: 6)
                    }
                }
            
            // MARK: - 􀮆 BuildingSmall
            Image(systemName: "building.fill")
                .resizable()
                .keyframeAnimator(
                    initialValue: AnimationValues(
                        primaryColor: .gray,
                        width: model.calculatingProportionalValue(withRatio: 0.12),
                        height: model.calculatingProportionalValue(withRatio: 0.17),
                        offsetX: model.calculatingProportionalValue(withRatio: -0.09),
                        offsetY: model.calculatingProportionalValue(withRatio: 0.497)
                    ),
                    trigger: isAnimating
                ) { content, value in
                    content
                        .foregroundStyle(value.primaryColor)
                        .frame(width: value.width, height: value.height)
                        .offset(value.offset)
                } keyframes: { value in
                    KeyframeTrack(\.primaryColor) {
                        CubicKeyframe(Color.lightGray.resolve(in: .init()), duration: 6)
                    }
                }
        }
    }
    
    private var people: some View {
        ZStack {
            // MARK: - 􀻸 PersonRight
            Image(systemName: "person.3.sequence.fill")
                .resizable()
                .foregroundStyle(.black)
                .keyframeAnimator(
                    initialValue: AnimationValues(
                        width: model.calculatingProportionalValue(withRatio: 0.2),
                        height: model.calculatingProportionalValue(withRatio: 0.1),
                        offsetX: model.calculatingProportionalValue(withRatio: 0.64),
                        offsetY: model.calculatingProportionalValue(withRatio: 0.538)
                    ),
                    trigger: isAnimating
                ) { content, value in
                    content
                        .foregroundStyle(value.primaryColor)
                        .frame(width: value.width, height: value.height)
                        .rotation3DEffect(
                            .degrees(180),
                            axis: FlipType.horizontal.axis
                        )
                        .offset(value.offset)
                } keyframes: { value in
                    KeyframeTrack(\.offset) {
                        LinearKeyframe(
                            CGSize(
                                width: model.calculatingProportionalValue(withRatio: 0.64),
                                height: model.calculatingProportionalValue(withRatio: 0.538)
                            ),
                            duration: 4
                        )
                        CubicKeyframe(
                            CGSize(
                                width: model.calculatingProportionalValue(withRatio: 0.34),
                                height: model.calculatingProportionalValue(withRatio: 0.538)
                            ),
                            duration: 2
                        )
                    }
                }
            
            // MARK: - 􀻸 PersonLeft
            Image(systemName: "person.3.sequence.fill")
                .resizable()
                .foregroundStyle(.black)
                .keyframeAnimator(
                    initialValue: AnimationValues(
                        width: model.calculatingProportionalValue(withRatio: 0.2),
                        height: model.calculatingProportionalValue(withRatio: 0.1),
                        offsetX: model.calculatingProportionalValue(withRatio: -0.64),
                        offsetY: model.calculatingProportionalValue(withRatio: 0.538)
                    ),
                    trigger: isAnimating
                ) { content, value in
                    content
                        .foregroundStyle(value.primaryColor)
                        .frame(width: value.width, height: value.height)
                        .offset(value.offset)
                } keyframes: { value in
                    KeyframeTrack(\.offset) {
                        LinearKeyframe(
                            CGSize(
                                width: model.calculatingProportionalValue(withRatio: -0.64),
                                height: model.calculatingProportionalValue(withRatio: 0.538)
                            ),
                            duration: 4
                        )
                        CubicKeyframe(
                            CGSize(
                                width: model.calculatingProportionalValue(withRatio: -0.34),
                                height: model.calculatingProportionalValue(withRatio: 0.538)
                            ),
                            duration: 2
                        )
                    }
                }
            
            // MARK: - 􀝋 personCenterRight
            Image(systemName: "person.3.fill")
                .resizable()
                .foregroundStyle(.black)
                .keyframeAnimator(
                    initialValue: AnimationValues(
                        width: model.calculatingProportionalValue(withRatio: 0.2),
                        height: model.calculatingProportionalValue(withRatio: 0.1),
                        offsetX: model.calculatingProportionalValue(withRatio: 0.12),
                        offsetY: model.calculatingProportionalValue(withRatio: 0.538),
                        opacity: 0
                    ),
                    trigger: isAnimating
                ) { content, value in
                    content
                        .foregroundStyle(value.primaryColor)
                        .frame(width: value.width, height: value.height)
                        .offset(value.offset)
                        .opacity(value.opacity)
                } keyframes: { value in
                    KeyframeTrack(\.opacity) {
                        CubicKeyframe(0, duration: 5)
                        CubicKeyframe(1, duration: 2)
                    }
                }
            
            // MARK: - 􀝋 personCenterRight
            Image(systemName: "person.3.fill")
                .resizable()
                .foregroundStyle(.black)
                .keyframeAnimator(
                    initialValue: AnimationValues(
                        width: model.calculatingProportionalValue(withRatio: 0.2),
                        height: model.calculatingProportionalValue(withRatio: 0.1),
                        offsetX: model.calculatingProportionalValue(withRatio: -0.12),
                        offsetY: model.calculatingProportionalValue(withRatio: 0.538),
                        opacity: 0
                    ),
                    trigger: isAnimating
                ) { content, value in
                    content
                        .foregroundStyle(value.primaryColor)
                        .frame(width: value.width, height: value.height)
                        .offset(value.offset)
                        .opacity(value.opacity)
                } keyframes: { value in
                    KeyframeTrack(\.opacity) {
                        CubicKeyframe(0, duration: 5)
                        CubicKeyframe(1, duration: 2)
                    }
                }
        }
    }
    
    private var fireworks: some View {
        ZStack {
            // MARK: - 􀇲 smallFireworkPink
            Image(systemName: "timelapse")
                .resizable()
                .foregroundStyle(.pink)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.125),
                       height: model.calculatingProportionalValue(withRatio: 0.125))
                .offset(x: model.calculatingProportionalValue(withRatio: -0.225),
                        y: model.calculatingProportionalValue(withRatio: 0.125))
                .keyframeAnimator(initialValue: 0, trigger: isAnimating) { content, value in
                    content
                        .opacity(value)
                } keyframes: { value in
                    KeyframeTrack {
                        LinearKeyframe(0, duration: 10)
                        CubicKeyframe(1, duration: 1)
                        CubicKeyframe(0, duration: 2)
                    }
                }
            
            // MARK: - 􀇲 smallFireworkYellow
            Image(systemName: "timelapse")
                .resizable()
                .foregroundStyle(.yellow)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.125),
                       height: model.calculatingProportionalValue(withRatio: 0.125))
                .offset(x: model.calculatingProportionalValue(withRatio: -0.075),
                        y: model.calculatingProportionalValue(withRatio: 0.25))
                .keyframeAnimator(initialValue: 0, trigger: isAnimating) { content, value in
                    content
                        .opacity(value)
                } keyframes: { value in
                    KeyframeTrack {
                        LinearKeyframe(0, duration: 12)
                        CubicKeyframe(1, duration: 1)
                        CubicKeyframe(0, duration: 2)
                    }
                }
            
            // MARK: - 􀇲 smallFireworkGreen
            Image(systemName: "timelapse")
                .resizable()
                .foregroundStyle(.green)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.125),
                       height: model.calculatingProportionalValue(withRatio: 0.125))
                .offset(x: model.calculatingProportionalValue(withRatio: 0.34),
                        y: model.calculatingProportionalValue(withRatio: 0.18))
                .keyframeAnimator(initialValue: 0, trigger: isAnimating) { content, value in
                    content
                        .opacity(value)
                } keyframes: { value in
                    KeyframeTrack {
                        LinearKeyframe(0, duration: 13)
                        CubicKeyframe(1, duration: 1)
                        CubicKeyframe(0, duration: 2)
                    }
                }
            
            // MARK: - 􂁞 mediumFirework
            Image(systemName: "fireworks")
                .resizable()
                .foregroundStyle(.yellow, .red)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.24),
                       height: model.calculatingProportionalValue(withRatio: 0.24))
                .offset(x: model.calculatingProportionalValue(withRatio: 0.14),
                        y: model.calculatingProportionalValue(withRatio: 0.07))
                .keyframeAnimator(initialValue: 0, trigger: isAnimating) { content, value in
                    content
                        .opacity(value)
                } keyframes: { value in
                    KeyframeTrack {
                        LinearKeyframe(0, duration: 15)
                        CubicKeyframe(1, duration: 1)
                        CubicKeyframe(0, duration: 2)
                    }
                }
                .symbolEffect(.bounce, value: isBouncedMediumFirework)
            
            largeFirework(primaryColor: .white, secondaryColor: .red)
                .offset(x: model.calculatingProportionalValue(withRatio: -0.17),
                        y: model.calculatingProportionalValue(withRatio: -0.18))
                .keyframeAnimator(initialValue: 0, trigger: isAnimating) { content, value in
                    content
                        .opacity(value)
                        .scaleEffect(value)
                } keyframes: { value in
                    KeyframeTrack {
                        LinearKeyframe(0, duration: 18)
                        CubicKeyframe(2, duration: 1)
                        CubicKeyframe(0, duration: 2)
                    }
                }
                .symbolEffect(.variableColor.dimInactiveLayers,
                              options: .repeating.speed(2),
                              isActive: true)
            
            largeFirework(primaryColor: .yellow, secondaryColor: .white)
                .offset(x: model.calculatingProportionalValue(withRatio: 0.105),
                        y: model.calculatingProportionalValue(withRatio: -0.34))
                .keyframeAnimator(initialValue: 0, trigger: isAnimating) { content, value in
                    content
                        .opacity(value)
                        .scaleEffect(value)
                } keyframes: { value in
                    KeyframeTrack {
                        LinearKeyframe(0, duration: 19)
                        CubicKeyframe(1.2, duration: 1)
                        CubicKeyframe(0, duration: 2)
                    }
                }
                .symbolEffect(.variableColor.dimInactiveLayers,
                              options: .repeating.speed(2),
                              isActive: true)
        }
    }
    
    // MARK: - RocketFirework
    private func rocketFirework(_ color: Color) -> some View {
        
        ZStack {
            // MARK: - 􁎄 Rocket smoke
            Image(systemName: "water.waves")
                .resizable()
                .foregroundStyle(color)
                .fontWeight(.ultraLight)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.2),
                       height: model.calculatingProportionalValue(withRatio: 0.1))
                .rotationEffect(.degrees(90))
            
            // MARK: - 􀏄 Rocket smoke right concealment
            Image(systemName: "rectangle.fill")
                .resizable()
                .foregroundStyle(.midnightNavy)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.05),
                       height: model.calculatingProportionalValue(withRatio: 0.2))
                .offset(x: model.calculatingProportionalValue(withRatio: 0.046))
            
            // MARK: - 􀏄 Rocket smoke left concealment
            Image(systemName: "rectangle.fill")
                .resizable()
                .foregroundStyle(.midnightNavy)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.05),
                       height: model.calculatingProportionalValue(withRatio: 0.2))
                .offset(x: model.calculatingProportionalValue(withRatio: -0.046))
            
            // MARK: - 􀀁 Rocket smoke top
            Image(systemName: "circle.fill")
                .resizable()
                .foregroundStyle(color)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.03),
                       height: model.calculatingProportionalValue(withRatio: 0.04))
                .offset(y: model.calculatingProportionalValue(withRatio: -0.1))
        }
    }
    
    private func largeFirework(primaryColor: Color, secondaryColor: Color) -> some View {
        ZStack {
            // MARK: - 􀌙 large horizontal firework
            Image(systemName: "dot.radiowaves.left.and.right")
                .resizable()
                .foregroundStyle(primaryColor, secondaryColor)
                .fontWeight(.black)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.347),
                       height: model.calculatingProportionalValue(withRatio: 0.235))
            
            // MARK: - 􀌙 large vertical firework
            Image(systemName: "dot.radiowaves.left.and.right")
                .resizable()
                .foregroundStyle(primaryColor, secondaryColor)
                .fontWeight(.black)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.347),
                       height: model.calculatingProportionalValue(withRatio: 0.235))
                .rotationEffect(.degrees(90))
            
            // MARK: - 􁅃 large dot firework
            Image(systemName: "circle.dotted")
                .resizable()
                .foregroundStyle(primaryColor)
                .fontWeight(.ultraLight)
                .frame(width: model.calculatingProportionalValue(withRatio: 0.42),
                       height: model.calculatingProportionalValue(withRatio: 0.42))
        }
    }
}
