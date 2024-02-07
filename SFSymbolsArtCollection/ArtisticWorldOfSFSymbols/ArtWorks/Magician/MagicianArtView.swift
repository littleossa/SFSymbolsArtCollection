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
                initialValue: .init(
                    width: model.initialSymbolLength,
                    height: model.initialSymbolLength,
                    offsetX: model.calculatingInitialOffsetX(forPosition: .second(.first)),
                    offsetY: model.calculatingInitialOffsetY(forPosition: .second(.first))
                ),
                finalValue: .init(
                    primaryColor: .paleOrange,
                    width: model.calculatingProportionalValue(withRatio: 0.5),
                    height: model.calculatingProportionalValue(withRatio: 0.75),
                    rotationDegrees: 180,
                    offsetY: model.calculatingProportionalValue(withRatio: 0.15)
                ),
                isAnimating: isAnimating,
                animationDuration: model.animationDurationPerSymbol,
                waitingTime: 0.001
            )
            
            // MARK: - 􀏄 Hat band
            ArtComponentView(
                name: "rectangle.fill",
                initialValue: .init(
                    width: model.initialSymbolLength,
                    height: model.initialSymbolLength,
                    offsetX: model.calculatingInitialOffsetX(forPosition: .second(.second)),
                    offsetY: model.calculatingInitialOffsetY(forPosition: .second(.second))
                ),
                finalValue: .init(
                    primaryColor: .red,
                    width: model.calculatingProportionalValue(withRatio: 0.446),
                    height: model.calculatingProportionalValue(withRatio: 0.1),
                    offsetX: model.calculatingProportionalValue(withRatio: 0.01),
                    offsetY: model.calculatingProportionalValue(withRatio: -0.15)
                ),
                isAnimating: isAnimating,
                animationDuration: model.animationDurationPerSymbol,
                waitingTime: model.waitingTime(forCount: 1)
            )
            
            // MARK: - 􀈮 Hat
            ArtComponentView(
                name: "archivebox.fill",
                initialValue: .init(
                    width: model.initialSymbolLength,
                    height: model.initialSymbolLength,
                    offsetX: model.calculatingInitialOffsetX(forPosition: .third(.first)),
                    offsetY: model.calculatingInitialOffsetY(forPosition: .third(.first))
                ),
                finalValue: .init(
                    width: model.calculatingProportionalValue(withRatio: 0.525),
                    height: model.calculatingProportionalValue(withRatio: 0.525),
                    rotationDegrees: 180,
                    offsetY: model.calculatingProportionalValue(withRatio: -0.25)
                ),
                isAnimating: isAnimating,
                animationDuration: model.animationDurationPerSymbol,
                waitingTime: model.waitingTime(forCount: 2)
            )
            
            // MARK: - 􀏄 Hat brim
            ArtComponentView(
                name: "rectangle.fill",
                initialValue: .init(
                    width: model.initialSymbolLength,
                    height: model.initialSymbolLength,
                    offsetX: model.calculatingInitialOffsetX(forPosition: .second(.second)),
                    offsetY: model.calculatingInitialOffsetY(forPosition: .second(.second))
                ),
                finalValue: .init(
                    width: model.calculatingProportionalValue(withRatio: 0.625),
                    height: model.calculatingProportionalValue(withRatio: 0.125),
                    offsetY: model.calculatingProportionalValue(withRatio: -0.05)
                ),
                isAnimating: isAnimating,
                animationDuration: model.animationDurationPerSymbol,
                waitingTime: model.waitingTime(forCount: 3)
            )
            
            // MARK: - 􀆐 Eyebrow
            ArtComponentView(
                name: "chevron.compact.up",
                initialValue: .init(
                    width: model.initialSymbolLength,
                    height: model.initialSymbolLength,
                    offsetX: model.calculatingInitialOffsetX(forPosition: .third(.second)),
                    offsetY: model.calculatingInitialOffsetY(forPosition: .third(.second))
                ),
                finalValue: .init(
                    fontWeight: .thin,
                    width: model.calculatingProportionalValue(withRatio: 0.1),
                    height: model.calculatingProportionalValue(withRatio: 0.04),
                    offsetX: model.calculatingProportionalValue(withRatio: 0.1),
                    offsetY: model.calculatingProportionalValue(withRatio: 0.03)
                ),
                isAnimating: isAnimating,
                animationDuration: model.animationDurationPerSymbol,
                waitingTime: model.waitingTime(forCount: 4)
            )
            
            ArtComponentView(
                name: "chevron.compact.up",
                initialValue: .init(
                    width: model.initialSymbolLength,
                    height: model.initialSymbolLength,
                    offsetX: model.calculatingInitialOffsetX(forPosition: .third(.second)),
                    offsetY: model.calculatingInitialOffsetY(forPosition: .third(.second))
                ),
                finalValue: .init(
                    fontWeight: .thin,
                    width: model.calculatingProportionalValue(withRatio: 0.1),
                    height: model.calculatingProportionalValue(withRatio: 0.04),
                    offsetX: model.calculatingProportionalValue(withRatio: -0.1),
                    offsetY: model.calculatingProportionalValue(withRatio: 0.03)
                ),
                isAnimating: isAnimating,
                animationDuration: model.animationDurationPerSymbol,
                waitingTime: model.waitingTime(forCount: 4)
            )
            
            // MARK: - 􀅽 Sunglasses frame
            ArtComponentView(
                name: "minus",
                initialValue: .init(
                    width: model.initialSymbolLength,
                    height: model.initialSymbolLength,
                    offsetX: model.calculatingInitialOffsetX(forPosition: .third(.third)),
                    offsetY: model.calculatingInitialOffsetY(forPosition: .third(.third))
                ),
                finalValue: .init(
                    fontWeight: .thin,
                    width: model.calculatingProportionalValue(withRatio: 0.06),
                    height: model.calculatingProportionalValue(withRatio: 0.0125),
                    offsetY: model.calculatingProportionalValue(withRatio: 0.12)
                ),
                isAnimating: isAnimating,
                animationDuration: model.animationDurationPerSymbol,
                waitingTime: model.waitingTime(forCount: 5)
            )
            
            ArtComponentView(
                name: "minus",
                initialValue: .init(
                    width: model.initialSymbolLength,
                    height: model.initialSymbolLength,
                    offsetX: model.calculatingInitialOffsetX(forPosition: .third(.third)),
                    offsetY: model.calculatingInitialOffsetY(forPosition: .third(.third))
                ),
                finalValue: .init(
                    fontWeight: .thin,
                    width: model.calculatingProportionalValue(withRatio: 0.06),
                    height: model.calculatingProportionalValue(withRatio: 0.0125),
                    offsetX: model.calculatingProportionalValue(withRatio: 0.2),
                    offsetY: model.calculatingProportionalValue(withRatio: 0.12)
                ),
                isAnimating: isAnimating,
                animationDuration: model.animationDurationPerSymbol,
                waitingTime: model.waitingTime(forCount: 5)
            )
            
            ArtComponentView(
                name: "minus",
                initialValue: .init(
                    width: model.initialSymbolLength,
                    height: model.initialSymbolLength,
                    offsetX: model.calculatingInitialOffsetX(forPosition: .third(.third)),
                    offsetY: model.calculatingInitialOffsetY(forPosition: .third(.third))
                ),
                finalValue: .init(
                    fontWeight: .thin,
                    width: model.calculatingProportionalValue(withRatio: 0.04),
                    height: model.calculatingProportionalValue(withRatio: 0.0125),
                    offsetX: model.calculatingProportionalValue(withRatio: -0.2),
                    offsetY: model.calculatingProportionalValue(withRatio: 0.12)
                ),
                isAnimating: isAnimating,
                animationDuration: model.animationDurationPerSymbol,
                waitingTime: model.waitingTime(forCount: 5)
            )
            
            // MARK: - 􀆼 Sunglasses lens
            ArtComponentView(
                name: "moon.circle.fill",
                initialValue: .init(
                    primaryColor: .white,
                    width: model.initialSymbolLength,
                    height: model.initialSymbolLength,
                    offsetX: model.calculatingInitialOffsetX(forPosition: .third(.fourth)),
                    offsetY: model.calculatingInitialOffsetY(forPosition: .third(.fourth))
                ),
                finalValue: .init(
                    primaryColor: .white,
                    width: model.calculatingProportionalValue(withRatio: 0.125),
                    height: model.calculatingProportionalValue(withRatio: 0.125),
                    offsetX: model.calculatingProportionalValue(withRatio: 0.1),
                    offsetY: model.calculatingProportionalValue(withRatio: 0.12)
                ),
                isAnimating: isAnimating,
                animationDuration: model.animationDurationPerSymbol,
                waitingTime: model.waitingTime(forCount: 6)
            )
            
            ArtComponentView(
                name: "moon.circle.fill",
                initialValue: .init(
                    primaryColor: .white,
                    width: model.initialSymbolLength,
                    height: model.initialSymbolLength,
                    offsetX: model.calculatingInitialOffsetX(forPosition: .third(.fourth)),
                    offsetY: model.calculatingInitialOffsetY(forPosition: .third(.fourth))
                ),
                finalValue: .init(
                    primaryColor: .white,
                    secondaryColor: .black,
                    width: model.calculatingProportionalValue(withRatio: 0.125),
                    height: model.calculatingProportionalValue(withRatio: 0.125),
                    offsetX: model.calculatingProportionalValue(withRatio: -0.1),
                    offsetY: model.calculatingProportionalValue(withRatio: 0.12)
                ),
                isAnimating: isAnimating,
                animationDuration: model.animationDurationPerSymbol,
                waitingTime: model.waitingTime(forCount: 6)
            )
            
            // MARK: - 􀇈 Nose
            ArtComponentView(
                name: "cloud.heavyrain",
                initialValue: .init(
                    width: model.initialSymbolLength,
                    height: model.initialSymbolLength,
                    offsetX: model.calculatingInitialOffsetX(forPosition: .third(.fifth)),
                    offsetY: model.calculatingInitialOffsetY(forPosition: .third(.fifth))
                ),
                finalValue: .init(
                    fontWeight: .light,
                    width: model.calculatingProportionalValue(withRatio: 0.15),
                    height: model.calculatingProportionalValue(withRatio: 0.15),
                    offsetX: model.calculatingProportionalValue(withRatio: 0.01),
                    offsetY: model.calculatingProportionalValue(withRatio: 0.27)
                ),
                isAnimating: isAnimating,
                animationDuration: model.animationDurationPerSymbol,
                waitingTime: model.waitingTime(forCount: 7)
            )
            
            // MARK: - 􀩻 Inside mouth
            ArtComponentView(
                name: "button.roundedbottom.horizontal.fill",
                initialValue: .init(
                    width: model.initialSymbolLength,
                    height: model.initialSymbolLength,
                    offsetX: model.calculatingInitialOffsetX(forPosition: .third(.sixth)),
                    offsetY: model.calculatingInitialOffsetY(forPosition: .third(.sixth))
                ),
                finalValue: .init(
                    primaryColor: .red,
                    width: model.calculatingProportionalValue(withRatio: 0.15),
                    height: model.calculatingProportionalValue(withRatio: 0.075),
                    offsetX: model.calculatingProportionalValue(withRatio: 0.01),
                    offsetY: model.calculatingProportionalValue(withRatio: 0.4)
                ),
                isAnimating: isAnimating,
                animationDuration: model.animationDurationPerSymbol,
                waitingTime: model.waitingTime(forCount: 8)
            )
            
            // MARK: - 􀝷 Tongue capsule.fill
            ArtComponentView(
                name: "capsule.fill",
                initialValue: .init(
                    width: model.initialSymbolLength,
                    height: model.initialSymbolLength,
                    offsetX: model.calculatingInitialOffsetX(forPosition: .third(.seventh)),
                    offsetY: model.calculatingInitialOffsetY(forPosition: .third(.seventh))
                ),
                finalValue: .init(
                    primaryColor: .orange,
                    width: model.calculatingProportionalValue(withRatio: 0.145),
                    height: model.calculatingProportionalValue(withRatio: 0.025),
                    offsetX: model.calculatingProportionalValue(withRatio: 0.01),
                    offsetY: model.calculatingProportionalValue(withRatio: 0.424)
                ),
                isAnimating: isAnimating,
                animationDuration: model.animationDurationPerSymbol,
                waitingTime: model.waitingTime(forCount: 9)
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
