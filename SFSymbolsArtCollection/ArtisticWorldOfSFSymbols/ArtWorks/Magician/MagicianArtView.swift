//
//  MagicianArtView.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

struct MagicianArtView: View {
    
    @Environment(ArtWorkModel.self) var model
    @State private var isAnimating = false
    
    var body: some View {
        ZStack {
            
            // MARK: - 􀠒 Outline
            ArtComponentView(
                name: "drop.fill",
                initialPosition: .second(.first),
                primaryColor: .paleOrange,
                widthRatio: 0.5,
                heightRatio: 0.75,
                rotationDegrees: 180,
                verticalOffsetRatio: 0.15,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 0
            )
            
            // MARK: - 􀏄 Hat band
            ArtComponentView(
                name: "rectangle.fill",
                initialPosition: .second(.second),
                primaryColor: .red,
                widthRatio: 0.446,
                heightRatio: 0.1,
                horizontalOffsetRatio: 0.01,
                verticalOffsetRatio: -0.15,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 1
            )
            
            // MARK: - 􀈮 Hat
            ArtComponentView(
                name: "archivebox.fill",
                initialPosition: .third(.first),
                widthRatio: 0.525,
                heightRatio: 0.525,
                rotationDegrees: 180,
                verticalOffsetRatio: -0.25,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 2
            )
            
            // MARK: - 􀏄 Hat brim
            ArtComponentView(
                name: "rectangle.fill",
                initialPosition: .second(.second),
                widthRatio: 0.625,
                heightRatio: 0.125,
                verticalOffsetRatio: -0.05,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 3
            )
            
            // MARK: - 􀆐 Eyebrow
            ArtComponentView(
                name: "chevron.compact.up",
                initialPosition: .third(.second),
                fontWeight: .thin,
                widthRatio: 0.1,
                heightRatio: 0.04,
                horizontalOffsetRatio: 0.1,
                verticalOffsetRatio: 0.03,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 4
            )
            
            ArtComponentView(
                name: "chevron.compact.up",
                initialPosition: .third(.second),
                fontWeight: .thin,
                widthRatio: 0.1,
                heightRatio: 0.04,
                horizontalOffsetRatio: -0.1,
                verticalOffsetRatio: 0.03,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 4
            )
            
            // MARK: - 􀅽 Sunglasses frame
            ArtComponentView(
                name: "minus",
                initialPosition: .third(.third),
                fontWeight: .thin,
                widthRatio: 0.06,
                heightRatio: 0.0125,
                verticalOffsetRatio: 0.12,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 5
            )
            
            ArtComponentView(
                name: "minus",
                initialPosition: .third(.third),
                fontWeight: .thin,
                widthRatio: 0.06,
                heightRatio: 0.0125,
                horizontalOffsetRatio: 0.2,
                verticalOffsetRatio: 0.12,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 5
            )
            
            ArtComponentView(
                name: "minus",
                initialPosition: .third(.third),
                fontWeight: .thin,
                widthRatio: 0.04,
                heightRatio: 0.0125,
                horizontalOffsetRatio: -0.2,
                verticalOffsetRatio: 0.12,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 5
            )
            
            // MARK: - 􀆼 Sunglasses lens
            ArtComponentView(
                name: "moon.circle.fill",
                initialPrimaryColor: .white,
                initialPosition: .third(.fourth),
                primaryColor: .white,
                widthRatio: 0.125,
                heightRatio: 0.125,
                horizontalOffsetRatio: 0.1,
                verticalOffsetRatio: 0.12,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 6
            )
            
            ArtComponentView(
                name: "moon.circle.fill",
                initialPrimaryColor: .white,
                initialPosition: .third(.fourth),
                primaryColor: .white,
                widthRatio: 0.125,
                heightRatio: 0.125,
                horizontalOffsetRatio: -0.1,
                verticalOffsetRatio: 0.12,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 6
            )
            
            // MARK: - 􀇈 Nose
            ArtComponentView(
                name: "cloud.heavyrain",
                initialPosition: .third(.fifth),
                fontWeight: .light,
                widthRatio: 0.15,
                heightRatio: 0.15,
                horizontalOffsetRatio: 0.01,
                verticalOffsetRatio: 0.27,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 7
            )
            
            // MARK: - 􀩻 Inside mouth
            ArtComponentView(
                name: "button.roundedbottom.horizontal.fill",
                initialPosition: .third(.sixth),
                primaryColor: .red,
                widthRatio: 0.15,
                heightRatio: 0.075,
                horizontalOffsetRatio: 0.01,
                verticalOffsetRatio: 0.4,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 8
            )
            
            // MARK: - 􀝷 Tongue capsule.fill
            ArtComponentView(
                name: "capsule.fill",
                initialPosition: .third(.seventh),
                primaryColor: .orange,
                widthRatio: 0.145,
                heightRatio: 0.025,
                horizontalOffsetRatio: 0.01,
                verticalOffsetRatio: 0.424,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 9
            )
        }
        .navigationTitle("Magician")
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
        MagicianArtView()
            .environment(ArtWorkModel.preview)
    }
}
