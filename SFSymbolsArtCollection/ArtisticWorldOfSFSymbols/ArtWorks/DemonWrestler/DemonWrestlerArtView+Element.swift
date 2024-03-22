//
//  DemonWrestlerArtView+Element.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

extension DemonWrestlerArtView {
    
    enum Element: String, CaseIterable, Identifiable {
        case body
        case neck
        case pants
        case handRight
        case handLeft
        case hornRight
        case hornLeft
        case handGloveRight
        case handGloveLeft
        case hat
        case outlineFrame
        case outline
        case hatCenterTip
        case numberFour
        case eyeBagRight
        case eyeBagLeft
        case eyeFrameRight
        case eyeFrameLeft
        case eyeRight
        case eyeLeft
        case nose
        case mouth
        case mouthFrame
        case scar
        
        var id: String { rawValue }
        
        var value: SymbolArtElement {
            switch self {
            case .body:
                SymbolArtElement(
                    symbol: "􀝻",
                    name: "figure.wave",
                    initialPosition: .first(.first),
                    primaryColor: .paleOrange,
                    widthRatio: 0.6,
                    heightRatio: 0.84,
                    symbolCountToWaitFor: 0)
            case .neck:
                SymbolArtElement(
                    symbol: "􀡸",
                    name: "powerplug.fill",
                    initialPosition: .first(.second),
                    primaryColor: .paleOrange,
                    widthRatio: 0.2,
                    heightRatio: 0.3,
                    rotationDegrees: 90,
                    horizontalOffsetRatio: 0.03,
                    verticalOffsetRatio: -0.18,
                    symbolCountToWaitFor: 1)
            case .pants:
                SymbolArtElement(
                    symbol: "􀒋",
                    name: "pencil.tip",
                    initialPosition: .first(.third),
                    primaryColor: .black,
                    widthRatio: 0.2,
                    heightRatio: 0.35,
                    rotationDegrees: 180,
                    horizontalOffsetRatio: 0.02,
                    verticalOffsetRatio: -0.047,
                    symbolCountToWaitFor: 2)
            case .handRight:
                SymbolArtElement(
                    symbol: "􁗪",
                    name: "hand.raised.fingers.spread.fill",
                    initialPosition: .second(.fourth),
                    primaryColor: .black,
                    widthRatio: 0.14,
                    heightRatio: 0.1375,
                    horizontalOffsetRatio: -0.235,
                    verticalOffsetRatio: -0.48,
                    symbolCountToWaitFor: 3)
                
            case .handLeft:
                SymbolArtElement(
                    symbol: "􁗪",
                    name: "hand.raised.fingers.spread.fill",
                    initialPosition: .second(.fourth),
                    primaryColor: .black,
                    widthRatio: 0.14,
                    heightRatio: 0.1375,
                    rotationDegrees: 180,
                    horizontalOffsetRatio: 0.23,
                    verticalOffsetRatio: 0.19,
                    symbolCountToWaitFor: 3)
                
            case .hornRight:
                SymbolArtElement(
                    symbol: "􀒘",
                    name: "bolt.horizontal.fill",
                    initialPosition: .second(.fifth),
                    primaryColor: .red,
                    widthRatio: 0.17,
                    heightRatio: 0.2,
                    rotationDegrees: 138,
                    flip: .vertical,
                    horizontalOffsetRatio: -0.12,
                    verticalOffsetRatio: -0.44,
                    symbolCountToWaitFor: 4)
                
            case .hornLeft:
                SymbolArtElement(
                    symbol: "􀒘",
                    name: "bolt.horizontal.fill",
                    initialPosition: .second(.fifth),
                    primaryColor: .red,
                    widthRatio: 0.17,
                    heightRatio: 0.2,
                    rotationDegrees: 138,
                    horizontalOffsetRatio: 0.16,
                    verticalOffsetRatio: -0.44,
                    symbolCountToWaitFor: 4)
                
            case .handGloveRight:
                SymbolArtElement(
                    symbol: "􀳈",
                    name: "cone.fill",
                    initialPosition: .second(.sixth),
                    primaryColor: .black,
                    widthRatio: 0.14,
                    heightRatio: 0.2,
                    horizontalOffsetRatio: -0.24,
                    verticalOffsetRatio: -0.39,
                    symbolCountToWaitFor: 5)
                
            case .handGloveLeft:
                SymbolArtElement(
                    symbol: "􀳈",
                    name: "cone.fill",
                    initialPosition: .second(.sixth),
                    primaryColor: .black,
                    widthRatio: 0.14,
                    heightRatio: 0.2,
                    rotationDegrees: 180,
                    horizontalOffsetRatio: 0.235,
                    verticalOffsetRatio: 0.1,
                    symbolCountToWaitFor: 5)
                
            case .hat:
                SymbolArtElement(
                    symbol: "􀙧",
                    name: "shield.fill",
                    initialPosition: .second(.seventh),
                    primaryColor: .black,
                    widthRatio: 0.3,
                    heightRatio: 0.3,
                    rotationDegrees: 180,
                    horizontalOffsetRatio: 0.018,
                    verticalOffsetRatio: -0.4,
                    symbolCountToWaitFor: 6)
                
            case .outlineFrame:
                SymbolArtElement(
                    symbol: "􀧶",
                    name: "capsule.portrait",
                    initialPosition: .second(.second),
                    primaryColor: .black.opacity(0.3),
                    fontWeight: .ultraLight,
                    widthRatio: 0.19,
                    heightRatio: 0.26,
                    horizontalOffsetRatio: 0.018,
                    verticalOffsetRatio: -0.296,
                    symbolCountToWaitFor: 7)
                
            case .outline:
                SymbolArtElement(
                    symbol: "􀧷",
                    name: "capsule.portrait.fill",
                    initialPosition: .second(.third),
                    primaryColor: .paleOrange,
                    fontWeight: .ultraLight,
                    widthRatio: 0.2025,
                    heightRatio: 0.26,
                    horizontalOffsetRatio: 0.018,
                    verticalOffsetRatio: -0.3,
                    symbolCountToWaitFor: 7)
                
            case .hatCenterTip:
                SymbolArtElement(
                    symbol: "􀙧",
                    name: "shield.fill",
                    initialPosition: .second(.seventh),
                    primaryColor: .black,
                    widthRatio: 0.14,
                    heightRatio: 0.18,
                    horizontalOffsetRatio: 0.018,
                    verticalOffsetRatio: -0.44,
                    symbolCountToWaitFor: 6)
                
            case .numberFour:
                SymbolArtElement(
                    symbol: "􀘘",
                    name: "4.alt.circle.fill",
                    initialPrimaryColor: .systemBackground,
                    initialPosition: .third(.first),
                    primaryColor: .red,
                    secondaryColor: .black,
                    widthRatio: 0.12,
                    heightRatio: 0.12,
                    horizontalOffsetRatio: 0.018,
                    verticalOffsetRatio: -0.45,
                    symbolCountToWaitFor: 8)
                
            case .eyeBagRight:
                SymbolArtElement(
                    symbol: "􁹩",
                    name: "lightspectrum.horizontal",
                    initialPosition: .third(.second),
                    primaryColor: .indigo,
                    widthRatio: 0.05,
                    heightRatio: 0.038,
                    horizontalOffsetRatio: 0.058,
                    verticalOffsetRatio: -0.32,
                    symbolCountToWaitFor: 9)
                
            case .eyeBagLeft:
                SymbolArtElement(
                    symbol: "􁹩",
                    name: "lightspectrum.horizontal",
                    initialPosition: .third(.second),
                    primaryColor: .indigo,
                    widthRatio: 0.05,
                    heightRatio: 0.038,
                    horizontalOffsetRatio: -0.03,
                    verticalOffsetRatio: -0.32,
                    symbolCountToWaitFor: 9)
                
            case .eyeFrameRight:
                SymbolArtElement(
                    symbol: "􀋭",
                    name: "eye",
                    initialPosition: .third(.third),
                    primaryColor: .black,
                    widthRatio: 0.05,
                    heightRatio: 0.025,
                    horizontalOffsetRatio: 0.058,
                    verticalOffsetRatio: -0.328,
                    symbolCountToWaitFor: 10)
                
            case .eyeFrameLeft:
                SymbolArtElement(
                    symbol: "􀋭",
                    name: "eye",
                    initialPosition: .third(.third),
                    primaryColor: .black,
                    widthRatio: 0.05,
                    heightRatio: 0.025,
                    horizontalOffsetRatio: -0.03,
                    verticalOffsetRatio: -0.328,
                    symbolCountToWaitFor: 10)
                
            case .eyeRight:
                SymbolArtElement(
                    symbol: "􀋮",
                    name: "eye.fill",
                    initialPosition: .third(.fourth),
                    primaryColor: .white,
                    widthRatio: 0.05,
                    heightRatio: 0.025,
                    horizontalOffsetRatio: 0.058,
                    verticalOffsetRatio: -0.328,
                    symbolCountToWaitFor: 10)
                
            case .eyeLeft:
                SymbolArtElement(
                    symbol: "􀋮",
                    name: "eye.fill",
                    initialPosition: .third(.fourth),
                    primaryColor: .white,
                    widthRatio: 0.05,
                    heightRatio: 0.025,
                    horizontalOffsetRatio: -0.03,
                    verticalOffsetRatio: -0.328,
                    symbolCountToWaitFor: 10)
                
            case .nose:
                SymbolArtElement(
                    symbol: "􀨯",
                    name: "nose",
                    initialPosition: .third(.fifth),
                    primaryColor: .black,
                    fontWeight: .thin,
                    widthRatio: 0.05,
                    heightRatio: 0.05,
                    horizontalOffsetRatio: 0.018,
                    verticalOffsetRatio: -0.28,
                    symbolCountToWaitFor: 11)
                
            case .mouth:
                SymbolArtElement(
                    symbol: "􀦪",
                    name: "mouth.fill",
                    initialPosition: .third(.sixth),
                    primaryColor: .red,
                    fontWeight: .thin,
                    widthRatio: 0.07,
                    heightRatio: 0.03,
                    horizontalOffsetRatio: 0.018,
                    verticalOffsetRatio: -0.21,
                    symbolCountToWaitFor: 12)
                
            case .mouthFrame:
                SymbolArtElement(
                    symbol: "􀦩",
                    name: "mouth",
                    initialPosition: .third(.seventh),
                    primaryColor: .black,
                    fontWeight: .thin,
                    widthRatio: 0.07,
                    heightRatio: 0.03,
                    horizontalOffsetRatio: 0.018,
                    verticalOffsetRatio: -0.21,
                    symbolCountToWaitFor: 12)
                
            case .scar:
                SymbolArtElement(
                    symbol: "􀜟",
                    name: "waveform.path.ecg",
                    initialPosition: .second(.first),
                    primaryColor: .indigo,
                    fontWeight: .thin,
                    widthRatio: 0.05,
                    heightRatio: 0.03,
                    rotationDegrees: -15,
                    horizontalOffsetRatio: 0.07,
                    verticalOffsetRatio: -0.248,
                    symbolCountToWaitFor: 13)
            }
        }
    }
}

#Preview {
    NavigationStack {
        DemonWrestlerArtView()
            .environment(ArtWorkModel.preview)
    }
}

#Preview {
    DemonWrestlerArtView.CoverArt()
        .environment(ArtWorkModel.preview)
}
