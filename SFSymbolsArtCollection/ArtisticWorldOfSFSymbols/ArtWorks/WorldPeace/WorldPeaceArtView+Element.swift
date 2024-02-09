//
//  WorldPeaceArtView+Element.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

extension WorldPeaceArtView {
    
    enum Element: String, CaseIterable, Identifiable {
        case shadowForW
        case shadowForO
        case shadowForR
        case shadowForL
        case shadowForD
        case shadowForP
        case shadowForFirstE
        case shadowForA
        case shadowForC
        case shadowForSecondE
        case characterW
        case characterO
        case characterR
        case characterL
        case characterD
        case characterP
        case characterFirstE
        case characterA
        case characterC
        case characterSecondE
        case sea
        case earth
        case earthFrame
        case peaceSign
        
        var id: String { rawValue }
        
        var value: SymbolArtElement {
            switch self {
            case .shadowForW:
                SymbolArtElement(
                    symbol: "􀀰",
                    name: "w.circle",
                    initialPosition: .second(.second),
                    primaryColor: .black,
                    secondaryColor: .systemBackground,
                    widthRatio: 0.15,
                    heightRatio: 0.15,
                    horizontalOffsetRatio: -0.34,
                    verticalOffsetRatio: -0.4,
                    symbolCountToWaitFor: 4
                )
            case .shadowForO:
                SymbolArtElement(
                    symbol: "􀀠",
                    name: "o.circle",
                    initialPosition: .third(.sixth),
                    primaryColor: .black,
                    secondaryColor: .systemBackground,
                    widthRatio: 0.15,
                    heightRatio: 0.15,
                    horizontalOffsetRatio: -0.17,
                    verticalOffsetRatio: -0.4,
                    symbolCountToWaitFor: 4
                )
            case .shadowForR:
                SymbolArtElement(
                    symbol: "􀀦",
                    name: "r.circle",
                    initialPosition: .second(.first),
                    primaryColor: .black,
                    secondaryColor: .systemBackground,
                    widthRatio: 0.15,
                    heightRatio: 0.15,
                    horizontalOffsetRatio: 0,
                    verticalOffsetRatio: -0.4,
                    symbolCountToWaitFor: 4
                )
            case .shadowForL:
                SymbolArtElement(
                    symbol: "􀀚",
                    name: "l.circle",
                    initialPosition: .third(.fifth),
                    primaryColor: .black,
                    secondaryColor: .systemBackground,
                    widthRatio: 0.15,
                    heightRatio: 0.15,
                    horizontalOffsetRatio: 0.17,
                    verticalOffsetRatio: -0.4,
                    symbolCountToWaitFor: 4
                )
            case .shadowForD:
                SymbolArtElement(
                    symbol: "􀀊",
                    name: "d.circle",
                    initialPosition: .third(.third),
                    primaryColor: .black,
                    secondaryColor: .systemBackground,
                    widthRatio: 0.15,
                    heightRatio: 0.15,
                    horizontalOffsetRatio: 0.34,
                    verticalOffsetRatio: -0.4,
                    symbolCountToWaitFor: 4
                )
            case .shadowForP:
                SymbolArtElement(
                    symbol: "􀀢",
                    name: "p.circle",
                    initialPosition: .third(.seventh),
                    primaryColor: .black,
                    secondaryColor: .systemBackground,
                    widthRatio: 0.15,
                    heightRatio: 0.15,
                    horizontalOffsetRatio: -0.34,
                    verticalOffsetRatio: 0.4,
                    symbolCountToWaitFor: 4
                )
            case .shadowForFirstE:
                SymbolArtElement(
                    symbol: "􀀌",
                    name: "e.circle",
                    initialPosition: .third(.fourth),
                    primaryColor: .black,
                    secondaryColor: .systemBackground,
                    widthRatio: 0.15,
                    heightRatio: 0.15,
                    horizontalOffsetRatio: -0.17,
                    verticalOffsetRatio: 0.4,
                    symbolCountToWaitFor: 4
                )
            case .shadowForA:
                SymbolArtElement(
                    symbol: "􀀄",
                    name: "a.circle",
                    initialPosition: .third(.first),
                    primaryColor: .black,
                    secondaryColor: .systemBackground,
                    widthRatio: 0.15,
                    heightRatio: 0.15,
                    horizontalOffsetRatio: 0,
                    verticalOffsetRatio: 0.4,
                    symbolCountToWaitFor: 5
                )
            case .shadowForC:
                SymbolArtElement(
                    symbol: "􀀈",
                    name: "c.circle",
                    initialPosition: .third(.second),
                    primaryColor: .black,
                    secondaryColor: .systemBackground,
                    widthRatio: 0.15,
                    heightRatio: 0.15,
                    horizontalOffsetRatio: 0.17,
                    verticalOffsetRatio: 0.4,
                    symbolCountToWaitFor: 4
                )
            case .shadowForSecondE:
                SymbolArtElement(
                    symbol: "􀀌",
                    name: "e.circle",
                    initialPosition: .third(.fourth),
                    primaryColor: .black,
                    secondaryColor: .systemBackground,
                    widthRatio: 0.15,
                    heightRatio: 0.15,
                    horizontalOffsetRatio: 0.34,
                    verticalOffsetRatio: 0.4,
                    symbolCountToWaitFor: 4
                )
            case .characterW:
                SymbolArtElement(
                    symbol: "􀀰",
                    name: "w.circle",
                    initialPosition: .second(.second),
                    primaryColor: .red,
                    secondaryColor: .systemBackground,
                    widthRatio: 0.15,
                    heightRatio: 0.15,
                    horizontalOffsetRatio: -0.34,
                    verticalOffsetRatio: -0.4,
                    symbolCountToWaitFor: 4
                )
            case .characterO:
                SymbolArtElement(
                    symbol: "􀀠",
                    name: "o.circle",
                    initialPosition: .third(.sixth),
                    primaryColor: .yellow,
                    secondaryColor: .systemBackground,
                    widthRatio: 0.15,
                    heightRatio: 0.15,
                    horizontalOffsetRatio: -0.17,
                    verticalOffsetRatio: -0.4,
                    symbolCountToWaitFor: 5
                )
            case .characterR:
                SymbolArtElement(
                    symbol: "􀀦",
                    name: "r.circle",
                    initialPosition: .second(.first),
                    primaryColor: .green,
                    secondaryColor: .systemBackground,
                    widthRatio: 0.15,
                    heightRatio: 0.15,
                    horizontalOffsetRatio: 0,
                    verticalOffsetRatio: -0.4,
                    symbolCountToWaitFor: 5
                )
            case .characterL:
                SymbolArtElement(
                    symbol: "􀀚",
                    name: "l.circle",
                    initialPosition: .third(.fifth),
                    primaryColor: .blue,
                    secondaryColor: .systemBackground,
                    widthRatio: 0.15,
                    heightRatio: 0.15,
                    horizontalOffsetRatio: 0.17,
                    verticalOffsetRatio: -0.4,
                    symbolCountToWaitFor: 5
                )
            case .characterD:
                SymbolArtElement(
                    symbol: "􀀊",
                    name: "d.circle",
                    initialPosition: .third(.third),
                    primaryColor: .purple,
                    secondaryColor: .systemBackground,
                    widthRatio: 0.15,
                    heightRatio: 0.15,
                    horizontalOffsetRatio: 0.34,
                    verticalOffsetRatio: -0.4,
                    symbolCountToWaitFor: 5
                )
            case .characterP:
                SymbolArtElement(
                    symbol: "􀀢",
                    name: "p.circle",
                    initialPosition: .third(.seventh),
                    primaryColor: .teal,
                    secondaryColor: .systemBackground,
                    widthRatio: 0.15,
                    heightRatio: 0.15,
                    horizontalOffsetRatio: -0.34,
                    verticalOffsetRatio: 0.4,
                    symbolCountToWaitFor: 5
                )
            case .characterFirstE:
                SymbolArtElement(
                    symbol: "􀀌",
                    name: "e.circle",
                    initialPosition: .third(.fourth),
                    primaryColor: .pink,
                    secondaryColor: .systemBackground,
                    widthRatio: 0.15,
                    heightRatio: 0.15,
                    horizontalOffsetRatio: -0.17,
                    verticalOffsetRatio: 0.4,
                    symbolCountToWaitFor: 5
                )
            case .characterA:
                SymbolArtElement(
                    symbol: "􀀄",
                    name: "a.circle",
                    initialPosition: .third(.first),
                    primaryColor: .mint,
                    secondaryColor: .systemBackground,
                    widthRatio: 0.15,
                    heightRatio: 0.15,
                    horizontalOffsetRatio: 0,
                    verticalOffsetRatio: 0.4,
                    symbolCountToWaitFor: 5
                )
            case .characterC:
                SymbolArtElement(
                    symbol: "􀀈",
                    name: "c.circle",
                    initialPosition: .third(.second),
                    primaryColor: .indigo,
                    secondaryColor: .systemBackground,
                    widthRatio: 0.15,
                    heightRatio: 0.15,
                    horizontalOffsetRatio: 0.17,
                    verticalOffsetRatio: 0.4,
                    symbolCountToWaitFor: 5
                )
            case .characterSecondE:
                SymbolArtElement(
                    symbol: "􀀌",
                    name: "e.circle",
                    initialPosition: .third(.fourth),
                    primaryColor: .pink,
                    secondaryColor: .systemBackground,
                    widthRatio: 0.15,
                    heightRatio: 0.15,
                    horizontalOffsetRatio: 0.34,
                    verticalOffsetRatio: 0.4,
                    symbolCountToWaitFor: 5
                )
            case .sea:
                SymbolArtElement(
                    symbol: "􀀁",
                    name: "circle.fill",
                    initialPosition: .second(.third),
                    primaryColor: .cyan,
                    widthRatio: 0.55,
                    heightRatio: 0.55,
                    symbolCountToWaitFor: 0
                )
            case .earth:
                SymbolArtElement(
                    symbol: "􀵶",
                    name: "globe.asia.australia.fill",
                    initialPosition: .second(.fourth),
                    primaryColor: .green,
                    fontWeight: .ultraLight,
                    widthRatio: 0.55,
                    heightRatio: 0.55,
                    symbolCountToWaitFor: 1
                )
            case .earthFrame:
                SymbolArtElement(
                    symbol: "􀵵",
                    name: "globe.asia.australia",
                    initialPosition: .second(.fifth),
                    primaryColor: .black,
                    fontWeight: .ultraLight,
                    widthRatio: 0.57,
                    heightRatio: 0.57,
                    symbolCountToWaitFor: 2
                )
            case .peaceSign:
                SymbolArtElement(
                    symbol: "􀺎",
                    name: "peacesign",
                    initialPosition: .second(.sixth),
                    primaryColor: .white,
                    fontWeight: .thin,
                    widthRatio: 0.535,
                    heightRatio: 0.535,
                    symbolCountToWaitFor: 3
                )
            }
        }
    }
}

#Preview {
    NavigationStack {
        WorldPeaceArtView()
            .environment(ArtWorkModel.preview)
    }
}

#Preview {
    WorldPeaceArtView.CoverArt()
        .environment(ArtWorkModel.preview)
}
