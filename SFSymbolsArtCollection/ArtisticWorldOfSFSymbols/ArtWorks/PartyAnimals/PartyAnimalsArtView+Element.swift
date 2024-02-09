//
//  PartyAnimalsArtView+Element.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

extension PartyAnimalsArtView {
    
    enum Element: String, CaseIterable, Identifiable {
        case bearEarRight
        case bearEarLeft
        case bearEarInsideRight
        case bearEarInsideLeft
        case bearOutline
        case bearEyeRight
        case bearEyeLeft
        case bearMouth
        case bearNose
        case flogEyeOutlineRight
        case flogEyeOutlineLeft
        case flogEyeRight
        case flogEyeLeft
        case flogOutline
        case flogMouth
        case lionManeFirst
        case lionManeSecond
        case lionEarRight
        case lionEarLeft
        case lionOutline
        case lionEyeRight
        case lionEyeLeft
        case lionWhiskersRight
        case lionWhiskersLeft
        case lionMouth
        case lionNose
        case pawFirst
        case pawSecond
        case pawThird
        case pawFourth
        
        var id: String { rawValue }
        
        var value: SymbolArtElement {
            switch self {
            case .bearEarRight:
                SymbolArtElement(
                    symbol: "􀀁",
                    name: "circle.fill",
                    initialPosition: .third(.third),
                    primaryColor: .brown,
                    widthRatio: 0.15,
                    heightRatio: 0.15,
                    horizontalOffsetRatio: 0.08,
                    verticalOffsetRatio: -0.37,
                    symbolCountToWaitFor: 1
                )
            case .bearEarLeft:
                SymbolArtElement(
                    symbol: "􀀁",
                    name: "circle.fill",
                    initialPosition: .third(.third),
                    primaryColor: .brown,
                    widthRatio: 0.15,
                    heightRatio: 0.15,
                    horizontalOffsetRatio: 0.32,
                    verticalOffsetRatio: -0.37,
                    symbolCountToWaitFor: 1
                )
            case .bearEarInsideRight:
                SymbolArtElement(
                    symbol: "􀩹",
                    name: "button.roundedtop.horizontal.fill",
                    initialPosition: .third(.fourth),
                    primaryColor: .palePink,
                    widthRatio: 0.06,
                    heightRatio: 0.06,
                    rotationDegrees: -20,
                    horizontalOffsetRatio: 0.08,
                    verticalOffsetRatio: -0.37,
                    symbolCountToWaitFor: 0
                )
            case .bearEarInsideLeft:
                SymbolArtElement(
                    symbol: "􀩹",
                    name: "button.roundedtop.horizontal.fill",
                    initialPosition: .third(.fourth),
                    primaryColor: .palePink,
                    widthRatio: 0.06,
                    heightRatio: 0.06,
                    rotationDegrees: 20,
                    horizontalOffsetRatio: 0.32,
                    verticalOffsetRatio: -0.37,
                    symbolCountToWaitFor: 0
                )
            case .bearOutline:
                SymbolArtElement(
                    symbol: "􀲟",
                    name: "oval.fill",
                    initialPosition: .third(.fifth),
                    primaryColor: .brown,
                    widthRatio: 0.4,
                    heightRatio: 0.325,
                    horizontalOffsetRatio: 0.2,
                    verticalOffsetRatio: -0.2,
                    symbolCountToWaitFor: 8
                )
            case .bearEyeRight:
                SymbolArtElement(
                    symbol: "􀢚",
                    name: "record.circle.fill",
                    initialPrimaryColor: .systemBackground,
                    initialPosition: .third(.sixth),
                    primaryColor: .white,
                    secondaryColor: .darkBrown,
                    widthRatio: 0.05,
                    heightRatio: 0.05,
                    horizontalOffsetRatio: 0.13,
                    verticalOffsetRatio: -0.23,
                    symbolCountToWaitFor: 7
                )
                
            case .bearEyeLeft:
                SymbolArtElement(
                    symbol: "􀢚",
                    name: "record.circle.fill",
                    initialPrimaryColor: .systemBackground,
                    initialPosition: .third(.sixth),
                    primaryColor: .white,
                    secondaryColor: .darkBrown,
                    widthRatio: 0.05,
                    heightRatio: 0.05,
                    horizontalOffsetRatio: 0.27,
                    verticalOffsetRatio: -0.23,
                    symbolCountToWaitFor: 7
                )
            case .bearMouth:
                SymbolArtElement(
                    symbol: "􀁹",
                    name: "arrow.down.circle.fill",
                    initialPrimaryColor: .systemBackground,
                    initialPosition: .second(.third),
                    primaryColor: .black,
                    secondaryColor: .white,
                    widthRatio: 0.125,
                    heightRatio: 0.125,
                    horizontalOffsetRatio: 0.2,
                    verticalOffsetRatio: -0.15,
                    symbolCountToWaitFor: 5
                )
            case .bearNose:
                SymbolArtElement(
                    symbol: "􀆼",
                    name: "moon.circle.fill",
                    initialPrimaryColor: .systemBackground,
                    initialPosition: .third(.seventh),
                    primaryColor: .white,
                    secondaryColor: .red,
                    widthRatio: 0.04,
                    heightRatio: 0.04,
                    rotationDegrees: 170,
                    horizontalOffsetRatio: 0.2,
                    verticalOffsetRatio: -0.17,
                    symbolCountToWaitFor: 6
                )
            case .flogEyeOutlineRight:
                SymbolArtElement(
                    symbol: "􀀁",
                    name: "circle.fill",
                    initialPosition: .third(.third),
                    primaryColor: .green,
                    widthRatio: 0.15,
                    heightRatio: 0.15,
                    horizontalOffsetRatio: -0.32,
                    verticalOffsetRatio: -0.18,
                    symbolCountToWaitFor: 1
                )
            case .flogEyeOutlineLeft:
                SymbolArtElement(
                    symbol: "􀀁",
                    name: "circle.fill",
                    initialPosition: .third(.third),
                    primaryColor: .green,
                    widthRatio: 0.15,
                    heightRatio: 0.15,
                    horizontalOffsetRatio: -0.08,
                    verticalOffsetRatio: -0.18,
                    symbolCountToWaitFor: 1
                )
            case .flogEyeRight:
                SymbolArtElement(
                    symbol: "􀢚",
                    name: "record.circle.fill",
                    initialPrimaryColor: .systemBackground,
                    initialPosition: .third(.sixth),
                    primaryColor: .white,
                    widthRatio: 0.05,
                    heightRatio: 0.05,
                    horizontalOffsetRatio: -0.32,
                    verticalOffsetRatio: -0.18,
                    symbolCountToWaitFor: 7
                )
            case .flogEyeLeft:
                SymbolArtElement(
                    symbol: "􀢚",
                    name: "record.circle.fill",
                    initialPrimaryColor: .systemBackground,
                    initialPosition: .third(.sixth),
                    primaryColor: .white,
                    widthRatio: 0.05,
                    heightRatio: 0.05,
                    horizontalOffsetRatio: -0.08,
                    verticalOffsetRatio: -0.18,
                    symbolCountToWaitFor: 7
                )
            case .flogOutline:
                SymbolArtElement(
                    symbol: "􀲟",
                    name: "oval.fill",
                    initialPosition: .third(.fifth),
                    primaryColor: .green,
                    widthRatio: 0.4,
                    heightRatio: 0.325,
                    horizontalOffsetRatio: -0.2,
                    symbolCountToWaitFor: 8
                )
            case .flogMouth:
                SymbolArtElement(
                    symbol: "􀆈",
                    name: "chevron.down",
                    initialPosition: .second(.first),
                    primaryColor: .black,
                    fontWeight: .bold,
                    widthRatio: 0.1,
                    heightRatio: 0.05,
                    horizontalOffsetRatio: -0.2,
                    verticalOffsetRatio: 0.025,
                    symbolCountToWaitFor: 3
                )
            case .lionManeFirst:
                // MARK: - Lion mane
                SymbolArtElement(
                    symbol: "􀟇",
                    name: "seal.fill",
                    initialPosition: .third(.second),
                    primaryColor: .orange,
                    fontWeight: .ultraLight,
                    widthRatio: 0.52,
                    heightRatio: 0.52,
                    rotationDegrees: 20,
                    horizontalOffsetRatio: 0.2,
                    verticalOffsetRatio: 0.26,
                    symbolCountToWaitFor: 9
                )
            case .lionManeSecond:
                SymbolArtElement(
                    symbol: "􀟇",
                    name: "seal.fill",
                    initialPosition: .third(.second),
                    primaryColor: .orange,
                    fontWeight: .ultraLight,
                    widthRatio: 0.52,
                    heightRatio: 0.52,
                    horizontalOffsetRatio: 0.2,
                    verticalOffsetRatio: 0.26,
                    symbolCountToWaitFor: 9
                )
            case .lionEarRight:
                // MARK: - 􀀁 Lion ear
                SymbolArtElement(
                    symbol: "􀀁",
                    name: "circle.fill",
                    initialPosition: .third(.third),
                    primaryColor: .yellow,
                    widthRatio: 0.12,
                    heightRatio: 0.12,
                    horizontalOffsetRatio: 0.08,
                    verticalOffsetRatio: 0.17,
                    symbolCountToWaitFor: 1
                )
            case .lionEarLeft:
                SymbolArtElement(
                    symbol: "􀀁",
                    name: "circle.fill",
                    initialPosition: .third(.third),
                    primaryColor: .yellow,
                    widthRatio: 0.12,
                    heightRatio: 0.12,
                    horizontalOffsetRatio: 0.32,
                    verticalOffsetRatio: 0.17,
                    symbolCountToWaitFor: 1
                )
            case .lionOutline:
                // MARK: -  Lion outline
                SymbolArtElement(
                    symbol: "􀲟",
                    name: "oval.fill",
                    initialPosition: .third(.fifth),
                    primaryColor: .yellow,
                    widthRatio: 0.3,
                    heightRatio: 0.26,
                    horizontalOffsetRatio: 0.2,
                    verticalOffsetRatio: 0.29,
                    symbolCountToWaitFor: 8
                )
            case .lionEyeRight:
                SymbolArtElement(
                    symbol: "􀢚",
                    name: "record.circle.fill",
                    initialPrimaryColor: .systemBackground,
                    initialPosition: .third(.sixth),
                    primaryColor: .white,
                    secondaryColor: .darkBrown,
                    widthRatio: 0.05,
                    heightRatio: 0.05,
                    horizontalOffsetRatio: 0.13,
                    verticalOffsetRatio: 0.26,
                    symbolCountToWaitFor: 7
                )
            case .lionEyeLeft:
                SymbolArtElement(
                    symbol: "􀢚",
                    name: "record.circle.fill",
                    initialPrimaryColor: .systemBackground,
                    initialPosition: .third(.sixth),
                    primaryColor: .white,
                    secondaryColor: .darkBrown,
                    widthRatio: 0.05,
                    heightRatio: 0.05,
                    horizontalOffsetRatio: 0.27,
                    verticalOffsetRatio: 0.26,
                    symbolCountToWaitFor: 7
                )
            case .lionWhiskersRight:
                SymbolArtElement(
                    symbol: "􀇯",
                    name: "rays",
                    initialPosition: .second(.second),
                    primaryColor: .darkBrown,
                    widthRatio: 0.175,
                    heightRatio: 0.06,
                    horizontalOffsetRatio: 0.235,
                    verticalOffsetRatio: 0.33,
                    symbolCountToWaitFor: 4
                )
            case .lionWhiskersLeft:
                SymbolArtElement(
                    symbol: "􀇯",
                    name: "rays",
                    initialPosition: .second(.second),
                    primaryColor: .darkBrown,
                    widthRatio: 0.175,
                    heightRatio: 0.06,
                    horizontalOffsetRatio: 0.165,
                    verticalOffsetRatio: 0.33,
                    symbolCountToWaitFor: 4
                )
            case .lionMouth:
                SymbolArtElement(
                    symbol: "􀁹",
                    name: "arrow.down.circle.fill",
                    initialPrimaryColor: .systemBackground,
                    initialPosition: .second(.third),
                    primaryColor: .black,
                    secondaryColor: .white,
                    widthRatio: 0.125,
                    heightRatio: 0.11,
                    horizontalOffsetRatio: 0.2,
                    verticalOffsetRatio: 0.34,
                    symbolCountToWaitFor: 5
                )
            case .lionNose:
                SymbolArtElement(
                    symbol: "􀆼",
                    name: "moon.circle.fill",
                    initialPrimaryColor: .systemBackground,
                    initialPosition: .third(.seventh),
                    primaryColor: .white,
                    secondaryColor: .darkBrown,
                    widthRatio: 0.04,
                    heightRatio: 0.04,
                    rotationDegrees: 170,
                    horizontalOffsetRatio: 0.2,
                    verticalOffsetRatio: 0.32,
                    symbolCountToWaitFor: 6
                )
            case .pawFirst:
                SymbolArtElement(
                    symbol: "􀾟",
                    name: "pawprint.fill",
                    initialPosition: .third(.first),
                    primaryColor:  .red,
                    widthRatio: 0.13,
                    heightRatio: 0.13,
                    rotationDegrees: 24,
                    horizontalOffsetRatio: -0.34,
                    verticalOffsetRatio: -0.5,
                    symbolCountToWaitFor: 2
                )
            case .pawSecond:
                SymbolArtElement(
                    symbol: "􀾟",
                    name: "pawprint.fill",
                    initialPosition: .third(.first),
                    primaryColor:  .orange,
                    widthRatio: 0.13,
                    heightRatio: 0.13,
                    rotationDegrees: -24,
                    horizontalOffsetRatio: -0.14,
                    verticalOffsetRatio: -0.36,
                    symbolCountToWaitFor: 2
                )
            case .pawThird:
                SymbolArtElement(
                    symbol: "􀾟",
                    name: "pawprint.fill",
                    initialPosition: .third(.first),
                    primaryColor:  .teal,
                    widthRatio: 0.13,
                    heightRatio: 0.13,
                    rotationDegrees: 30,
                    horizontalOffsetRatio: -0.3,
                    verticalOffsetRatio: 0.26,
                    symbolCountToWaitFor: 2
                )
            case .pawFourth:
                SymbolArtElement(
                    symbol: "􀾟",
                    name: "pawprint.fill",
                    initialPosition: .third(.first),
                    primaryColor:  .blue,
                    widthRatio: 0.13,
                    heightRatio: 0.13,
                    rotationDegrees: -14,
                    horizontalOffsetRatio: -0.14,
                    verticalOffsetRatio: 0.44,
                    symbolCountToWaitFor: 2
                )
            }
        }
    }
}

#Preview {
    NavigationStack {
        PartyAnimalsArtView()
            .environment(ArtWorkModel.preview)
    }
}

#Preview {
    PartyAnimalsArtView.CoverArt()
        .environment(ArtWorkModel.preview)
}
