//
//  NosebleedArtView+Element.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

extension NosebleedArtView {
    
    enum Element: String, CaseIterable, Identifiable {
        case outline
        case nosebleedBottom
        case nosebleedBottomConcealment
        case mouth
        case mouthConcealment
        case nosebleedTop
        case nosebleedTopConcealmentRight
        case nosebleedTopConcealmentLeft
        case eyeRight
        case eyeLeft
        case tissue
        case tissueFrame
        case nose
        case noseConcealment
        
        var id: String { rawValue }
        
        var value: SymbolArtElement {
            switch self {
            case .outline:
                SymbolArtElement(
                    symbol: "􀀁",
                    name: "circle.fill",
                    initialPosition: .third(.first),
                    primaryColor: .awesomeYellow,
                    widthRatio: 0.65,
                    heightRatio: 0.65,
                    symbolCountToWaitFor: 3
                )
            case .nosebleedBottom:
                SymbolArtElement(
                    symbol: "􀭧",
                    name: "cellularbars",
                    initialPosition: .third(.second),
                    primaryColor: .red,
                    fontWeight: .ultraLight,
                    widthRatio: 0.2,
                    heightRatio: 0.5,
                    rotationDegrees: 180,
                    horizontalOffsetRatio: 0.09,
                    verticalOffsetRatio: 0.074,
                    symbolCountToWaitFor: 1
                )
            case .nosebleedBottomConcealment:
                SymbolArtElement(
                    symbol: "􀏄",
                    name: "rectangle.fill",
                    initialPosition: .third(.third),
                    primaryColor: .awesomeYellow,
                    widthRatio: 0.1,
                    heightRatio: 0.14,
                    horizontalOffsetRatio: 0.09,
                    verticalOffsetRatio: 0.15,
                    symbolCountToWaitFor: 2
                )
            case .mouth:
                SymbolArtElement(
                    symbol: "􀓩",
                    name: "lasso",
                    initialPosition: .third(.fourth),
                    primaryColor: .black,
                    fontWeight: .ultraLight,
                    widthRatio: 0.4,
                    heightRatio: 0.3,
                    rotationDegrees: 170,
                    horizontalOffsetRatio: 0.01,
                    verticalOffsetRatio: 0.05,
                    symbolCountToWaitFor: 0
                )
            case .mouthConcealment:
                SymbolArtElement(
                    symbol: "􀏄",
                    name: "rectangle.fill",
                    initialPosition: .third(.third),
                    primaryColor: .awesomeYellow,
                    widthRatio: 0.5,
                    heightRatio: 0.3,
                    rotationDegrees: 176,
                    verticalOffsetRatio: -0.03,
                    symbolCountToWaitFor: 2
                )
            case .nosebleedTop:
                SymbolArtElement(
                    symbol: "􀭧",
                    name: "cellularbars",
                    initialPosition: .third(.second),
                    primaryColor: .red,
                    fontWeight: .ultraLight,
                    widthRatio: 0.2,
                    heightRatio: 0.12,
                    rotationDegrees: 180,
                    horizontalOffsetRatio: 0.033,
                    verticalOffsetRatio: 0.096,
                    symbolCountToWaitFor: 1
                )
            case .nosebleedTopConcealmentRight:
                SymbolArtElement(
                    symbol: "􀏄",
                    name: "rectangle.fill",
                    initialPosition: .third(.third),
                    primaryColor: .awesomeYellow,
                    widthRatio: 0.1,
                    heightRatio: 0.1,
                    horizontalOffsetRatio: 0.09,
                    verticalOffsetRatio: 0.06,
                    symbolCountToWaitFor: 2
                )
            case .nosebleedTopConcealmentLeft:
                SymbolArtElement(
                    symbol: "􀏄",
                    name: "rectangle.fill",
                    initialPosition: .third(.third),
                    primaryColor: .awesomeYellow,
                    widthRatio: 0.04,
                    heightRatio: 0.14,
                    horizontalOffsetRatio: -0.047,
                    verticalOffsetRatio: 0.09,
                    symbolCountToWaitFor: 2
                )
            case .eyeRight:
                SymbolArtElement(
                    symbol: "􀀁",
                    name: "circle.fill",
                    initialPosition: .third(.first),
                    primaryColor: .black,
                    widthRatio: 0.06,
                    heightRatio: 0.06,
                    horizontalOffsetRatio: 0.117,
                    verticalOffsetRatio: -0.176,
                    symbolCountToWaitFor: 3
                )
            case .eyeLeft:
                SymbolArtElement(
                    symbol: "􀀁",
                    name: "circle.fill",
                    initialPosition: .third(.first),
                    primaryColor: .black,
                    widthRatio: 0.06,
                    heightRatio: 0.06,
                    horizontalOffsetRatio: -0.113,
                    verticalOffsetRatio: -0.17,
                    symbolCountToWaitFor: 3
                )
            case .tissue:
                SymbolArtElement(
                    symbol: "􀥨",
                    name: "doc.plaintext.fill",
                    initialPosition: .third(.fifth),
                    primaryColor: .white,
                    fontWeight: .ultraLight,
                    widthRatio: 0.04,
                    heightRatio: 0.08,
                    rotationDegrees: 188,
                    horizontalOffsetRatio: -0.052,
                    verticalOffsetRatio: 0.083,
                    symbolCountToWaitFor: 6
                )
            case .tissueFrame:
                SymbolArtElement(
                    symbol: "􀉆",
                    name: "doc.plaintext",
                    initialPosition: .third(.sixth),
                    primaryColor: .black,
                    fontWeight: .light,
                    widthRatio: 0.04,
                    heightRatio: 0.08,
                    rotationDegrees: 188,
                    horizontalOffsetRatio: -0.052,
                    verticalOffsetRatio: 0.083,
                    symbolCountToWaitFor: 6
                )
            case .nose:
                SymbolArtElement(
                    symbol: "􀥰",
                    name: "triangleshape",
                    initialPosition: .third(.seventh),
                    primaryColor: .black,
                    fontWeight: .light,
                    widthRatio: 0.15,
                    heightRatio: 0.14,
                    rotationDegrees: -4,
                    horizontalOffsetRatio: -0.013,
                    verticalOffsetRatio: -0.02,
                    symbolCountToWaitFor: 4
                )
            case .noseConcealment:
                SymbolArtElement(
                    symbol: "􀏄",
                    name: "rectangle.fill",
                    initialPosition: .third(.third),
                    primaryColor: .awesomeYellow,
                    widthRatio: 0.02,
                    heightRatio: 0.13,
                    rotationDegrees: 148,
                    horizontalOffsetRatio: 0.007,
                    verticalOffsetRatio: -0.046,
                    symbolCountToWaitFor: 5
                )
            }
        }
        
        var isNosebleed: Bool {
            switch self {
            case .nosebleedBottom, .nosebleedTop:
                true
            default:
                false
            }
        }
    }
}

#Preview {
    NavigationStack {
        NosebleedArtView()
            .environment(ArtWorkModel.preview)
    }
}

#Preview {
    NosebleedArtView.CoverArt()
        .environment(ArtWorkModel.preview)
}
