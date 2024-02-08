//
//  ImWearingPantsArtView.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

struct ImWearingPantsArtView: View {
    
    enum Pose: String {
        case walk = "figure.walk"
        case discSport = "figure.disc.sports"
        case martialArts = "figure.martial.arts"
        case strengthTraining = "figure.strengthtraining.traditional"
        case football = "figure.australian.football"
        case intervalTraining = "figure.highintensity.intervaltraining"
        case finish = ""
        
        var next: Pose {
            switch self {
            case .walk:
                    .discSport
            case .discSport:
                    .martialArts
            case .martialArts:
                    .strengthTraining
            case .strengthTraining:
                    .football
            case .football:
                    .intervalTraining
            case .intervalTraining:
                    .finish
            case .finish:
                    .finish
            }
        }
        
        var offsetXRatio: CGFloat {
            switch self {
            case .walk, .discSport, .strengthTraining, .finish:
                0
            case .martialArts:
                0.04
            case .football:
                -0.1
            case .intervalTraining:
                -0.01
            }
        }
    }
    
    @Environment(ArtWorkModel.self) var model
    @State private var isAnimating = false
    @State private var isChangingPose = false
    @State private var musicCount = 0
    @State private var musicTimer: Timer?
    @State private var currentPose: Pose = .walk
    @State private var poseTimer: Timer?
    
    var body: some View {
        
        ZStack {
            
            // MARK: - Current pose
            ArtComponentView(
                name: currentPose.rawValue,
                initialPosition: .third(.second),
                primaryColor: .yellow,
                widthRatio: 0.6,
                heightRatio: 1,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 10
            )
            .contentTransition(isChangingPose ? .symbolEffect(.replace) : .identity)
            .offset(x: model.calculatingProportionalValue(withRatio: currentPose.offsetXRatio))
            
            // MARK: - 􁉨 Pants
            ArtComponentView(
                name: "parkingsign.steeringwheel",
                initialPosition: .third(.first),
                primaryColor: .palePink,
                fontWeight: .ultraLight,
                widthRatio: 0.35,
                heightRatio: 0.2,
                horizontalOffsetRatio: -0.07,
                verticalOffsetRatio: 0.03,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 16
            )
            .zIndex(0.1)
            
            if currentPose == .finish {
                
                Group {
                    
                    // MARK: - 􁗅 Pose
                    Image(systemName: "figure.arms.open")
                        .resizable()
                        .foregroundStyle(.yellow)
                        .frame(width: model.calculatingProportionalValue(withRatio: 0.6),
                               height: model.calculatingProportionalValue(withRatio: 1))
                    
                    // MARK: - 􀆹 Chest shadow
                    Image(systemName: "moon")
                        .resizable()
                        .foregroundStyle(.black.opacity(0.6))
                        .fontWeight(.ultraLight)
                        .frame(width: model.calculatingProportionalValue(withRatio: 0.06),
                               height: model.calculatingProportionalValue(withRatio: 0.015))
                        .rotationEffect(.degrees(-10))
                        .offset(x: model.calculatingProportionalValue(withRatio: -0.09),
                                y: model.calculatingProportionalValue(withRatio: -0.125))
                    
                    Image(systemName: "moon")
                        .resizable()
                        .foregroundStyle(.black.opacity(0.6))
                        .fontWeight(.ultraLight)
                        .frame(width: model.calculatingProportionalValue(withRatio: 0.06),
                               height: model.calculatingProportionalValue(withRatio: 0.015))
                        .rotation3DEffect(
                            .degrees(160),
                            axis: (x: 0, y: 1, z: 0)
                        )
                        .offset(x: model.calculatingProportionalValue(withRatio: 0.085),
                                y: model.calculatingProportionalValue(withRatio: -0.125))
                    
                    // MARK: - 􀏄 Parts for shaping
                    Image(systemName: "rectangle.fill")
                        .resizable()
                        .foregroundStyle(Color(uiColor: .systemBackground))
                        .fontWeight(.black)
                        .frame(width: model.calculatingProportionalValue(withRatio: 0.3),
                               height: model.calculatingProportionalValue(withRatio: 0.4))
                        .offset(x: model.calculatingProportionalValue(withRatio: -0.25),
                                y: model.calculatingProportionalValue(withRatio: -0.1))
                    
                    Image(systemName: "rectangle.fill")
                        .resizable()
                        .foregroundStyle(Color(uiColor: .systemBackground))
                        .fontWeight(.black)
                        .frame(width: model.calculatingProportionalValue(withRatio: 0.3),
                               height: model.calculatingProportionalValue(withRatio: 0.4))
                        .offset(x: model.calculatingProportionalValue(withRatio: 0.25),
                                y: model.calculatingProportionalValue(withRatio: -0.1))
                    
                    // MARK: - 􀊡 Neck
                    Image(systemName: "speaker.fill")
                        .resizable()
                        .foregroundStyle(.yellow)
                        .frame(width: model.calculatingProportionalValue(withRatio: 0.2),
                               height: model.calculatingProportionalValue(withRatio: 0.38))
                        .rotationEffect(.degrees(90))
                        .offset(x: model.calculatingProportionalValue(withRatio: -0.005),
                                y: model.calculatingProportionalValue(withRatio: -0.27))
                    
                    // MARK: - 􀂓 Parts for shaping
                    Image(systemName: "square.fill")
                        .resizable()
                        .foregroundStyle(Color(uiColor: .systemBackground))
                        .frame(width: model.calculatingProportionalValue(withRatio: 0.2),
                               height: model.calculatingProportionalValue(withRatio: 0.2))
                        .offset(x: model.calculatingProportionalValue(withRatio: 0.14),
                                y: model.calculatingProportionalValue(withRatio: -0.385))
                    
                    Image(systemName: "square.fill")
                        .resizable()
                        .foregroundStyle(Color(uiColor: .systemBackground))
                        .frame(width: model.calculatingProportionalValue(withRatio: 0.2),
                               height: model.calculatingProportionalValue(withRatio: 0.2))
                        .offset(x: model.calculatingProportionalValue(withRatio: -0.14),
                                y: model.calculatingProportionalValue(withRatio: -0.385))
                    
                    // MARK: - 􀆺 Chest
                    Image(systemName: "moon.fill")
                        .resizable()
                        .foregroundStyle(.yellow)
                        .fontWeight(.ultraLight)
                        .frame(width: model.calculatingProportionalValue(withRatio: 0.06),
                               height: model.calculatingProportionalValue(withRatio: 0.04))
                        .rotationEffect(.degrees(-10))
                        .offset(x: model.calculatingProportionalValue(withRatio: -0.09),
                                y: model.calculatingProportionalValue(withRatio: -0.138))
                    
                    Image(systemName: "moon.fill")
                        .resizable()
                        .foregroundStyle(.yellow)
                        .frame(width: model.calculatingProportionalValue(withRatio: 0.06),
                               height: model.calculatingProportionalValue(withRatio: 0.04))
                        .rotation3DEffect(
                            .degrees(160),
                            axis: (x: 0, y: 1, z: 0)
                        )
                        .offset(x: model.calculatingProportionalValue(withRatio: 0.085),
                                y: model.calculatingProportionalValue(withRatio: -0.138))
                    
                    // MARK: - 􀆉 Left arm
                    Image(systemName: "chevron.left")
                        .resizable()
                        .foregroundStyle(.yellow)
                        .fontWeight(.black)
                        .frame(width: model.calculatingProportionalValue(withRatio: 0.2),
                               height: model.calculatingProportionalValue(withRatio: 0.3))
                        .offset(x: model.calculatingProportionalValue(withRatio: -0.2),
                                y: model.calculatingProportionalValue(withRatio: -0.08))
                    
                    // MARK: - 􀆊 Right artm
                    Image(systemName: "chevron.right")
                        .resizable()
                        .foregroundStyle(.yellow)
                        .fontWeight(.black)
                        .frame(width: model.calculatingProportionalValue(withRatio: 0.2),
                               height: model.calculatingProportionalValue(withRatio: 0.3))
                        .offset(x: model.calculatingProportionalValue(withRatio: 0.2),
                                y: model.calculatingProportionalValue(withRatio: -0.08))
                }
                .transition(.symbolEffect(.appear))
                
                Group {
                    // MARK: - 􀀁 Pant center hole cover
                    Image(systemName: "circle.fill")
                        .resizable()
                        .foregroundStyle(.palePink)
                        .frame(width: model.calculatingProportionalValue(withRatio: 0.06),
                               height: model.calculatingProportionalValue(withRatio: 0.06))
                        .offset(x: model.calculatingProportionalValue(withRatio: -0.01),
                                y: model.calculatingProportionalValue(withRatio: 0.04))
                    
                    // MARK: - 􁁌 Patterns on pants
                    Image(systemName: "fan.fill")
                        .resizable()
                        .foregroundStyle(.white)
                        .frame(width: model.calculatingProportionalValue(withRatio: 0.04),
                               height: model.calculatingProportionalValue(withRatio: 0.04))
                        .offset(x: model.calculatingProportionalValue(withRatio: -0.01),
                                y: model.calculatingProportionalValue(withRatio: 0.04))
                    
                    Image(systemName: "fan.fill")
                        .resizable()
                        .foregroundStyle(.white)
                        .frame(width: model.calculatingProportionalValue(withRatio: 0.04),
                               height: model.calculatingProportionalValue(withRatio: 0.04))
                        .offset(x: model.calculatingProportionalValue(withRatio: -0.08),
                                y: model.calculatingProportionalValue(withRatio: 0.02))
                    
                    Image(systemName: "fan.fill")
                        .resizable()
                        .foregroundStyle(.white)
                        .frame(width: model.calculatingProportionalValue(withRatio: 0.04),
                               height: model.calculatingProportionalValue(withRatio: 0.04))
                        .offset(x: model.calculatingProportionalValue(withRatio: 0.08),
                                y: model.calculatingProportionalValue(withRatio: 0.02))
                    
                    Image(systemName: "fan.fill")
                        .resizable()
                        .foregroundStyle(.white)
                        .frame(width: model.calculatingProportionalValue(withRatio: 0.04),
                               height: model.calculatingProportionalValue(withRatio: 0.04))
                        .offset(y: model.calculatingProportionalValue(withRatio: 0.099))
                    
                    // MARK: - 􀲟 Concealing part for pants
                    Image(systemName: "oval.fill")
                        .resizable()
                        .foregroundStyle(.yellow)
                        .frame(width: model.calculatingProportionalValue(withRatio: 0.11),
                               height: model.calculatingProportionalValue(withRatio: 0.03))
                        .rotationEffect(.degrees(45))
                        .offset(x: model.calculatingProportionalValue(withRatio: -0.07),
                                y: model.calculatingProportionalValue(withRatio: 0.09))
                    
                    Image(systemName: "oval.fill")
                        .resizable()
                        .foregroundStyle(.yellow)
                        .frame(width: model.calculatingProportionalValue(withRatio: 0.11),
                               height: model.calculatingProportionalValue(withRatio: 0.03))
                        .rotationEffect(.degrees(-47))
                        .offset(x: model.calculatingProportionalValue(withRatio: 0.06),
                                y: model.calculatingProportionalValue(withRatio: 0.089))
                    
                    // MARK: - 􁎘 Abdomen
                    Image(systemName: "visionpro.fill")
                        .resizable()
                        .foregroundStyle(.yellow)
                        .fontWeight(.ultraLight)
                        .frame(width: model.calculatingProportionalValue(withRatio: 0.25),
                               height: model.calculatingProportionalValue(withRatio: 0.15))
                        .rotationEffect(.degrees(180))
                        .offset(y: model.calculatingProportionalValue(withRatio: -0.045))
                    
                    // MARK: - 􀥤 Belly button
                    Image(systemName: "poweron")
                        .resizable()
                        .foregroundStyle(.black)
                        .fontWeight(.ultraLight)
                        .frame(width: model.calculatingProportionalValue(withRatio: 0.02),
                               height: model.calculatingProportionalValue(withRatio: 0.002))
                        .rotationEffect(.degrees(180))
                    
                    // MARK: - 􀕩 Niple
                    Image(systemName: "smallcircle.filled.circle.fill")
                        .resizable()
                        .foregroundStyle(.brown)
                        .fontWeight(.ultraLight)
                        .frame(width: model.calculatingProportionalValue(withRatio: 0.02),
                               height: model.calculatingProportionalValue(withRatio: 0.01))
                        .rotationEffect(.degrees(15))
                        .offset(x: model.calculatingProportionalValue(withRatio: 0.09),
                                y: model.calculatingProportionalValue(withRatio: -0.138))
                    
                    Image(systemName: "smallcircle.filled.circle.fill")
                        .resizable()
                        .foregroundStyle(.brown)
                        .fontWeight(.ultraLight)
                        .frame(width: model.calculatingProportionalValue(withRatio: 0.02),
                               height: model.calculatingProportionalValue(withRatio: 0.01))
                        .rotationEffect(.degrees(-15))
                        .offset(x: model.calculatingProportionalValue(withRatio: -0.09),
                                y: model.calculatingProportionalValue(withRatio: -0.14))
                }
                .zIndex(0.2)
                .transition(.symbolEffect(.appear))
            }
            
            // MARK: - 􀑪 Music
            ArtComponentView(
                name: "music.note",
                initialPosition: .second(.first),
                widthRatio: 0.1,
                heightRatio: 0.15,
                horizontalOffsetRatio: 0.35,
                verticalOffsetRatio: -0.5,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 0
            )
            .symbolEffect(.bounce, value: musicCount)
            
            // MARK: - 􀫀 Music 3
            ArtComponentView(
                name: "music.quarternote.3",
                initialPosition: .second(.second),
                widthRatio: 0.2,
                heightRatio: 0.15,
                horizontalOffsetRatio: -0.34,
                verticalOffsetRatio: -0.38,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 1
            )
            .symbolEffect(.bounce, value: musicCount)
            
            // MARK: - 􀀁 Face background
            ArtComponentView(
                name: "circle.fill",
                initialPosition: .second(.third),
                primaryColor: .systemBackground,
                widthRatio: 0.2,
                heightRatio: 0.2,
                verticalOffsetRatio: -0.4,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 2
            )
            
            // MARK: - 􀧷 Contour
            ArtComponentView(
                name: "capsule.portrait.fill",
                initialPosition: .second(.fourth),
                primaryColor: .yellow,
                fontWeight: .ultraLight,
                widthRatio: 0.16,
                heightRatio: 0.22,
                verticalOffsetRatio: -0.4,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 2
            )
            
            // MARK: - 􀧷 Contour bottom
            ArtComponentView(
                name: "capsule.portrait.fill",
                initialPosition: .second(.fourth),
                primaryColor: .yellow,
                widthRatio: 0.1,
                heightRatio: 0.16,
                verticalOffsetRatio: -0.35,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 3
            )
            
            // MARK: - 􀨯 nose
            ArtComponentView(
                name: "nose",
                initialPosition: .second(.fifth),
                fontWeight: .ultraLight,
                widthRatio: 0.045,
                heightRatio: 0.06,
                verticalOffsetRatio: -0.38,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 4
            )
            
            // MARK: - 􀦭 Right eyebrow
            ArtComponentView(
                name: "eyebrow",
                initialPosition: .second(.sixth),
                fontWeight: .ultraLight,
                widthRatio: 0.04,
                heightRatio: 0.04,
                horizontalOffsetRatio: 0.03,
                verticalOffsetRatio: -0.41,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 5
            )
            
            // MARK: - 􀦭 Left eyebrow
            ArtComponentView(
                name: "eyebrow",
                initialPosition: .second(.sixth),
                fontWeight: .ultraLight,
                widthRatio: 0.045,
                heightRatio: 0.04,
                rotationDegrees: 180,
                rotationAxis: (x: 0, y: 1, z: 0),
                horizontalOffsetRatio: -0.03,
                verticalOffsetRatio: -0.408,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 5
            )
            
            // MARK: - 􀧷 Concealing part for eyebrow
            ArtComponentView(
                name: "capsule.portrait.fill",
                initialPosition: .second(.fourth),
                primaryColor: .yellow,
                widthRatio: 0.05,
                heightRatio: 0.02,
                rotationDegrees: -10,
                horizontalOffsetRatio: -0.035,
                verticalOffsetRatio: -0.396,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 5
            )
            
            ArtComponentView(
                name: "capsule.portrait.fill",
                initialPosition: .second(.fourth),
                primaryColor: .yellow,
                widthRatio: 0.05,
                heightRatio: 0.02,
                rotationDegrees: 10,
                horizontalOffsetRatio: 0.035,
                verticalOffsetRatio: -0.396,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 5
            )
            
            // MARK: - 􀋭 Right eye
            ArtComponentView(
                name: "eye",
                initialPosition: .second(.seventh),
                fontWeight: .ultraLight,
                widthRatio: 0.04,
                heightRatio: 0.02,
                horizontalOffsetRatio: 0.03,
                verticalOffsetRatio: -0.4,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 6
            )
            
            // MARK: - 􀋭 Left eye
            ArtComponentView(
                name: "eye",
                initialPosition: .second(.seventh),
                fontWeight: .ultraLight,
                widthRatio: 0.04,
                heightRatio: 0.02,
                horizontalOffsetRatio: -0.03,
                verticalOffsetRatio: -0.4,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 6
            )
            
            // MARK: - 􀋮 Right eye.fill
            ArtComponentView(
                name: "eye.fill",
                initialPosition: .third(.seventh),
                primaryColor: .white,
                widthRatio: 0.04,
                heightRatio: 0.02,
                horizontalOffsetRatio: 0.03,
                verticalOffsetRatio: -0.4,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 6
            )
            
            // MARK: - 􀋮 Left eye.fill
            ArtComponentView(
                name: "eye.fill",
                initialPosition: .third(.seventh),
                primaryColor: .white,
                widthRatio: 0.04,
                heightRatio: 0.02,
                horizontalOffsetRatio: -0.03,
                verticalOffsetRatio: -0.4,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 6
            )
            
            // MARK: - 􀦪 Mouth
            ArtComponentView(
                name: "mouth.fill",
                initialPosition: .third(.third),
                primaryColor: .red,
                widthRatio: 0.06,
                heightRatio: 0.02,
                verticalOffsetRatio: -0.32,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 7
            )
            
            ArtComponentView(
                name: "mouth.fill",
                initialPosition: .third(.third),
                primaryColor: .red,
                widthRatio: 0.06,
                heightRatio: 0.02,
                verticalOffsetRatio: -0.33,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 7
            )
            
            // MARK: - 􁒀 Teeth
            ArtComponentView(
                name: "window.casement.closed",
                initialSecondaryColor: .clear,
                initialPosition: .third(.fourth),
                secondaryColor: .white,
                fontWeight: .ultraLight,
                widthRatio: 0.015,
                heightRatio: 0.029,
                rotationDegrees: 90,
                horizontalOffsetRatio: 0.013,
                verticalOffsetRatio: -0.328,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 8
            )
            
            ArtComponentView(
                name: "window.casement.closed",
                initialSecondaryColor: .clear,
                initialPosition: .third(.fourth),
                secondaryColor: .white,
                fontWeight: .ultraLight,
                widthRatio: 0.015,
                heightRatio: 0.029,
                rotationDegrees: 90,
                horizontalOffsetRatio: -0.014,
                verticalOffsetRatio: -0.328,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 8
            )
            
            // MARK: - 􀲟 Hair
            ArtComponentView(
                name: "oval.fill",
                initialPosition: .third(.fifth),
                fontWeight: .ultraLight,
                widthRatio: 0.14,
                heightRatio: 0.057,
                horizontalOffsetRatio: -0.001,
                verticalOffsetRatio: -0.49,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 9
            )
            
            // MARK: - 􀠒 Hair
            ArtComponentView(
                name: "drop.fill",
                initialPosition: .third(.sixth),
                fontWeight: .ultraLight,
                widthRatio: 0.05,
                heightRatio: 0.06,
                rotationDegrees: -65,
                horizontalOffsetRatio: 0.04,
                verticalOffsetRatio: -0.48,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 9
            )
            
            ArtComponentView(
                name: "drop.fill",
                initialPosition: .third(.sixth),
                fontWeight: .ultraLight,
                widthRatio: 0.05,
                heightRatio: 0.1,
                rotationDegrees: 95,
                horizontalOffsetRatio: -0.03,
                verticalOffsetRatio: -0.47,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 9
            )
        }
        .navigationTitle("I'm wearing pants")
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
        .onChange(of: isAnimating) { _, newValue in
            if newValue {
                Timer.scheduledTimer(
                    withTimeInterval: model.waitingTime(forCount: 11),
                    repeats: false
                ) { _ in
                    isChangingPose = true
                }
            }
        }
        .onChange(of: isChangingPose) { _, newValue in
            if newValue {
                poseTimer = Timer.scheduledTimer(
                    withTimeInterval: model.waitingTime(forCount: 1),
                    repeats: true
                ) { _ in
                    currentPose = currentPose.next
                    
                    if currentPose == .finish {
                        poseTimer?.invalidate()
                        musicTimer?.invalidate()
                    }
                }
                
                musicTimer = Timer.scheduledTimer(
                    withTimeInterval: 0.4,
                    repeats: true
                ) { _ in
                    musicCount += 1
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        ImWearingPantsArtView()
            .environment(ArtWorkModel.preview)
    }
}
