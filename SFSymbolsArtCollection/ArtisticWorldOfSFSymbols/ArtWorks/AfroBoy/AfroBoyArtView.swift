//
//  AfroBoyArtView.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

struct AfroBoyArtView: View {
        
    @Environment(ArtWorkModel.self) var model
    @State private var isAnimating = false
    
    var body: some View {
        ZStack {
            
            // MARK: - 􁝰 Hair
            AnimatableSymbolView(
                name: "tree.fill",
                initialPosition: .third(.first),
                widthRatio: 0.9,
                heightRatio: 0.9,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 0
            )
            
            // MARK: - 􀙧 Contour
            AnimatableSymbolView(
                name: "shield.fill",
                initialPosition: .third(.second),
                primaryColor: .paleOrange,
                widthRatio: 0.5,
                heightRatio: 0.6,
                verticalOffsetRatio: 0.17,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 1
            )
            
            // MARK: - 􀎽 Face
            AnimatableSymbolView(
                name: "faceid",
                initialPosition: .third(.third),
                secondaryColor: .paleOrange,
                widthRatio: 0.3,
                heightRatio: 0.3,
                verticalOffsetRatio: 0.16,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 2
            )
            
            // MARK: - 􀦉 Comb
            AnimatableSymbolView(
                name: "comb.fill",
                initialPosition: .third(.fourth),
                primaryColor: .red,
                widthRatio: 0.2,
                heightRatio: 0.2,
                horizontalOffsetRatio: -0.2,
                verticalOffsetRatio: -0.2,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 3
            )
        }
        .navigationTitle("Afro boy")
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
        AfroBoyArtView()
            .environment(ArtWorkModel.preview)
    }
}
