//
//  AfroBoyArtView+Element.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

extension AfroBoyArtView {
    
    enum Element: String, CaseIterable, Identifiable {
        case hair
        case outline
        case face
        case comb
        
        var id: String { rawValue }
        
        var value: SymbolArtElement {
            switch self {
            case .hair:
                SymbolArtElement(
                    symbol: "􁝰",
                    name: "tree.fill",
                    initialPosition: .third(.first),
                    primaryColor: .black,
                    widthRatio: 0.9,
                    heightRatio: 0.9,
                    symbolCountToWaitFor: 0
                )
            case .outline:
                SymbolArtElement(
                    symbol: "􀙧",
                    name: "shield.fill",
                    initialPosition: .third(.second),
                    primaryColor: .paleOrange,
                    widthRatio: 0.5,
                    heightRatio: 0.6,
                    verticalOffsetRatio: 0.17,
                    symbolCountToWaitFor: 1
                )
            case .face:
                SymbolArtElement(
                    symbol: "􀎽",
                    name: "faceid",
                    initialPosition: .third(.third),
                    primaryColor: .black,
                    secondaryColor: .paleOrange,
                    widthRatio: 0.3,
                    heightRatio: 0.3,
                    verticalOffsetRatio: 0.16,
                    symbolCountToWaitFor: 2
                )
            case .comb:
                SymbolArtElement(
                    symbol: "􀦉",
                    name: "comb.fill",
                    initialPosition: .third(.fourth),
                    primaryColor: .red,
                    widthRatio: 0.2,
                    heightRatio: 0.2,
                    horizontalOffsetRatio: -0.2,
                    verticalOffsetRatio: -0.2,
                    symbolCountToWaitFor: 3
                )
            }
        }
    }
}

#Preview {
    NavigationStack {
        AfroBoyArtView()
            .environment(ArtWorkModel.preview)
    }
}

#Preview {
    AfroBoyPreviewView()
        .environment(ArtWorkModel.preview)
}
