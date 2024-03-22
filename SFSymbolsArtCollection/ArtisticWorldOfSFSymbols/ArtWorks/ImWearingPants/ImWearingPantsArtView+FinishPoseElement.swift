//
//  ImWearingPantsArtView+FinishPoseElement.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

extension ImWearingPantsArtView {
    
    enum FinishPoseElement: String, CaseIterable, Identifiable {
        case body
        case chestShadowRight
        case chestShadowLeft
        case handConcealmentRight
        case handConcealmentLeft
        case neck
        case neckShapingConcealmentRight
        case neckShapingConcealmentLeft
        case chestRight
        case chestLeft
        case armRight
        case armLeft
        case pants
        case pantsHoleConcealment
        case pantsPatternFirst
        case pantsPatternSecond
        case pantsPatternThird
        case pantsPatternFourth
        case pantsConcealmentRight
        case pantsConcealmentLeft
        case abdomen
        case bellyButton
        case nippleRight
        case nippleLeft
        
        var id: String { rawValue }
        
        var value: SymbolArtElement {
            switch self {
            case .body:
                SymbolArtElement(
                    symbol: "􁗅",
                    name: "figure.arms.open",
                    initialPosition: .none,
                    primaryColor: .yellow,
                    widthRatio: 0.6,
                    heightRatio: 1,
                    symbolCountToWaitFor: 0
                )
            case .chestShadowRight:
                SymbolArtElement(
                    symbol: "􀆹",
                    name: "moon",
                    initialPosition: .none,
                    primaryColor: .black.opacity(0.6),
                    fontWeight: .ultraLight,
                    widthRatio: 0.06,
                    heightRatio: 0.015,
                    rotationDegrees: -10,
                    horizontalOffsetRatio: -0.09,
                    verticalOffsetRatio: -0.125,
                    symbolCountToWaitFor: 0
                )
            case .chestShadowLeft:
                SymbolArtElement(
                    symbol: "􀆹",
                    name: "moon",
                    initialPosition: .none,
                    primaryColor: .black.opacity(0.6),
                    fontWeight: .ultraLight,
                    widthRatio: 0.06,
                    heightRatio: 0.015,
                    rotationDegrees: -10,
                    flip: .horizontal,
                    horizontalOffsetRatio: 0.085,
                    verticalOffsetRatio: -0.125,
                    symbolCountToWaitFor: 0
                )
            case .handConcealmentRight:
                SymbolArtElement(
                    symbol: "􀏄",
                    name: "rectangle.fill",
                    initialPosition: .none,
                    primaryColor: .systemBackground,
                    fontWeight: .black,
                    widthRatio: 0.3,
                    heightRatio: 0.4,
                    horizontalOffsetRatio: -0.25,
                    verticalOffsetRatio: -0.1,
                    symbolCountToWaitFor: 0
                )
            case .handConcealmentLeft:
                SymbolArtElement(
                    symbol: "􀏄",
                    name: "rectangle.fill",
                    initialPosition: .none,
                    primaryColor: .systemBackground,
                    fontWeight: .black,
                    widthRatio: 0.3,
                    heightRatio: 0.4,
                    horizontalOffsetRatio: 0.25,
                    verticalOffsetRatio: -0.1,
                    symbolCountToWaitFor: 0
                )
            case .neck:
                SymbolArtElement(
                    symbol: "􀊡",
                    name: "speaker.fill",
                    initialPosition: .none,
                    primaryColor: .yellow,
                    widthRatio: 0.2,
                    heightRatio: 0.38,
                    rotationDegrees: 90,
                    horizontalOffsetRatio: -0.005,
                    verticalOffsetRatio: -0.27,
                    symbolCountToWaitFor: 0
                )
            case .neckShapingConcealmentRight:
                SymbolArtElement(
                    symbol: "􀂓",
                    name: "square.fill",
                    initialPosition: .none,
                    primaryColor: .systemBackground,
                    widthRatio: 0.2,
                    heightRatio: 0.2,
                    rotationDegrees: 90,
                    horizontalOffsetRatio: 0.14,
                    verticalOffsetRatio: -0.385,
                    symbolCountToWaitFor: 0
                )
            case .neckShapingConcealmentLeft:
                SymbolArtElement(
                    symbol: "􀂓",
                    name: "square.fill",
                    initialPosition: .none,
                    primaryColor: .systemBackground,
                    widthRatio: 0.2,
                    heightRatio: 0.2,
                    rotationDegrees: 90,
                    horizontalOffsetRatio: -0.14,
                    verticalOffsetRatio: -0.385,
                    symbolCountToWaitFor: 0
                )
            case .chestRight:
                SymbolArtElement(
                    symbol: "􀆺",
                    name: "moon.fill",
                    initialPosition: .none,
                    primaryColor: .yellow,
                    widthRatio: 0.06,
                    heightRatio: 0.04,
                    rotationDegrees: -10,
                    horizontalOffsetRatio: -0.09,
                    verticalOffsetRatio: -0.138,
                    symbolCountToWaitFor: 0
                )
            case .chestLeft:
                SymbolArtElement(
                    symbol: "􀆺",
                    name: "moon.fill",
                    initialPosition: .none,
                    primaryColor: .yellow,
                    widthRatio: 0.06,
                    heightRatio: 0.04,
                    rotationDegrees: -10,
                    flip: .horizontal,
                    horizontalOffsetRatio: 0.085,
                    verticalOffsetRatio: -0.138,
                    symbolCountToWaitFor: 0
                )
            case .armRight:
                SymbolArtElement(
                    symbol: "􀆊",
                    name: "chevron.right",
                    initialPosition: .none,
                    primaryColor: .yellow,
                    fontWeight: .black,
                    widthRatio: 0.2,
                    heightRatio: 0.3,
                    horizontalOffsetRatio: 0.2,
                    verticalOffsetRatio: -0.08,
                    symbolCountToWaitFor: 0
                )
            case .armLeft:
                SymbolArtElement(
                    symbol: "􀆉",
                    name: "chevron.left",
                    initialPosition: .none,
                    primaryColor: .yellow,
                    fontWeight: .black,
                    widthRatio: 0.2,
                    heightRatio: 0.3,
                    horizontalOffsetRatio: -0.2,
                    verticalOffsetRatio: -0.08,
                    symbolCountToWaitFor: 0
                )
                // UnderLayer
            case .pants:
                SymbolArtElement(
                    symbol: "􁉨",
                    name: "parkingsign.steeringwheel",
                    initialPosition: .third(.first),
                    primaryColor: .palePink,
                    fontWeight: .ultraLight,
                    widthRatio: 0.35,
                    heightRatio: 0.2,
                    horizontalOffsetRatio: -0.07,
                    verticalOffsetRatio: 0.03,
                    symbolCountToWaitFor: 16
                )
            case .pantsHoleConcealment:
                SymbolArtElement(
                    symbol: "􀀁",
                    name: "circle.fill",
                    initialPosition: .none,
                    primaryColor: .palePink,
                    widthRatio: 0.06,
                    heightRatio: 0.06,
                    horizontalOffsetRatio: -0.01,
                    verticalOffsetRatio: 0.04,
                    symbolCountToWaitFor: 0
                )
            case .pantsPatternFirst:
                SymbolArtElement(
                    symbol: "􁁌",
                    name: "fan.fill",
                    initialPosition: .none,
                    primaryColor: .white,
                    widthRatio: 0.04,
                    heightRatio: 0.04,
                    horizontalOffsetRatio: -0.01,
                    verticalOffsetRatio: 0.04,
                    symbolCountToWaitFor: 0
                )
            case .pantsPatternSecond:
                SymbolArtElement(
                    symbol: "􁁌",
                    name: "fan.fill",
                    initialPosition: .none,
                    primaryColor: .white,
                    widthRatio: 0.04,
                    heightRatio: 0.04,
                    horizontalOffsetRatio: -0.08,
                    verticalOffsetRatio: 0.02,
                    symbolCountToWaitFor: 0
                )
            case .pantsPatternThird:
                SymbolArtElement(
                    symbol: "􁁌",
                    name: "fan.fill",
                    initialPosition: .none,
                    primaryColor: .white,
                    widthRatio: 0.04,
                    heightRatio: 0.04,
                    horizontalOffsetRatio: 0.08,
                    verticalOffsetRatio: 0.02,
                    symbolCountToWaitFor: 0
                )
            case .pantsPatternFourth:
                SymbolArtElement(
                    symbol: "􁁌",
                    name: "fan.fill",
                    initialPosition: .none,
                    primaryColor: .white,
                    widthRatio: 0.04,
                    heightRatio: 0.04,
                    verticalOffsetRatio: 0.099,
                    symbolCountToWaitFor: 0
                )
            case .pantsConcealmentRight:
                SymbolArtElement(
                    symbol: "􀲟",
                    name: "oval.fill",
                    initialPosition: .none,
                    primaryColor: .yellow,
                    widthRatio: 0.11,
                    heightRatio: 0.03,
                    rotationDegrees: 45,
                    horizontalOffsetRatio: -0.07,
                    verticalOffsetRatio: 0.09,
                    symbolCountToWaitFor: 0
                )
            case .pantsConcealmentLeft:
                SymbolArtElement(
                    symbol: "􀲟",
                    name: "oval.fill",
                    initialPosition: .none,
                    primaryColor: .yellow,
                    widthRatio: 0.11,
                    heightRatio: 0.03,
                    rotationDegrees: -47,
                    horizontalOffsetRatio: 0.06,
                    verticalOffsetRatio: 0.089,
                    symbolCountToWaitFor: 0
                )
            case .abdomen:
                SymbolArtElement(
                    symbol: "􁎘",
                    name: "visionpro.fill",
                    initialPosition: .none,
                    primaryColor: .yellow,
                    fontWeight: .ultraLight,
                    widthRatio: 0.25,
                    heightRatio: 0.15,
                    rotationDegrees: 180,
                    verticalOffsetRatio: -0.045,
                    symbolCountToWaitFor: 0
                )
            case .bellyButton:
                SymbolArtElement(
                    symbol: "􀥤",
                    name: "poweron",
                    initialPosition: .none,
                    primaryColor: .black,
                    fontWeight: .ultraLight,
                    widthRatio: 0.02,
                    heightRatio: 0.002,
                    rotationDegrees: 180,
                    symbolCountToWaitFor: 0
                )
            case .nippleRight:
                SymbolArtElement(
                    symbol: "􀕩",
                    name: "smallcircle.filled.circle.fill",
                    initialPosition: .none,
                    primaryColor: .yellow,
                    secondaryColor: .brown,
                    fontWeight: .ultraLight,
                    widthRatio: 0.02,
                    heightRatio: 0.01,
                    rotationDegrees: 15,
                    horizontalOffsetRatio: 0.09,
                    verticalOffsetRatio: -0.138,
                    symbolCountToWaitFor: 0
                )
            case .nippleLeft:
                SymbolArtElement(
                    symbol: "􀕩",
                    name: "smallcircle.filled.circle.fill",
                    initialPosition: .none,
                    primaryColor: .yellow,
                    secondaryColor: .brown,
                    fontWeight: .ultraLight,
                    widthRatio: 0.02,
                    heightRatio: 0.01,
                    rotationDegrees: -15,
                    horizontalOffsetRatio: -0.09,
                    verticalOffsetRatio: -0.14,
                    symbolCountToWaitFor: 0
                )
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
    ImWearingPantsArtView.CoverArt()
        .environment(ArtWorkModel.preview)
}
