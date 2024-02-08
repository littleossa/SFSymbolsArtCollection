//
//  CrayonBoyArtView.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

struct CrayonBoyArtView: View {
    
    @Environment(ArtWorkModel.self) var model
    @State private var isAnimating = false
    
    var body: some View {
        
        ZStack {
            // MARK: - 􀇃 Outline
            ArtComponentView(
                name: "cloud.fill",
                initialPosition: .second(.first),
                primaryColor: .paleOrange,
                fontWeight: .ultraLight,
                widthRatio: 0.75,
                heightRatio: 0.5,
                rotationDegrees: 8,
                flip: .horizontal,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 0
            )
            
            // MARK: - 􀀁 Hair top
            ArtComponentView(
                name: "circle.fill",
                initialPosition: .second(.second),
                widthRatio: 0.44,
                heightRatio: 0.25,
                horizontalOffsetRatio: 0.05,
                verticalOffsetRatio: -0.125,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 2
            )
            
            // MARK: - 􀏄 Concealing part for hair
            ArtComponentView(
                name: "rectangle.fill",
                initialPosition: .third(.fifth),
                primaryColor: .paleOrange,
                widthRatio: 0.4,
                heightRatio: 0.25,
                horizontalOffsetRatio: 0.033,
                verticalOffsetRatio: -0.05,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 3
            )
            
            // MARK: - 􀆍 Eyebrow
            ArtComponentView(
                name: "control",
                initialPosition: .third(.sixth),
                fontWeight: .black,
                widthRatio: 0.2,
                heightRatio: 0.1,
                rotationDegrees: 6,
                horizontalOffsetRatio: -0.07,
                verticalOffsetRatio: -0.14,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 4
            )
            
            ArtComponentView(
                name: "control",
                initialPosition: .third(.sixth),
                fontWeight: .black,
                widthRatio: 0.2,
                heightRatio: 0.1,
                rotationDegrees: 6,
                horizontalOffsetRatio: 0.14,
                verticalOffsetRatio: -0.12,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 4
            )
            
            // MARK: - 􀀀 Eyelid
            ArtComponentView(
                name: "circle",
                initialPosition: .second(.third),
                fontWeight: .ultraLight,
                widthRatio: 0.17,
                heightRatio: 0.16,
                horizontalOffsetRatio: 0.12,
                verticalOffsetRatio: -0.01,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 5
            )
            
            ArtComponentView(
                name: "circle",
                initialPosition: .second(.third),
                fontWeight: .ultraLight,
                widthRatio: 0.17,
                heightRatio: 0.16,
                horizontalOffsetRatio: -0.08,
                verticalOffsetRatio: -0.01,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 5
            )
            
            // MARK: - 􀏄 Concealing part for Eyelid
            ArtComponentView(
                name: "rectangle.fill",
                initialPosition: .third(.fifth),
                primaryColor: .paleOrange,
                widthRatio: 0.2,
                heightRatio: 0.16,
                horizontalOffsetRatio: 0.13,
                verticalOffsetRatio: 0.06,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 6
            )
            
            ArtComponentView(
                name: "rectangle.fill",
                initialPosition: .third(.fifth),
                primaryColor: .paleOrange,
                widthRatio: 0.2,
                heightRatio: 0.16,
                horizontalOffsetRatio: -0.08,
                verticalOffsetRatio: 0.06,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 6
            )
            
            // MARK: - 􀢚 Eye
            ArtComponentView(
                name: "record.circle.fill",
                initialPrimaryColor: .systemBackground,
                initialPosition: .third(.seventh),
                primaryColor: .white,
                widthRatio: 0.14,
                heightRatio: 0.14,
                horizontalOffsetRatio: 0.1,
                verticalOffsetRatio: 0.02,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 7
            )
            
            ArtComponentView(
                name: "record.circle.fill",
                initialPrimaryColor: .systemBackground,
                initialPosition: .third(.seventh),
                primaryColor: .white,
                widthRatio: 0.14,
                heightRatio: 0.14,
                horizontalOffsetRatio: -0.06,
                verticalOffsetRatio: 0.016,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 7
            )
            
            // MARK: - 􀇂 Outline frame
            ArtComponentView(
                name: "cloud",
                initialPosition: .third(.first),
                fontWeight: .ultraLight,
                widthRatio: 0.75,
                heightRatio: 0.5,
                rotationDegrees: 8,
                flip: .horizontal,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 1
            )
            
            // MARK: - 􀧷 Mouth
            ArtComponentView(
                name: "capsule.portrait.fill",
                initialPosition: .third(.second),
                primaryColor: .red,
                fontWeight: .ultraLight,
                widthRatio: 0.1,
                heightRatio: 0.15,
                rotationDegrees: 16,
                horizontalOffsetRatio: -0.09,
                verticalOffsetRatio: 0.225,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 8
            )
            
            // MARK: - 􀧶 Mouth frame
            ArtComponentView(
                name: "capsule.portrait",
                initialPosition: .third(.third),
                fontWeight: .ultraLight,
                widthRatio: 0.1,
                heightRatio: 0.15,
                rotationDegrees: 16,
                horizontalOffsetRatio: -0.09,
                verticalOffsetRatio: 0.225,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 8
            )
            
            // MARK: - 􁹬 Sideburns
            ArtComponentView(
                name: "righttriangle.fill",
                initialPosition: .third(.fourth),
                widthRatio: 0.064,
                heightRatio: 0.2,
                rotationDegrees: 170,
                flip: .horizontal,
                horizontalOffsetRatio: 0.215,
                verticalOffsetRatio: -0.07,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 9
            )
        }
        .navigationTitle("Crayon boy")
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
        CrayonBoyArtView()
            .environment(ArtWorkModel.preview)
    }
}
