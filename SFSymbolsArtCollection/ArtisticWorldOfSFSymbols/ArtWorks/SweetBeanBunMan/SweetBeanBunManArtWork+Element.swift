//
//  SweetBeanBunManArtWork+Element.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

extension SweetBeanBunManArtView {
    
    enum Element: String, CaseIterable, Identifiable {
        case sweetBeans
        case face
        case eyeConcealmentRight
        case eyeConcealmentLeft
        case mouthConcealmentRight
        case mouthConcealmentLeft
        case eyebrowRight
        case eyebrowLeft
        case eyebrowConcealmentRight
        case eyebrowConcealmentLeft
        case eyeRight
        case eyeLeft
        case mouth
        case centerNose
        case eyeMinusRight
        case eyeMinusLeft
        
        var id: String { rawValue }
        
        var value: SymbolArtElement {
            switch self {
            case .sweetBeans:
                SymbolArtElement(
                    symbol: "􀀁",
                    name: "circle.fill",
                    initialPosition: .third(.first),
                    primaryColor: .darkBrown,
                    widthRatio: 0.7,
                    heightRatio: 0.7,
                    symbolCountToWaitFor: 0
                )
            case .face:
                SymbolArtElement(
                    symbol: "􁺱",
                    name: "ev.plug.ac.gb.t.fill",
                    initialPrimaryColor: .systemBackground,
                    initialPosition: .third(.second),
                    primaryColor: .orange,
                    secondaryColor: .paleOrange,
                    widthRatio: 0.8,
                    heightRatio: 0.7,
                    verticalOffsetRatio: 0.05,
                    symbolCountToWaitFor: 1
                )
            case .eyeConcealmentRight:
                SymbolArtElement(
                    symbol: "􀀁",
                    name: "circle.fill",
                    initialPosition: .third(.first),
                    primaryColor: .paleOrange,
                    widthRatio: 0.15,
                    heightRatio: 0.15,
                    horizontalOffsetRatio: 0.1,
                    verticalOffsetRatio: -0.14,
                    symbolCountToWaitFor: 2
                )
            case .eyeConcealmentLeft:
                SymbolArtElement(
                    symbol: "􀀁",
                    name: "circle.fill",
                    initialPosition: .third(.first),
                    primaryColor: .paleOrange,
                    widthRatio: 0.15,
                    heightRatio: 0.15,
                    horizontalOffsetRatio: -0.1,
                    verticalOffsetRatio: -0.14,
                    symbolCountToWaitFor: 2
                )
            case .mouthConcealmentRight:
                SymbolArtElement(
                    symbol: "􀀁",
                    name: "circle.fill",
                    initialPosition: .third(.first),
                    primaryColor: .paleOrange,
                    widthRatio: 0.175,
                    heightRatio: 0.175,
                    horizontalOffsetRatio: 0.1,
                    verticalOffsetRatio: 0.19,
                    symbolCountToWaitFor: 2
                )
            case .mouthConcealmentLeft:
                SymbolArtElement(
                    symbol: "􀀁",
                    name: "circle.fill",
                    initialPosition: .third(.first),
                    primaryColor: .paleOrange,
                    widthRatio: 0.175,
                    heightRatio: 0.175,
                    horizontalOffsetRatio: -0.11,
                    verticalOffsetRatio: 0.19,
                    symbolCountToWaitFor: 2
                )
            case .eyebrowRight:
                SymbolArtElement(
                    symbol: "􀙱",
                    name: "wave.3.left",
                    initialPosition: .third(.third),
                    primaryColor: .black,
                    widthRatio: 0.1,
                    heightRatio: 0.2,
                    rotationDegrees: 115,
                    horizontalOffsetRatio: 0.12,
                    verticalOffsetRatio: -0.19,
                    symbolCountToWaitFor: 3
                )
                
            case .eyebrowLeft:
                SymbolArtElement(
                    symbol: "􀙱",
                    name: "wave.3.left",
                    initialPosition: .third(.third),
                    primaryColor: .black,
                    widthRatio: 0.1,
                    heightRatio: 0.2,
                    rotationDegrees: 65,
                    horizontalOffsetRatio: -0.12,
                    verticalOffsetRatio: -0.19,
                    symbolCountToWaitFor: 3
                )
            case .eyebrowConcealmentRight:
                SymbolArtElement(
                    symbol: "􀀁",
                    name: "circle.fill",
                    initialPosition: .third(.first),
                    primaryColor: .paleOrange,
                    widthRatio: 0.18,
                    heightRatio: 0.1,
                    rotationDegrees: 30,
                    horizontalOffsetRatio: 0.12,
                    verticalOffsetRatio: -0.17,
                    symbolCountToWaitFor: 4
                )
            case .eyebrowConcealmentLeft:
                SymbolArtElement(
                    symbol: "􀀁",
                    name: "circle.fill",
                    initialPosition: .third(.first),
                    primaryColor: .paleOrange,
                    widthRatio: 0.18,
                    heightRatio: 0.1,
                    rotationDegrees: -30,
                    horizontalOffsetRatio: -0.12,
                    verticalOffsetRatio: -0.17,
                    symbolCountToWaitFor: 4
                )
            case .eyeRight:
                SymbolArtElement(
                    symbol: "􀀁",
                    name: "circle.fill",
                    initialPosition: .third(.first),
                    primaryColor: .black,
                    widthRatio: 0.05,
                    heightRatio: 0.1,
                    horizontalOffsetRatio: 0.12,
                    verticalOffsetRatio: -0.15,
                    symbolCountToWaitFor: 5
                )
            case .eyeLeft:
                SymbolArtElement(
                    symbol: "􀀁",
                    name: "circle.fill",
                    initialPosition: .third(.first),
                    primaryColor: .black,
                    widthRatio: 0.05,
                    heightRatio: 0.1,
                    horizontalOffsetRatio: -0.12,
                    verticalOffsetRatio: -0.15,
                    symbolCountToWaitFor: 5
                )
            case .mouth:
                SymbolArtElement(
                    symbol: "􁕋",
                    name: "stairs",
                    initialPosition: .third(.fourth),
                    primaryColor: .black,
                    widthRatio: 0.3,
                    heightRatio: 0.2,
                    rotationDegrees: 30,
                    verticalOffsetRatio: 0.23,
                    symbolCountToWaitFor: 6
                )
            case .centerNose:
                SymbolArtElement(
                    symbol: "􀜫",
                    name: "stop.circle.fill",
                    initialPrimaryColor: .white,
                    initialPosition: .third(.fifth),
                    primaryColor: .white,
                    secondaryColor: .red,
                    widthRatio: 0.2,
                    heightRatio: 0.2,
                    verticalOffsetRatio: 0.01,
                    symbolCountToWaitFor: 7
                )
            case .eyeMinusRight:
                SymbolArtElement(
                    symbol: "􀅽",
                    name: "minus",
                    initialPosition: .third(.sixth),
                    primaryColor: .black,
                    widthRatio: 0.07,
                    heightRatio: 0.01,
                    horizontalOffsetRatio: 0.12,
                    verticalOffsetRatio: -0.15,
                    symbolCountToWaitFor: 8
                )
            case .eyeMinusLeft:
                SymbolArtElement(
                    symbol: "􀅽",
                    name: "minus",
                    initialPosition: .third(.sixth),
                    primaryColor: .black,
                    widthRatio: 0.07,
                    heightRatio: 0.01,
                    horizontalOffsetRatio: -0.12,
                    verticalOffsetRatio: -0.15,
                    symbolCountToWaitFor: 8
                )
            }
        }
    }
}

#Preview {
    NavigationStack {
        SweetBeanBunManArtView()
            .environment(ArtWorkModel.preview)
    }
}

#Preview {
    SweetBeanBunManArtView.CoverArt()
        .environment(ArtWorkModel.preview)
}
