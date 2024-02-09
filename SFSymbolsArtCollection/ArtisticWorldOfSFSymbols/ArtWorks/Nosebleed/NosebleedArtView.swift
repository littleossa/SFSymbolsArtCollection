//
//  NosebleedArtView.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

struct NosebleedArtView: View {
    
    @Environment(ArtWorkModel.self) var model
    @State private var isAnimating = false
    @State private var isEffectActivated = false
    
    var body: some View {
        
        ZStack {
            ForEach(Element.allCases) {
                    AnimatableSymbolView(element: $0.value, isAnimating: isAnimating)
                    .symbolEffect(.variableColor.hideInactiveLayers,
                                  options: .speed(0.6).repeating,
                                  isActive: $0.isNosebleed ? isEffectActivated : false)
            }
        }
        .navigationTitle("Nosebleed")
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
                    withTimeInterval: model.waitingTime(forCount: 7),
                    repeats: false
                ) { _ in
                    isEffectActivated = true
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        NosebleedArtView()
            .environment(ArtWorkModel.preview)
    }
}
