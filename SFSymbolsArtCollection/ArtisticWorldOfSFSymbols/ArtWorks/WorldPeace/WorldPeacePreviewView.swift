//
//  WorldPeacePreviewView.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

struct WorldPeacePreviewView: View {
    
    @Environment(ArtWorkModel.self) var model
    
    var body: some View {
        
                ZStack {
                    
                    // MARK: - Characters black shadow
                    ForEach(CharacterPosition.allCases) {
                        Image(systemName: "\($0.value.character).circle")
                            .arrangeShape(
                                fontWeight: .bold,
                                width: model.calculatingProportionalValue(withRatio: 0.15, forPreview: true),
                                height: model.calculatingProportionalValue(withRatio: 0.15, forPreview: true),
                                horizontalOffset: model.calculatingProportionalValue(withRatio: $0.value.horizontalOffsetRatio, forPreview: true),
                                verticalOffset: model.calculatingProportionalValue(withRatio: $0.value.verticalOffsetRatio, forPreview: true)
                            )
                    }
                    
                    // MARK: - Colored Characters
                    ForEach(CharacterPosition.allCases) {
                        Image(systemName: "\($0.value.character).circle")
                            .arrangeShape(
                                primaryColor: $0.value.color,
                                fontWeight: .bold,
                                width: model.calculatingProportionalValue(withRatio: 0.15, forPreview: true),
                                height: model.calculatingProportionalValue(withRatio: 0.15, forPreview: true),
                                horizontalOffset: model.calculatingProportionalValue(withRatio: $0.value.horizontalOffsetRatio, forPreview: true),
                                verticalOffset: model.calculatingProportionalValue(withRatio: $0.value.verticalOffsetRatio, forPreview: true)
                            )
                    }
                    .offset(x: model.calculatingProportionalValue(withRatio: -0.001))
                    
                    // MARK: - 􀀀 Concealing part for Characters
                    ForEach(CharacterPosition.allCases) {
                        Image(systemName: "circle")
                            .arrangeShape(
                                primaryColor: .systemBackground,
                                fontWeight: .black,
                                width: model.calculatingProportionalValue(withRatio: 0.158, forPreview: true),
                                height: model.calculatingProportionalValue(withRatio: 0.154, forPreview: true),
                                horizontalOffset: model.calculatingProportionalValue(withRatio: $0.value.horizontalOffsetRatio, forPreview: true),
                                verticalOffset: model.calculatingProportionalValue(withRatio: $0.value.verticalOffsetRatio, forPreview: true)
                            )
                    }
                    .offset(x: model.calculatingProportionalValue(withRatio: -0.0006))
                    
                    // MARK: - 􀀁 Sea
                    Image(systemName: "circle.fill")
                        .arrangeShape(
                            primaryColor: .cyan,
                            width: model.calculatingProportionalValue(withRatio: 0.55, forPreview: true),
                            height: model.calculatingProportionalValue(withRatio: 0.55, forPreview: true)
                        )
                    
                    // MARK: - 􀀁 Sea
                    Image(systemName: "circle.fill")
                        .arrangeShape(
                            primaryColor: .cyan,
                            width: model.calculatingProportionalValue(withRatio: 0.55, forPreview: true),
                            height: model.calculatingProportionalValue(withRatio: 0.55, forPreview: true)
                        )
                    
                    // MARK: - 􀵶 Earth
                    Image(systemName: "globe.asia.australia.fill")
                        .arrangeShape(
                            primaryColor: .green,
                            fontWeight: .ultraLight,
                            width: model.calculatingProportionalValue(withRatio: 0.55, forPreview: true),
                            height: model.calculatingProportionalValue(withRatio: 0.55, forPreview: true)
                        )
                    
                    // MARK: - 􀵵 Earth frame
                    Image(systemName: "globe.asia.australia")
                        .arrangeShape(
                            fontWeight: .ultraLight,
                            width: model.calculatingProportionalValue(withRatio: 0.57, forPreview: true),
                            height: model.calculatingProportionalValue(withRatio: 0.57, forPreview: true)
                        )
                    
                    // MARK: - 􀺎 Peace sign
                    Image(systemName: "peacesign")
                        .arrangeShape(
                            primaryColor: .white,
                            fontWeight: .thin,
                            width: model.calculatingProportionalValue(withRatio: 0.535, forPreview: true),
                            height: model.calculatingProportionalValue(withRatio: 0.535, forPreview: true)
                        )
                }
    }
}

#Preview {
    WorldPeacePreviewView()
            .environment(ArtWorkModel.init(screenSize: .init(width: 4600, height: 4600)))
}
