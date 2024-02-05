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
            ArtComponentView(
                name: "tree.fill",
                initialValue: .init(
                    width: model.initialSymbolLength,
                    height: model.initialSymbolLength,
                    offsetX: model.calculatingOffsetX(forBottomColumn: .first),
                    offsetY: model.offsetYForBottomColumn
                ),
                finalValue: .init(
                    width: model.calculatingProportionalValue(withRatio: 0.9),
                    height: model.calculatingProportionalValue(withRatio: 0.9)
                ),
                isAnimating: isAnimating,
                animationDuration: model.animationDurationPerSymbol,
                waitingTime: 0.001
            )
            
            // MARK: - 􀙧 Contour
            ArtComponentView(
                name: "shield.fill",
                initialValue: .init(
                    width: model.initialSymbolLength,
                    height: model.initialSymbolLength,
                    offsetX: model.calculatingOffsetX(forBottomColumn: .second),
                    offsetY: model.offsetYForBottomColumn
                ),
                finalValue: .init(
                    primaryColor: .paleOrange,
                    width: model.calculatingProportionalValue(withRatio: 0.5),
                    height: model.calculatingProportionalValue(withRatio: 0.6),
                    offsetY: model.calculatingProportionalValue(withRatio: 0.17)
                ),
                isAnimating: isAnimating,
                animationDuration: model.animationDurationPerSymbol,
                waitingTime: model.waitingTime(forCount: 1)
            )
            
            // MARK: - 􀎽 Face
            ArtComponentView(
                name: "faceid",
                initialValue: .init(
                    width: model.initialSymbolLength,
                    height: model.initialSymbolLength,
                    offsetX: model.calculatingOffsetX(forBottomColumn: .third),
                    offsetY: model.offsetYForBottomColumn
                ),
                finalValue: .init(
                    secondaryColor: .paleOrange,
                    width: model.calculatingProportionalValue(withRatio: 0.3),
                    height: model.calculatingProportionalValue(withRatio: 0.3),
                    offsetY: model.calculatingProportionalValue(withRatio: 0.16)
                ),
                isAnimating: isAnimating,
                animationDuration: model.animationDurationPerSymbol,
                waitingTime: model.waitingTime(forCount: 2)
            )
            
            // MARK: - 􀦉 Comb
            ArtComponentView(
                name: "comb.fill",
                initialValue: .init(
                    width: model.initialSymbolLength,
                    height: model.initialSymbolLength,
                    offsetY: model.offsetYForBottomColumn
                ),
                finalValue: .init(
                    primaryColor: .red,
                    width: model.calculatingProportionalValue(withRatio: 0.2),
                    height: model.calculatingProportionalValue(withRatio: 0.2),
                    offsetX: model.calculatingProportionalValue(withRatio: -0.2),
                    offsetY: model.calculatingProportionalValue(withRatio: -0.2)
                ),
                isAnimating: isAnimating,
                animationDuration: model.animationDurationPerSymbol,
                waitingTime: model.waitingTime(forCount: 3)
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
