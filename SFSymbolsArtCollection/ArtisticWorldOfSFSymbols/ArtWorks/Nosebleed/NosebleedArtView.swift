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
                initialValue: .init(
                    width: model.initialSymbolLength,
                    height: model.initialSymbolLength,
                    offsetX: model.calculatingInitialOffsetX(forPosition: .third(.first)),
                    offsetY: model.calculatingInitialOffsetY(forPosition: .third(.first))
                ),
                finalValue: .init(
                    primaryColor: .awesomeYellow,
                    width: model.calculatingProportionalValue(withRatio: 0.65),
                    height: model.calculatingProportionalValue(withRatio: 0.65)
                ),
                isAnimating: isAnimating,
                animationDuration: model.animationDurationPerSymbol,
                waitingTime: 0.001
            )
            
            // MARK: - 􀭧 Nosebleed bottom
            ArtComponentView(
                name: "cellularbars",
                initialValue: .init(
                    width: model.initialSymbolLength,
                    height: model.initialSymbolLength,
                    offsetX: model.calculatingInitialOffsetX(forPosition: .third(.second)),
                    offsetY: model.calculatingInitialOffsetY(forPosition: .third(.second))
                ),
                finalValue: .init(
                    primaryColor: .red,
                    fontWeight: .ultraLight,
                    width: model.calculatingProportionalValue(withRatio: 0.2),
                    height: model.calculatingProportionalValue(withRatio: 0.5),
                    rotationDegrees: 180,
                    offsetX: model.calculatingProportionalValue(withRatio: 0.09),
                    offsetY: model.calculatingProportionalValue(withRatio: 0.074)
                ),
                isAnimating: isAnimating,
                animationDuration: model.animationDurationPerSymbol,
                waitingTime: model.waitingTime(forCount: 1)
            )
            .symbolEffect(.variableColor.hideInactiveLayers,
                          options: .speed(0.6).repeating,
                          isActive: isEffectActivated)
            
            // MARK: - 􀏄 Concealing part for nosebleed bottom
            ArtComponentView(
                name: "rectangle.fill",
                initialValue: .init(
                    width: model.initialSymbolLength,
                    height: model.initialSymbolLength,
                    offsetX: model.calculatingInitialOffsetX(forPosition: .third(.third)),
                    offsetY: model.calculatingInitialOffsetY(forPosition: .third(.third))
                ),
                finalValue: .init(
                    primaryColor: .awesomeYellow,
                    width: model.calculatingProportionalValue(withRatio: 0.1),
                    height: model.calculatingProportionalValue(withRatio: 0.14),
                    offsetX: model.calculatingProportionalValue(withRatio: 0.09),
                    offsetY: model.calculatingProportionalValue(withRatio: 0.15)
                ),
                isAnimating: isAnimating,
                animationDuration: model.animationDurationPerSymbol,
                waitingTime: model.waitingTime(forCount: 2)
            )
            
            // MARK: - 􀓩 Mouth
            ArtComponentView(
                name: "lasso",
                initialValue: .init(
                    width: model.initialSymbolLength,
                    height: model.initialSymbolLength,
                    offsetY: model.calculatingInitialOffsetY(forPosition: .third(.forth))
                ),
                finalValue: .init(
                    fontWeight: .ultraLight,
                    width: model.calculatingProportionalValue(withRatio: 0.4),
                    height: model.calculatingProportionalValue(withRatio: 0.3),
                    rotationDegrees: 170,
                    offsetX: model.calculatingProportionalValue(withRatio: 0.01),
                    offsetY: model.calculatingProportionalValue(withRatio: 0.05)
                ),
                isAnimating: isAnimating,
                animationDuration: model.animationDurationPerSymbol,
                waitingTime: model.waitingTime(forCount: 3)
            )
                        
            // MARK: - 􀏄 Concealing part for Mouth
            ArtComponentView(
                name: "rectangle.fill",
                initialValue: .init(
                    width: model.initialSymbolLength,
                    height: model.initialSymbolLength,
                    offsetX: model.calculatingInitialOffsetX(forPosition: .third(.third)),
                    offsetY: model.calculatingInitialOffsetY(forPosition: .third(.third))
                ),
                finalValue: .init(
                    primaryColor: .awesomeYellow,
                    width: model.calculatingProportionalValue(withRatio: 0.5),
                    height: model.calculatingProportionalValue(withRatio: 0.3),
                    rotationDegrees: 176,
                    offsetY: model.calculatingProportionalValue(withRatio: -0.03)
                ),
                isAnimating: isAnimating,
                animationDuration: model.animationDurationPerSymbol,
                waitingTime: model.waitingTime(forCount: 4)
            )
            
            // MARK: - 􀭧 Nosebleed top
            ArtComponentView(
                name: "cellularbars",
                initialValue: .init(
                    width: model.initialSymbolLength,
                    height: model.initialSymbolLength,
                    offsetX: model.calculatingInitialOffsetX(forPosition: .third(.second)),
                    offsetY: model.calculatingInitialOffsetY(forPosition: .third(.second))
                ),
                finalValue: .init(
                    primaryColor: .red,
                    fontWeight: .ultraLight,
                    width: model.calculatingProportionalValue(withRatio: 0.2),
                    height: model.calculatingProportionalValue(withRatio: 0.12),
                    rotationDegrees: 180,
                    offsetX: model.calculatingProportionalValue(withRatio: 0.033),
                    offsetY: model.calculatingProportionalValue(withRatio: 0.096)
                ),
                isAnimating: isAnimating,
                animationDuration: model.animationDurationPerSymbol,
                waitingTime: model.waitingTime(forCount: 5)
            )
            .symbolEffect(.variableColor.hideInactiveLayers,
                          options: .speed(0.6).repeating,
                          isActive: isEffectActivated)
            
            // MARK: - 􀏄 Concealing part for nosebleed top right
            ArtComponentView(
                name: "rectangle.fill",
                initialValue: .init(
                    width: model.initialSymbolLength,
                    height: model.initialSymbolLength,
                    offsetX: model.calculatingInitialOffsetX(forPosition: .third(.third)),
                    offsetY: model.calculatingInitialOffsetY(forPosition: .third(.third))
                ),
                finalValue: .init(
                    primaryColor: .awesomeYellow,
                    width: model.calculatingProportionalValue(withRatio: 0.1),
                    height: model.calculatingProportionalValue(withRatio: 0.1),
                    offsetX: model.calculatingProportionalValue(withRatio: 0.09),
                    offsetY: model.calculatingProportionalValue(withRatio: 0.06)
                ),
                isAnimating: isAnimating,
                animationDuration: model.animationDurationPerSymbol,
                waitingTime: model.waitingTime(forCount: 6)
            )
            
            // MARK: - 􀏄 Concealing part for nosebleed top left
            ArtComponentView(
                name: "rectangle.fill",
                initialValue: .init(
                    width: model.initialSymbolLength,
                    height: model.initialSymbolLength,
                    offsetX: model.calculatingInitialOffsetX(forPosition: .third(.third)),
                    offsetY: model.calculatingInitialOffsetY(forPosition: .third(.third))
                ),
                finalValue: .init(
                    primaryColor: .awesomeYellow,
                    width: model.calculatingProportionalValue(withRatio: 0.03),
                    height: model.calculatingProportionalValue(withRatio: 0.14),
                    offsetX: model.calculatingProportionalValue(withRatio: -0.053),
                    offsetY: model.calculatingProportionalValue(withRatio: 0.09)
                ),
                isAnimating: isAnimating,
                animationDuration: model.animationDurationPerSymbol,
                waitingTime: model.waitingTime(forCount: 6)
            )
            
            // MARK: - 􀀁 Right eye
            ArtComponentView(
                name: "circle.fill",
                initialValue: .init(
                    width: model.initialSymbolLength,
                    height: model.initialSymbolLength,
                    offsetX: model.calculatingInitialOffsetX(forPosition: .third(.first)),
                    offsetY: model.calculatingInitialOffsetY(forPosition: .third(.first))
                ),
                finalValue: .init(
                    width: model.calculatingProportionalValue(withRatio: 0.06),
                    height: model.calculatingProportionalValue(withRatio: 0.06),
                    offsetX: model.calculatingProportionalValue(withRatio: 0.117),
                    offsetY: model.calculatingProportionalValue(withRatio: -0.176)
                ),
                isAnimating: isAnimating,
                animationDuration: model.animationDurationPerSymbol,
                waitingTime: model.waitingTime(forCount: 7)
            )
            
            // MARK: - 􀀁 Left eye
            ArtComponentView(
                name: "circle.fill",
                initialValue: .init(
                    width: model.initialSymbolLength,
                    height: model.initialSymbolLength,
                    offsetX: model.calculatingInitialOffsetX(forPosition: .third(.first)),
                    offsetY: model.calculatingInitialOffsetY(forPosition: .third(.first))
                ),
                finalValue: .init(
                    width: model.calculatingProportionalValue(withRatio: 0.06),
                    height: model.calculatingProportionalValue(withRatio: 0.06),
                    offsetX: model.calculatingProportionalValue(withRatio: -0.113),
                    offsetY: model.calculatingProportionalValue(withRatio: -0.17)
                ),
                isAnimating: isAnimating,
                animationDuration: model.animationDurationPerSymbol,
                waitingTime: model.waitingTime(forCount: 7)
            )
            
            // MARK: - 􀥨 Tissue
            ArtComponentView(
                name: "doc.plaintext.fill",
                initialValue: .init(
                    width: model.initialSymbolLength,
                    height: model.initialSymbolLength,
                    offsetX: model.calculatingInitialOffsetX(forPosition: .third(.fifth)),
                    offsetY: model.calculatingInitialOffsetY(forPosition: .third(.fifth))
                ),
                finalValue: .init(
                    primaryColor: .white,
                    fontWeight: .ultraLight,
                    width: model.calculatingProportionalValue(withRatio: 0.04),
                    height: model.calculatingProportionalValue(withRatio: 0.08),
                    rotationDegrees: 188,
                    offsetX: model.calculatingProportionalValue(withRatio: -0.052),
                    offsetY: model.calculatingProportionalValue(withRatio: 0.083)
                ),
                isAnimating: isAnimating,
                animationDuration: model.animationDurationPerSymbol,
                waitingTime: model.waitingTime(forCount: 8)
            )
            
            // MARK: - 􀉆 Tissue frame
            ArtComponentView(
                name: "doc.plaintext",
                initialValue: .init(
                    width: model.initialSymbolLength,
                    height: model.initialSymbolLength,
                    offsetX: model.calculatingInitialOffsetX(forPosition: .third(.sixth)),
                    offsetY: model.calculatingInitialOffsetY(forPosition: .third(.sixth))
                ),
                finalValue: .init(
                    fontWeight: .light,
                    width: model.calculatingProportionalValue(withRatio: 0.04),
                    height: model.calculatingProportionalValue(withRatio: 0.08),
                    rotationDegrees: 188,
                    offsetX: model.calculatingProportionalValue(withRatio: -0.052),
                    offsetY: model.calculatingProportionalValue(withRatio: 0.083)
                ),
                isAnimating: isAnimating,
                animationDuration: model.animationDurationPerSymbol,
                waitingTime: model.waitingTime(forCount: 8)
            )
            
            // MARK: - 􀥰 Nose
            ArtComponentView(
                name: "triangleshape",
                initialValue: .init(
                    width: model.initialSymbolLength,
                    height: model.initialSymbolLength,
                    offsetX: model.calculatingInitialOffsetX(forPosition: .third(.seventh)),
                    offsetY: model.calculatingInitialOffsetY(forPosition: .third(.seventh))
                ),
                finalValue: .init(
                    fontWeight: .light,
                    width: model.calculatingProportionalValue(withRatio: 0.15),
                    height: model.calculatingProportionalValue(withRatio: 0.14),
                    rotationDegrees: -4,
                    offsetX: model.calculatingProportionalValue(withRatio: -0.013),
                    offsetY: model.calculatingProportionalValue(withRatio: -0.02)
                ),
                isAnimating: isAnimating,
                animationDuration: model.animationDurationPerSymbol,
                waitingTime: model.waitingTime(forCount: 9)
            )
            
            // MARK: - 􀏄 Concealing part for nose
            ArtComponentView(
                name: "rectangle.fill",
                initialValue: .init(
                    width: model.initialSymbolLength,
                    height: model.initialSymbolLength,
                    offsetX: model.calculatingInitialOffsetX(forPosition: .third(.third)),
                    offsetY: model.calculatingInitialOffsetY(forPosition: .third(.third))
                ),
                finalValue: .init(
                    primaryColor: .awesomeYellow,
                    width: model.calculatingProportionalValue(withRatio: 0.02),
                    height: model.calculatingProportionalValue(withRatio: 0.13),
                    rotationDegrees: 148,
                    offsetX: model.calculatingProportionalValue(withRatio: 0.007),
                    offsetY: model.calculatingProportionalValue(withRatio: -0.046)
                ),
                isAnimating: isAnimating,
                animationDuration: model.animationDurationPerSymbol,
                waitingTime: model.waitingTime(forCount: 10)
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
