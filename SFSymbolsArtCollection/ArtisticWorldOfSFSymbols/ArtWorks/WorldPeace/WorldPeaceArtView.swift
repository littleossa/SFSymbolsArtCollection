//
//  WorldPeaceArtView.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

struct WorldPeaceArtView: View {
    
    @Environment(ArtWorkModel.self) var model
    @State private var isAnimating = false
    
    var body: some View {
        
        ZStack {
            
            // MARK: - Characters black shadow
            ForEach(CharacterPosition.allCases) {
                
                AnimatableSymbolView(
                    name: "\($0.value.character).circle",
                    initialPosition: $0.value.initialPosition,
                    secondaryColor: .systemBackground,
                    widthRatio: 0.15,
                    heightRatio: 0.15,
                    horizontalOffsetRatio: $0.value.horizontalOffsetRatio,
                    verticalOffsetRatio: $0.value.verticalOffsetRatio,
                    isAnimating: isAnimating,
                    symbolCountToWaitFor: 4
                )
            }
            
            // MARK: - Colored Characters
            ForEach(WorldPeaceArtView.CharacterPosition.allCases) {
                AnimatableSymbolView(
                    name: "\($0.value.character).circle",
                    initialPosition: $0.value.initialPosition,
                    primaryColor: $0.value.color,
                    secondaryColor: .systemBackground,
                    widthRatio: 0.15,
                    heightRatio: 0.15,
                    horizontalOffsetRatio: $0.value.horizontalOffsetRatio - 0.006,
                    verticalOffsetRatio: $0.value.verticalOffsetRatio,
                    isAnimating: isAnimating,
                    symbolCountToWaitFor: 5
                )
            }
            
            // MARK: - 􀀁 Sea
            AnimatableSymbolView(
                name: "circle.fill",
                initialPosition: .second(.third),
                primaryColor: .cyan,
                widthRatio: 0.55,
                heightRatio: 0.55,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 0
            )
            
            // MARK: - 􀵶 Earth
            AnimatableSymbolView(
                name: "globe.asia.australia.fill",
                initialPosition: .second(.fourth),
                primaryColor: .green,
                fontWeight: .ultraLight,
                widthRatio: 0.55,
                heightRatio: 0.55,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 1
            )
            
            // MARK: - 􀵵 Earth frame
            AnimatableSymbolView(
                name: "globe.asia.australia",
                initialPosition: .second(.fifth),
                fontWeight: .ultraLight,
                widthRatio: 0.57,
                heightRatio: 0.57,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 2
            )
            
            // MARK: - 􀺎 Peace sign
            AnimatableSymbolView(
                name: "peacesign",
                initialPosition: .second(.sixth),
                primaryColor: .white,
                fontWeight: .thin,
                widthRatio: 0.535,
                heightRatio: 0.535,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 3
            )
        }
        .navigationTitle("World Peace")
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
        WorldPeaceArtView()
            .environment(ArtWorkModel.preview)
    }
}
