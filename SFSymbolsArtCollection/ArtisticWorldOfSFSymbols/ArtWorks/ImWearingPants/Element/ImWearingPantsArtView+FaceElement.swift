//
//  ImWearingPantsArtView+FaceElement.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

extension ImWearingPantsArtView {
    enum FaceElement: String, CaseIterable, Identifiable {
        case musicFirst
        case musicSecond
        case faceBackground
        case face
        case joe
        case nose
        case eyebrowRight
        case eyebrowLeft
        case eyebrowConcealmentRight
        case eyebrowConcealmentLeft
        case eyeFrameRight
        case eyeFrameLeft
        case eyeRight
        case eyeLeft
        case mouthTop
        case mouthBottom
        case teethRight
        case teethLeft
        case hairTop
        case hairRight
        case hairLeft
        
        var id: String { rawValue }
        
        var value: SymbolArtElement {
            switch self {
            case .musicFirst:
                SymbolArtElement(
                    symbol: "􀑪",
                    name: "music.note",
                    initialPosition: .second(.first),
                    primaryColor: .black,
                    widthRatio: 0.1,
                    heightRatio: 0.15,
                    horizontalOffsetRatio: 0.35,
                    verticalOffsetRatio: -0.5,
                    symbolCountToWaitFor: 0
                )
            case .musicSecond:
                SymbolArtElement(
                    symbol: "􀫀",
                    name: "music.quarternote.3",
                    initialPosition: .second(.second),
                    primaryColor: .black,
                    widthRatio: 0.2,
                    heightRatio: 0.15,
                    horizontalOffsetRatio: -0.34,
                    verticalOffsetRatio: -0.38,
                    symbolCountToWaitFor: 1
                )
            case .faceBackground:
                SymbolArtElement(
                    symbol: "􀀁",
                    name: "circle.fill",
                    initialPosition: .second(.third),
                    primaryColor: .systemBackground,
                    widthRatio: 0.2,
                    heightRatio: 0.2,
                    verticalOffsetRatio: -0.4,
                    symbolCountToWaitFor: 2
                )
            case .face:
                SymbolArtElement(
                    symbol: "􀧷",
                    name: "capsule.portrait.fill",
                    initialPosition: .second(.fourth),
                    primaryColor: .yellow,
                    fontWeight: .ultraLight,
                    widthRatio: 0.16,
                    heightRatio: 0.22,
                    verticalOffsetRatio: -0.4,
                    symbolCountToWaitFor: 2
                )
            case .joe:
                SymbolArtElement(
                    symbol: "􀧷",
                    name: "capsule.portrait.fill",
                    initialPosition: .second(.fourth),
                    primaryColor: .yellow,
                    widthRatio: 0.1,
                    heightRatio: 0.16,
                    verticalOffsetRatio: -0.35,
                    symbolCountToWaitFor: 2
                )
            case .nose:
                SymbolArtElement(
                    symbol: "􀨯",
                    name: "nose",
                    initialPosition: .second(.fifth),
                    primaryColor: .black,
                    fontWeight: .ultraLight,
                    widthRatio: 0.045,
                    heightRatio: 0.06,
                    verticalOffsetRatio: -0.38,
                    symbolCountToWaitFor: 3
                )
            case .eyebrowRight:
                SymbolArtElement(
                    symbol: "􀦭",
                    name: "eyebrow",
                    initialPosition: .second(.sixth),
                    primaryColor: .black,
                    fontWeight: .ultraLight,
                    widthRatio: 0.04,
                    heightRatio: 0.04,
                    horizontalOffsetRatio: 0.03,
                    verticalOffsetRatio: -0.41,
                    symbolCountToWaitFor: 4
                )
            case .eyebrowLeft:
                SymbolArtElement(
                    symbol: "􀦭",
                    name: "eyebrow",
                    initialPosition: .second(.sixth),
                    primaryColor: .black,
                    fontWeight: .ultraLight,
                    widthRatio: 0.045,
                    heightRatio: 0.04,
                    flip: .horizontal,
                    horizontalOffsetRatio: -0.03,
                    verticalOffsetRatio: -0.408,
                    symbolCountToWaitFor: 4
                )
            case .eyebrowConcealmentRight:
                SymbolArtElement(
                    symbol: "􀧷",
                    name: "capsule.portrait.fill",
                    initialPosition: .second(.fourth),
                    primaryColor: .yellow,
                    widthRatio: 0.05,
                    heightRatio: 0.02,
                    rotationDegrees: -10,
                    horizontalOffsetRatio: -0.035,
                    verticalOffsetRatio: -0.396,
                    symbolCountToWaitFor: 5
                )
            case .eyebrowConcealmentLeft:
                SymbolArtElement(
                    symbol: "􀧷",
                    name: "capsule.portrait.fill",
                    initialPosition: .second(.fourth),
                    primaryColor: .yellow,
                    widthRatio: 0.05,
                    heightRatio: 0.02,
                    rotationDegrees: 10,
                    horizontalOffsetRatio: 0.035,
                    verticalOffsetRatio: -0.396,
                    symbolCountToWaitFor: 5
                )
            case .eyeFrameRight:
                SymbolArtElement(
                    symbol: "􀋭",
                    name: "eye",
                    initialPosition: .second(.seventh),
                    primaryColor: .black,
                    fontWeight: .ultraLight,
                    widthRatio: 0.04,
                    heightRatio: 0.02,
                    horizontalOffsetRatio: 0.03,
                    verticalOffsetRatio: -0.4,
                    symbolCountToWaitFor: 5
                )
            case .eyeFrameLeft:
                SymbolArtElement(
                    symbol: "􀋭",
                    name: "eye",
                    initialPosition: .second(.seventh),
                    primaryColor: .black,
                    fontWeight: .ultraLight,
                    widthRatio: 0.04,
                    heightRatio: 0.02,
                    horizontalOffsetRatio: -0.03,
                    verticalOffsetRatio: -0.4,
                    symbolCountToWaitFor: 5
                )
            case .eyeRight:
                SymbolArtElement(
                    symbol: "􀋮",
                    name: "eye.fill",
                    initialPosition: .third(.seventh),
                    primaryColor: .white,
                    widthRatio: 0.04,
                    heightRatio: 0.02,
                    horizontalOffsetRatio: 0.03,
                    verticalOffsetRatio: -0.4,
                    symbolCountToWaitFor: 5
                )
            case .eyeLeft:
                SymbolArtElement(
                    symbol: "􀋮",
                    name: "eye.fill",
                    initialPosition: .third(.seventh),
                    primaryColor: .white,
                    widthRatio: 0.04,
                    heightRatio: 0.02,
                    horizontalOffsetRatio: -0.03,
                    verticalOffsetRatio: -0.4,
                    symbolCountToWaitFor: 5
                )
            case .mouthTop:
                SymbolArtElement(
                    symbol: "􀦪",
                    name: "mouth.fill",
                    initialPosition: .third(.third),
                    primaryColor: .red,
                    widthRatio: 0.06,
                    heightRatio: 0.02,
                    verticalOffsetRatio: -0.32,
                    symbolCountToWaitFor: 6
                )
            case .mouthBottom:
                SymbolArtElement(
                    symbol: "􀦪",
                    name: "mouth.fill",
                    initialPosition: .third(.third),
                    primaryColor: .red,
                    widthRatio: 0.06,
                    heightRatio: 0.02,
                    verticalOffsetRatio: -0.33,
                    symbolCountToWaitFor: 6
                )
            case .teethRight:
                SymbolArtElement(
                    symbol: "􁒀",
                    name: "window.casement.closed",
                    initialSecondaryColor: .clear,
                    initialPosition: .third(.fourth),
                    primaryColor: .black,
                    secondaryColor: .white,
                    fontWeight: .ultraLight,
                    widthRatio: 0.015,
                    heightRatio: 0.029,
                    rotationDegrees: 90,
                    horizontalOffsetRatio: 0.013,
                    verticalOffsetRatio: -0.328,
                    symbolCountToWaitFor: 7
                )
            case .teethLeft:
                SymbolArtElement(
                    symbol: "􁒀",
                    name: "window.casement.closed",
                    initialSecondaryColor: .clear,
                    initialPosition: .third(.fourth),
                    primaryColor: .black,
                    secondaryColor: .white,
                    fontWeight: .ultraLight,
                    widthRatio: 0.015,
                    heightRatio: 0.029,
                    rotationDegrees: 90,
                    horizontalOffsetRatio: -0.014,
                    verticalOffsetRatio: -0.328,
                    symbolCountToWaitFor: 7
                )
            case .hairTop:
                SymbolArtElement(
                    symbol: "􀲟",
                    name: "oval.fill",
                    initialPosition: .third(.fifth),
                    primaryColor: .black,
                    fontWeight: .ultraLight,
                    widthRatio: 0.14,
                    heightRatio: 0.057,
                    horizontalOffsetRatio: -0.001,
                    verticalOffsetRatio: -0.49,
                    symbolCountToWaitFor: 8
                )
            case .hairRight:
                SymbolArtElement(
                    symbol: "􀠒",
                    name: "drop.fill",
                    initialPosition: .third(.sixth),
                    primaryColor: .black,
                    fontWeight: .ultraLight,
                    widthRatio: 0.05,
                    heightRatio: 0.06,
                    rotationDegrees: -65,
                    horizontalOffsetRatio: 0.04,
                    verticalOffsetRatio: -0.48,
                    symbolCountToWaitFor: 9
                )
            case .hairLeft:
                SymbolArtElement(
                    symbol: "􀠒",
                    name: "drop.fill",
                    initialPosition: .third(.sixth),
                    primaryColor: .black,
                    fontWeight: .ultraLight,
                    widthRatio: 0.05,
                    heightRatio: 0.1,
                    rotationDegrees: 95,
                    horizontalOffsetRatio: -0.03,
                    verticalOffsetRatio: -0.47,
                    symbolCountToWaitFor: 9
                )
            }
        }
        
        var isMusic: Bool {
            switch self {
            case .musicFirst, .musicSecond:
                true
            default:
                false
            }
        }
    }
}

#Preview {
    NavigationStack {
        ImWearingPantsArtView()
            .environment(ArtWorkModel.preview)
    }
}

#Preview {
    ImWearingPantsPreviewView()
        .environment(ArtWorkModel.preview)
}
