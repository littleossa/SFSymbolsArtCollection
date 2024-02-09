//
//  MagicianArtView+Element.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

extension MagicianArtView {
    
    enum Element: String, CaseIterable, Identifiable {
        case outline
        case hatBand
        case hat
        case hatBrim
        case eyeBrowRight
        case eyeBrowLeft
        case sunGlassesFrameLeading
        case sunGlassesFrameCenter
        case sunGlassesFrameTrailing
        case sunGlassesLensRight
        case sunGlassesLensLeft
        case nose
        case mouth
        case tongue
        
        var id: String { rawValue }
        
        var value: SymbolArtElement {
            switch self {
            case .outline:
                SymbolArtElement(
                    symbol: "􀠒",
                    name: "drop.fill",
                    initialPosition: .second(.first),
                    primaryColor: .paleOrange,
                    widthRatio: 0.5,
                    heightRatio: 0.75,
                    rotationDegrees: 180,
                    verticalOffsetRatio: 0.15,
                    symbolCountToWaitFor: 0
                )
            case .hatBand:
                SymbolArtElement(
                    symbol: "􀏄",
                    name: "rectangle.fill",
                    initialPosition: .second(.second),
                    primaryColor: .red,
                    widthRatio: 0.446,
                    heightRatio: 0.1,
                    horizontalOffsetRatio: 0.01,
                    verticalOffsetRatio: -0.15,
                    symbolCountToWaitFor: 1
                )
            case .hat:
                SymbolArtElement(
                    symbol: "􀈮",
                    name: "archivebox.fill",
                    initialPosition: .third(.first),
                    primaryColor: .black,
                    widthRatio: 0.525,
                    heightRatio: 0.525,
                    rotationDegrees: 180,
                    verticalOffsetRatio: -0.25,
                    symbolCountToWaitFor: 2
                )
            case .hatBrim:
                SymbolArtElement(
                    symbol: "􀏄",
                    name: "rectangle.fill",
                    initialPosition: .second(.second),
                    primaryColor: .black,
                    widthRatio: 0.625,
                    heightRatio: 0.125,
                    verticalOffsetRatio: -0.05,
                    symbolCountToWaitFor: 3
                )
            case .eyeBrowRight:
                SymbolArtElement(
                    symbol: "􀆐",
                    name: "chevron.compact.up",
                    initialPosition: .third(.second),
                    primaryColor: .black,
                    fontWeight: .thin,
                    widthRatio: 0.1,
                    heightRatio: 0.04,
                    horizontalOffsetRatio: 0.1,
                    verticalOffsetRatio: 0.03,
                    symbolCountToWaitFor: 4
                )
            case .eyeBrowLeft:
                SymbolArtElement(
                    symbol: "􀆐",
                    name: "chevron.compact.up",
                    initialPosition: .third(.second),
                    primaryColor: .black,
                    fontWeight: .thin,
                    widthRatio: 0.1,
                    heightRatio: 0.04,
                    horizontalOffsetRatio: -0.1,
                    verticalOffsetRatio: 0.03,
                    symbolCountToWaitFor: 4
                )
            case .sunGlassesFrameLeading:
                SymbolArtElement(
                    symbol: "􀅽",
                    name: "minus",
                    initialPosition: .third(.third),
                    primaryColor: .black,
                    fontWeight: .thin,
                    widthRatio: 0.06,
                    heightRatio: 0.0125,
                    verticalOffsetRatio: 0.12,
                    symbolCountToWaitFor: 5
                )
            case .sunGlassesFrameCenter:
                SymbolArtElement(
                    symbol: "􀅽",
                    name: "minus",
                    initialPosition: .third(.third),
                    primaryColor: .black,
                    fontWeight: .thin,
                    widthRatio: 0.06,
                    heightRatio: 0.0125,
                    horizontalOffsetRatio: 0.2,
                    verticalOffsetRatio: 0.12,
                    symbolCountToWaitFor: 5
                )
            case .sunGlassesFrameTrailing:
                SymbolArtElement(
                    symbol: "􀅽",
                    name: "minus",
                    initialPosition: .third(.third),
                    primaryColor: .black,
                    fontWeight: .thin,
                    widthRatio: 0.04,
                    heightRatio: 0.0125,
                    horizontalOffsetRatio: -0.2,
                    verticalOffsetRatio: 0.12,
                    symbolCountToWaitFor: 5
                )
            case .sunGlassesLensRight:
                SymbolArtElement(
                    symbol: "􀆼",
                    name: "moon.circle.fill",
                    initialPrimaryColor: .white,
                    initialPosition: .third(.fourth),
                    primaryColor: .white,
                    widthRatio: 0.125,
                    heightRatio: 0.125,
                    horizontalOffsetRatio: 0.1,
                    verticalOffsetRatio: 0.12,
                    symbolCountToWaitFor: 6
                )
            case .sunGlassesLensLeft:
                SymbolArtElement(
                    symbol: "􀆼",
                    name: "moon.circle.fill",
                    initialPrimaryColor: .white,
                    initialPosition: .third(.fourth),
                    primaryColor: .white,
                    widthRatio: 0.125,
                    heightRatio: 0.125,
                    horizontalOffsetRatio: -0.1,
                    verticalOffsetRatio: 0.12,
                    symbolCountToWaitFor: 6
                )
            case .nose:
                SymbolArtElement(
                    symbol: "􀇈",
                    name: "cloud.heavyrain",
                    initialPosition: .third(.fifth),
                    primaryColor: .black,
                    fontWeight: .light,
                    widthRatio: 0.15,
                    heightRatio: 0.15,
                    horizontalOffsetRatio: 0.01,
                    verticalOffsetRatio: 0.27,
                    symbolCountToWaitFor: 7
                )
            case .mouth:
                SymbolArtElement(
                    symbol: "􀩻",
                    name: "button.roundedbottom.horizontal.fill",
                    initialPosition: .third(.sixth),
                    primaryColor: .red,
                    widthRatio: 0.15,
                    heightRatio: 0.075,
                    horizontalOffsetRatio: 0.01,
                    verticalOffsetRatio: 0.4,
                    symbolCountToWaitFor: 8
                )
            case .tongue:
                SymbolArtElement(
                    symbol: "􀝷",
                    name: "capsule.fill",
                    initialPosition: .third(.seventh),
                    primaryColor: .orange,
                    widthRatio: 0.145,
                    heightRatio: 0.025,
                    horizontalOffsetRatio: 0.01,
                    verticalOffsetRatio: 0.424,
                    symbolCountToWaitFor: 9
                )
            }
        }
    }
}

#Preview {
    NavigationStack {
        MagicianArtView()
            .environment(ArtWorkModel.preview)
    }
}

#Preview {
    MagicianArtView.CoverArt()
        .environment(ArtWorkModel.preview)
}
