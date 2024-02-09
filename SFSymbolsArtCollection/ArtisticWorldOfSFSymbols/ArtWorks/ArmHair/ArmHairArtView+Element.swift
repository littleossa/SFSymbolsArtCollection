//
//  ArmHairArtView+Element.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

extension ArmHairArtView {
    
    enum Element: String, CaseIterable, Identifiable {
        case armFrame
        case arm
        case handFirst
        case handSecond
        case handFrame
        case handConcealment
        
        var id: String { rawValue }
        
        var value: SymbolArtElement {
            switch self {
            case .armFrame:
                SymbolArtElement(
                    symbol: "􀏄",
                    name: "rectangle.fill",
                    initialPosition: .third(.first),
                    primaryColor: .paleOrange,
                    fontWeight: .light,
                    widthRatio: 0.5,
                    heightRatio: 0.125,
                    symbolCountToWaitFor: 1
                )
            case .arm:
                SymbolArtElement(
                    symbol: "􀏃",
                    name: "rectangle",
                    initialPosition: .third(.second),
                    primaryColor: .black,
                    fontWeight: .ultraLight,
                    widthRatio: 0.54,
                    heightRatio: 0.13,
                    symbolCountToWaitFor: 0
                )
                
            case .handFrame:
                SymbolArtElement(
                    symbol: "􀉻",
                    name: "hand.raised",
                    initialPosition: .third(.fourth),
                    primaryColor: .black,
                    fontWeight: .ultraLight,
                    widthRatio: 0.225,
                    heightRatio: 0.225,
                    rotationDegrees: -90,
                    horizontalOffsetRatio: -0.24,
                    verticalOffsetRatio: -0.02,
                    symbolCountToWaitFor: 2
                )
            
            case .handFirst:
                SymbolArtElement(
                    symbol: "􀉼",
                    name: "hand.raised.fill",
                    initialPosition: .third(.third),
                    primaryColor: .paleOrange,
                    widthRatio: 0.21,
                    heightRatio: 0.225,
                    rotationDegrees: -90,
                    horizontalOffsetRatio: -0.24,
                    verticalOffsetRatio: -0.02,
                    symbolCountToWaitFor: 3
                )
                
            case .handSecond:
                SymbolArtElement(
                    symbol: "􀉼",
                    name: "hand.raised.fill",
                    initialPosition: .third(.third),
                    primaryColor: .paleOrange,
                    fontWeight: .black,
                    widthRatio: 0.188,
                    heightRatio: 0.225,
                    rotationDegrees: -90,
                    horizontalOffsetRatio: -0.236,
                    verticalOffsetRatio: -0.01,
                    symbolCountToWaitFor: 3
                )
            
            case .handConcealment:
                SymbolArtElement(
                    symbol: "􀏄",
                    name: "rectangle.fill",
                    initialPosition: .third(.first),
                    primaryColor: .paleOrange,
                    widthRatio: 0.1,
                    heightRatio: 0.12,
                    horizontalOffsetRatio: -0.14,
                    verticalOffsetRatio: -0.0,
                    symbolCountToWaitFor: 1
                )
            }
        }
    }
}

#Preview {
    NavigationStack {
        ArmHairArtView()
            .environment(ArtWorkModel.preview)
    }
}

#Preview {
    ArmHairArtView.CoverArt()
        .environment(ArtWorkModel.preview)
}
