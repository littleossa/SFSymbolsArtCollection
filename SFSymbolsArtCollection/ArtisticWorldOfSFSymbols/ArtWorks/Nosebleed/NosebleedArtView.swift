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
            
            // MARK: - 􀀁 Contour
            ArtComponentView(
                name: "circle.fill",
                initialPosition: .third(.first),
                primaryColor: .awesomeYellow,
                widthRatio: 0.65,
                heightRatio: 0.65,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 0
            )
            
            // MARK: - 􀭧 Nosebleed bottom
            ArtComponentView(
                name: "cellularbars",
                initialPosition: .third(.second),
                primaryColor: .red,
                widthRatio: 0.2,
                heightRatio: 0.5,
                rotationDegrees: 180,
                horizontalOffsetRatio: 0.09,
                verticalOffsetRatio: 0.074,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 1
            )
            .symbolEffect(.variableColor.hideInactiveLayers,
                          options: .speed(0.6).repeating,
                          isActive: isEffectActivated)
            
            // MARK: - 􀏄 Concealing part for nosebleed bottom
            ArtComponentView(
                name: "rectangle.fill",
                initialPosition: .third(.third),
                primaryColor: .awesomeYellow,
                widthRatio: 0.1,
                heightRatio: 0.14,
                horizontalOffsetRatio: 0.09,
                verticalOffsetRatio: 0.15,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 2
            )
            
            // MARK: - 􀓩 Mouth
            ArtComponentView(
                name: "lasso",
                initialPosition: .third(.fourth),
                fontWeight: .ultraLight,
                widthRatio: 0.4,
                heightRatio: 0.3,
                rotationDegrees: 170,
                horizontalOffsetRatio: 0.01,
                verticalOffsetRatio: 0.05,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 3
            )
                        
            // MARK: - 􀏄 Concealing part for Mouth
            ArtComponentView(
                name: "rectangle.fill",
                initialPosition: .third(.third),
                primaryColor: .awesomeYellow,
                widthRatio: 0.5,
                heightRatio: 0.3,
                rotationDegrees: 176,
                verticalOffsetRatio: -0.03,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 4
            )
            
            // MARK: - 􀭧 Nosebleed top
            ArtComponentView(
                name: "cellularbars",
                initialPosition: .third(.second),
                primaryColor: .red,
                widthRatio: 0.2,
                heightRatio: 0.12,
                rotationDegrees: 180,
                horizontalOffsetRatio: 0.035,
                verticalOffsetRatio: 0.097,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 5
            )
            .symbolEffect(.variableColor.hideInactiveLayers,
                          options: .speed(0.6).repeating,
                          isActive: isEffectActivated)
            
            // MARK: - 􀏄 Concealing part for nosebleed top right
            ArtComponentView(
                name: "rectangle.fill",
                initialPosition: .third(.third),
                primaryColor: .awesomeYellow,
                widthRatio: 0.1,
                heightRatio: 0.1,
                horizontalOffsetRatio: 0.09,
                verticalOffsetRatio: 0.06,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 6
            )
            
            // MARK: - 􀏄 Concealing part for nosebleed top left
            ArtComponentView(
                name: "rectangle.fill",
                initialPosition: .third(.third),
                primaryColor: .awesomeYellow,
                widthRatio: 0.04,
                heightRatio: 0.14,
                horizontalOffsetRatio: -0.047,
                verticalOffsetRatio: 0.09,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 6
            )
            
            // MARK: - 􀀁 Right eye
            ArtComponentView(
                name: "circle.fill",
                initialPosition: .third(.first),
                widthRatio: 0.06,
                heightRatio: 0.06,
                horizontalOffsetRatio: 0.117,
                verticalOffsetRatio: -0.176,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 7
            )
            
            // MARK: - 􀀁 Left eye
            ArtComponentView(
                name: "circle.fill",
                initialPosition: .third(.first),
                widthRatio: 0.06,
                heightRatio: 0.06,
                horizontalOffsetRatio: -0.113,
                verticalOffsetRatio: -0.17,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 7
            )
            
            // MARK: - 􀥨 Tissue
            ArtComponentView(
                name: "doc.plaintext.fill",
                initialPosition: .third(.fifth),
                primaryColor: .white,
                fontWeight: .ultraLight,
                widthRatio: 0.04,
                heightRatio: 0.08,
                rotationDegrees: 188,
                horizontalOffsetRatio: -0.052,
                verticalOffsetRatio: 0.083,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 8
            )
            
            // MARK: - 􀉆 Tissue frame
            ArtComponentView(
                name: "doc.plaintext",
                initialPosition: .third(.sixth),
                fontWeight: .light,
                widthRatio: 0.04,
                heightRatio: 0.08,
                rotationDegrees: 188,
                horizontalOffsetRatio: -0.052,
                verticalOffsetRatio: 0.083,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 8
            )
            
            // MARK: - 􀥰 Nose
            ArtComponentView(
                name: "triangleshape",
                initialPosition: .third(.seventh),
                fontWeight: .light,
                widthRatio: 0.15,
                heightRatio: 0.14,
                rotationDegrees: -4,
                horizontalOffsetRatio: -0.013,
                verticalOffsetRatio: -0.02,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 9
            )
            
            // MARK: - 􀏄 Concealing part for nose
            ArtComponentView(
                name: "rectangle.fill",
                initialPosition: .third(.third),
                primaryColor: .awesomeYellow,
                widthRatio: 0.02,
                heightRatio: 0.13,
                rotationDegrees: 148,
                horizontalOffsetRatio: 0.007,
                verticalOffsetRatio: -0.046,
                isAnimating: isAnimating,
                symbolCountToWaitFor: 10
            )
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
                    withTimeInterval: model.waitingTime(forCount: 13),
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
