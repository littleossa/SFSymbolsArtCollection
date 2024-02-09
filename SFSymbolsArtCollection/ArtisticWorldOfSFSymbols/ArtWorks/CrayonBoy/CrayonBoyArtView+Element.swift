//
//  CrayonBoyArtView+Element.swift
//  SFSymbolsArtCollection
//
//

import SwiftUI

extension CrayonBoyArtView {
    
    enum Element: String, CaseIterable, Identifiable {
        case outline
        case hair
        case hairConcealment
        case eyebrowRight
        case eyebrowLeft
        case eyelidRight
        case eyelidLeft
        case eyelidConcealmentRight
        case eyelidConcealmentLeft
        case eyeRight
        case eyeLeft
        case outlineFrame
        case mouth
        case mouthFrame
        case sideburns
        
        var id: String { rawValue }
        
        var value: SymbolArtElement {
            switch self {
            case .outline:
                SymbolArtElement(
                    symbol: "􀇃",
                    name: "cloud.fill",
                    initialPosition: .second(.first),
                    primaryColor: .paleOrange,
                    fontWeight: .ultraLight,
                    widthRatio: 0.75,
                    heightRatio: 0.5,
                    rotationDegrees: 8,
                    flip: .horizontal,
                    symbolCountToWaitFor: 0
                )
            case .hair:
                SymbolArtElement(
                    symbol: "􀀁",
                    name: "circle.fill",
                    initialPosition: .second(.second),
                    primaryColor: .black,
                    widthRatio: 0.44,
                    heightRatio: 0.25,
                    horizontalOffsetRatio: 0.05,
                    verticalOffsetRatio: -0.125,
                    symbolCountToWaitFor: 2
                )
            case .hairConcealment:
                SymbolArtElement(
                    symbol: "􀏄",
                    name: "rectangle.fill",
                    initialPosition: .third(.fifth),
                    primaryColor: .paleOrange,
                    widthRatio: 0.4,
                    heightRatio: 0.25,
                    horizontalOffsetRatio: 0.033,
                    verticalOffsetRatio: -0.05,
                    symbolCountToWaitFor: 3
                )
            case .eyebrowRight:
                SymbolArtElement(
                    symbol: "􀆍",
                    name: "control",
                    initialPosition: .third(.sixth),
                    primaryColor: .black,
                    fontWeight: .black,
                    widthRatio: 0.2,
                    heightRatio: 0.1,
                    rotationDegrees: 6,
                    horizontalOffsetRatio: -0.07,
                    verticalOffsetRatio: -0.14,
                    symbolCountToWaitFor: 4
                )
            case .eyebrowLeft:
                SymbolArtElement(
                    symbol: "􀆍",
                    name: "control",
                    initialPosition: .third(.sixth),
                    primaryColor: .black,
                    fontWeight: .black,
                    widthRatio: 0.2,
                    heightRatio: 0.1,
                    rotationDegrees: 6,
                    horizontalOffsetRatio: 0.14,
                    verticalOffsetRatio: -0.12,
                    symbolCountToWaitFor: 4
                )
            case .eyelidRight:
                SymbolArtElement(
                    symbol: "􀀀",
                    name: "circle",
                    initialPosition: .second(.third),
                    primaryColor: .black,
                    fontWeight: .ultraLight,
                    widthRatio: 0.17,
                    heightRatio: 0.16,
                    horizontalOffsetRatio: 0.12,
                    verticalOffsetRatio: -0.01,
                    symbolCountToWaitFor: 5
                )
            case .eyelidLeft:
                SymbolArtElement(
                    symbol: "􀀀",
                    name: "circle",
                    initialPosition: .second(.third),
                    primaryColor: .black,
                    fontWeight: .ultraLight,
                    widthRatio: 0.17,
                    heightRatio: 0.16,
                    horizontalOffsetRatio: -0.08,
                    verticalOffsetRatio: -0.01,
                    symbolCountToWaitFor: 5
                )
            case .eyelidConcealmentRight:
                SymbolArtElement(
                    symbol: "􀏄",
                    name: "rectangle.fill",
                    initialPosition: .third(.fifth),
                    primaryColor: .paleOrange,
                    widthRatio: 0.2,
                    heightRatio: 0.16,
                    horizontalOffsetRatio: 0.13,
                    verticalOffsetRatio: 0.06,
                    symbolCountToWaitFor: 6
                )
            case .eyelidConcealmentLeft:
                SymbolArtElement(
                    symbol: "􀏄",
                    name: "rectangle.fill",
                    initialPosition: .third(.fifth),
                    primaryColor: .paleOrange,
                    widthRatio: 0.2,
                    heightRatio: 0.16,
                    horizontalOffsetRatio: -0.08,
                    verticalOffsetRatio: 0.06,
                    symbolCountToWaitFor: 6
                )
            case .eyeRight:
                SymbolArtElement(
                    symbol: "􀢚",
                    name: "record.circle.fill",
                    initialPrimaryColor: .systemBackground,
                    initialPosition: .third(.seventh),
                    primaryColor: .white,
                    widthRatio: 0.14,
                    heightRatio: 0.14,
                    horizontalOffsetRatio: 0.1,
                    verticalOffsetRatio: 0.02,
                    symbolCountToWaitFor: 7
                )
            case .eyeLeft:
                SymbolArtElement(
                    symbol: "􀢚",
                    name: "record.circle.fill",
                    initialPrimaryColor: .systemBackground,
                    initialPosition: .third(.seventh),
                    primaryColor: .white,
                    widthRatio: 0.14,
                    heightRatio: 0.14,
                    horizontalOffsetRatio: -0.06,
                    verticalOffsetRatio: 0.016,
                    symbolCountToWaitFor: 7
                )
            case .outlineFrame:
                SymbolArtElement(
                    symbol: "􀇂",
                    name: "cloud",
                    initialPosition: .third(.first),
                    primaryColor: .black,
                    fontWeight: .ultraLight,
                    widthRatio: 0.75,
                    heightRatio: 0.5,
                    rotationDegrees: 8,
                    flip: .horizontal,
                    symbolCountToWaitFor: 1
                )
            case .mouth:
                SymbolArtElement(
                    symbol: "􀧷",
                    name: "capsule.portrait.fill",
                    initialPosition: .third(.second),
                    primaryColor: .red,
                    fontWeight: .ultraLight,
                    widthRatio: 0.1,
                    heightRatio: 0.15,
                    rotationDegrees: 16,
                    horizontalOffsetRatio: -0.09,
                    verticalOffsetRatio: 0.225,
                    symbolCountToWaitFor: 8
                )
            case .mouthFrame:
                SymbolArtElement(
                    symbol: "􀧶",
                    name: "capsule.portrait",
                    initialPosition: .third(.third),
                    primaryColor: .black,
                    fontWeight: .ultraLight,
                    widthRatio: 0.1,
                    heightRatio: 0.15,
                    rotationDegrees: 16,
                    horizontalOffsetRatio: -0.09,
                    verticalOffsetRatio: 0.225,
                    symbolCountToWaitFor: 8
                )
            case .sideburns:
                SymbolArtElement(
                    symbol: "􁹬",
                    name: "righttriangle.fill",
                    initialPosition: .third(.fourth),
                    primaryColor: .black,
                    widthRatio: 0.064,
                    heightRatio: 0.2,
                    rotationDegrees: 170,
                    flip: .horizontal,
                    horizontalOffsetRatio: 0.215,
                    verticalOffsetRatio: -0.07,
                    symbolCountToWaitFor: 9
                )
            }
        }
    }
}

#Preview {
    NavigationStack {
        CrayonBoyArtView()
            .environment(ArtWorkModel.preview)
    }
}

#Preview {
    CrayonBoyArtView.CoverArt()
        .environment(ArtWorkModel.preview)
}
