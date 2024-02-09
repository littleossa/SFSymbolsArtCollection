//
//  ImWearingPantsArtView.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

struct ImWearingPantsArtView: View {
    
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
            AnimatableSymbolView(element: currentPose.element, isAnimating: isAnimating)
                .contentTransition(isChangingPose ? .symbolEffect(.replace) : .identity)
                .offset(x: model.calculatingProportionalValue(withRatio: currentPose.offsetXRatio))
            
            ForEach(FinishPoseElement.allCases) {
                
                if $0 == .pants {
                    AnimatableSymbolView(element: $0.value, isAnimating: isAnimating)
                } else if currentPose.isFinished {
                    SymbolArtDisplayView(shouldResizeForCoverImage: false, element: $0.value)
                        .transition(.symbolEffect(.appear))
                }
            }
            
            ForEach(FaceElement.allCases) {
                AnimatableSymbolView(element: $0.value, isAnimating: isAnimating)
                    .symbolEffect(.bounce, value: $0.isMusic ? musicCount : 0)
            }
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
