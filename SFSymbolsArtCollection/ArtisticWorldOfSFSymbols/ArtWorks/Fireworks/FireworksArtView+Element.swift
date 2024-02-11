//
//  FireworksArtView+Element.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

extension FireworksArtView {
    
    enum Element: String, CaseIterable, Identifiable {
        case moon
        case rocketFireworkYellow
        case rocketFireworkYellowConcealmentRight
        case rocketFireworkYellowConcealmentLeft
        case rocketFireworkYellowTop
        case rocketFireworkWhite
        case rocketFireworkWhiteConcealmentRight
        case rocketFireworkWhiteConcealmentLeft
        case rocketFireworkWhiteTop
        case litBuildingLarge
        case litBuildingSmall
        case buildingLarge
        case buildingSmall
        case personRight
        case personLeft
        case personCenterRight
        case personCenterLeft
        case smallFireworkPink
        case smallFireworkYellow
        case smallFireworkGreen
        case mediumFirework
        case largeHorizontalFireworkLeft
        case largeVerticalFireworkLeft
        case largeDotFireworkLeft
        case largeHorizontalFireworkRight
        case largeVerticalFireworkRight
        case largeDotFireworkRight
        
        var id: String { rawValue }
        
        var value: SymbolArtElement {
            switch self {
            case .moon:
                SymbolArtElement(
                    symbol: "􀇁",
                    name: "moon.stars.fill",
                    initialPosition: .none,
                    primaryColor: .yellow.opacity(0.7),
                    secondaryColor: .awesomeYellow.opacity(0.6),
                    widthRatio: 0.12,
                    heightRatio: 0.12,
                    horizontalOffsetRatio: 0.4,
                    verticalOffsetRatio: -0.51,
                    symbolCountToWaitFor: 0
                )
                
            case .rocketFireworkYellow:
                SymbolArtElement(
                    symbol: "􁎄",
                    name: "water.waves",
                    initialPosition: .none,
                    primaryColor: .yellow,
                    fontWeight: .ultraLight,
                    widthRatio: 0.57,
                    heightRatio: 0.2,
                    rotationDegrees: 90,
                    horizontalOffsetRatio: -0.01,
                    verticalOffsetRatio: 0.305,
                    symbolCountToWaitFor: 0
                )
                
            case .rocketFireworkYellowConcealmentRight:
                SymbolArtElement(
                    symbol: "􀏄",
                    name: "rectangle.fill",
                    initialPosition: .none,
                    primaryColor: .midnightNavy,
                    widthRatio: 0.1,
                    heightRatio: 0.57,
                    horizontalOffsetRatio: -0.1,
                    verticalOffsetRatio: 0.3,
                    symbolCountToWaitFor: 0
                )
                
            case .rocketFireworkYellowConcealmentLeft:
                SymbolArtElement(
                    symbol: "􀏄",
                    name: "rectangle.fill",
                    initialPosition: .none,
                    primaryColor: .midnightNavy,
                    widthRatio: 0.1,
                    heightRatio: 0.57,
                    horizontalOffsetRatio: 0.08,
                    verticalOffsetRatio: 0.3,
                    symbolCountToWaitFor: 0
                )
                
            case .rocketFireworkYellowTop:
                SymbolArtElement(
                    symbol: "􀀁",
                    name: "circle.fill",
                    initialPosition: .none,
                    primaryColor: .yellow,
                    widthRatio: 0.04,
                    heightRatio: 0.045,
                    horizontalOffsetRatio: -0.02,
                    verticalOffsetRatio: 0.03,
                    symbolCountToWaitFor: 0
                )
                
            case .rocketFireworkWhite:
                SymbolArtElement(
                    symbol: "􁎄",
                    name: "water.waves",
                    initialPosition: .none,
                    primaryColor: .white,
                    fontWeight: .ultraLight,
                    widthRatio: 0.43,
                    heightRatio: 0.2,
                    rotationDegrees: 90,
                    horizontalOffsetRatio: -0.18,
                    verticalOffsetRatio: 0.37,
                    symbolCountToWaitFor: 0
                )
                
            case .rocketFireworkWhiteConcealmentRight:
                SymbolArtElement(
                    symbol: "􀏄",
                    name: "rectangle.fill",
                    initialPosition: .none,
                    primaryColor: .midnightNavy,
                    widthRatio: 0.08,
                    heightRatio: 0.46,
                    horizontalOffsetRatio: -0.09,
                    verticalOffsetRatio: 0.355,
                    symbolCountToWaitFor: 0
                )
                
            case .rocketFireworkWhiteConcealmentLeft:
                SymbolArtElement(
                    symbol: "􀏄",
                    name: "rectangle.fill",
                    initialPosition: .none,
                    primaryColor: .midnightNavy,
                    widthRatio: 0.08,
                    heightRatio: 0.46,
                    horizontalOffsetRatio: -0.26,
                    verticalOffsetRatio: 0.355,
                    symbolCountToWaitFor: 0
                )
                
            case .rocketFireworkWhiteTop:
                SymbolArtElement(
                    symbol: "􀀁",
                    name: "circle.fill",
                    initialPosition: .none,
                    primaryColor: .white,
                    widthRatio: 0.04,
                    heightRatio: 0.045,
                    horizontalOffsetRatio: -0.19,
                    verticalOffsetRatio: 0.2,
                    symbolCountToWaitFor: 0
                )
                
            case .litBuildingLarge:
                SymbolArtElement(
                    symbol: "􀏄",
                    name: "rectangle.fill",
                    initialPosition: .third(.third),
                    primaryColor: .yellow,
                    widthRatio: 0.18,
                    heightRatio: 0.3,
                    horizontalOffsetRatio: 0.07,
                    verticalOffsetRatio: 0.434,
                    symbolCountToWaitFor: 0
                )
                
            case .litBuildingSmall:
                SymbolArtElement(
                    symbol: "􀏄",
                    name: "rectangle.fill",
                    initialPosition: .third(.third),
                    primaryColor: .yellow,
                    widthRatio: 0.1,
                    heightRatio: 0.17,
                    horizontalOffsetRatio: -0.09,
                    verticalOffsetRatio: 0.497,
                    symbolCountToWaitFor: 0
                )
                
            case .buildingLarge:
                SymbolArtElement(
                    symbol: "􀮆",
                    name: "building.fill",
                    initialPosition: .third(.second),
                    primaryColor: .lightGray,
                    widthRatio: 0.2,
                    heightRatio: 0.3,
                    horizontalOffsetRatio: 0.07,
                    verticalOffsetRatio: 0.434,
                    symbolCountToWaitFor: 0
                )
                
            case .buildingSmall:
                SymbolArtElement(
                    symbol: "􀮆",
                    name: "building.fill",
                    initialPosition: .third(.second),
                    primaryColor: .lightGray,
                    widthRatio: 0.12,
                    heightRatio: 0.17,
                    horizontalOffsetRatio: -0.09,
                    verticalOffsetRatio: 0.497,
                    symbolCountToWaitFor: 0
                )
                
            case .personRight:
                SymbolArtElement(
                    symbol: "􀻸",
                    name: "person.3.sequence.fill",
                    initialPosition: .none,
                    primaryColor: .black,
                    secondaryColor: .black,
                    widthRatio: 0.2,
                    heightRatio: 0.1,
                    flip: .horizontal,
                    horizontalOffsetRatio: 0.34,
                    verticalOffsetRatio: 0.538,
                    symbolCountToWaitFor: 0
                )
                
            case .personLeft:
                SymbolArtElement(
                    symbol: "􀻸",
                    name: "person.3.sequence.fill",
                    initialPosition: .none,
                    primaryColor: .black,
                    secondaryColor: .black,
                    widthRatio: 0.2,
                    heightRatio: 0.1,
                    horizontalOffsetRatio: -0.34,
                    verticalOffsetRatio: 0.538,
                    symbolCountToWaitFor: 0
                )
            case .personCenterRight:
                SymbolArtElement(
                    symbol: "􀝋",
                    name: "person.3.fill",
                    initialPosition: .none,
                    primaryColor: .black,
                    secondaryColor: .black,
                    widthRatio: 0.2,
                    heightRatio: 0.1,
                    horizontalOffsetRatio: 0.12,
                    verticalOffsetRatio: 0.538,
                    symbolCountToWaitFor: 0
                )
            case .personCenterLeft:
                SymbolArtElement(
                    symbol: "􀝋",
                    name: "person.3.fill",
                    initialPosition: .none,
                    primaryColor: .black,
                    secondaryColor: .black,
                    widthRatio: 0.2,
                    heightRatio: 0.1,
                    horizontalOffsetRatio: -0.12,
                    verticalOffsetRatio: 0.538,
                    symbolCountToWaitFor: 0
                )
                
            case .smallFireworkPink:
                SymbolArtElement(
                    symbol: "􀇲",
                    name: "timelapse",
                    initialPosition: .none,
                    primaryColor: .pink,
                    widthRatio: 0.125,
                    heightRatio: 0.125,
                    horizontalOffsetRatio: -0.225,
                    verticalOffsetRatio: 0.125,
                    symbolCountToWaitFor: 0
                )
            case .smallFireworkYellow:
                SymbolArtElement(
                    symbol: "􀇲",
                    name: "timelapse",
                    initialPosition: .none,
                    primaryColor: .yellow,
                    widthRatio: 0.125,
                    heightRatio: 0.125,
                    horizontalOffsetRatio: -0.075,
                    verticalOffsetRatio: 0.25,
                    symbolCountToWaitFor: 0
                )
            case .smallFireworkGreen:
                SymbolArtElement(
                    symbol: "􀇲",
                    name: "timelapse",
                    initialPosition: .none,
                    primaryColor: .green,
                    widthRatio: 0.125,
                    heightRatio: 0.125,
                    horizontalOffsetRatio: 0.34,
                    verticalOffsetRatio: 0.18,
                    symbolCountToWaitFor: 0
                )
            case .mediumFirework:
                SymbolArtElement(
                    symbol: "􂁞",
                    name: "fireworks",
                    initialPosition: .none,
                    primaryColor: .yellow,
                    secondaryColor: .red,
                    widthRatio: 0.24,
                    heightRatio: 0.24,
                    horizontalOffsetRatio: 0.14,
                    verticalOffsetRatio: 0.07,
                    symbolCountToWaitFor: 0
                )
            case .largeHorizontalFireworkLeft:
                SymbolArtElement(
                    symbol: "􀌙",
                    name: "dot.radiowaves.left.and.right",
                    initialPosition: .none,
                    primaryColor: .white,
                    secondaryColor: .red,
                    fontWeight: .black,
                    widthRatio: 0.347,
                    heightRatio: 0.235,
                    horizontalOffsetRatio: -0.17,
                    verticalOffsetRatio: -0.18,
                    symbolCountToWaitFor: 0
                )
            case .largeVerticalFireworkLeft:
                SymbolArtElement(
                    symbol: "􀌙",
                    name: "dot.radiowaves.left.and.right",
                    initialPosition: .none,
                    primaryColor: .white,
                    secondaryColor: .red,
                    fontWeight: .black,
                    widthRatio: 0.347,
                    heightRatio: 0.235,
                    rotationDegrees: 90,
                    horizontalOffsetRatio: -0.17,
                    verticalOffsetRatio: -0.18,
                    symbolCountToWaitFor: 0
                )
                
            case .largeDotFireworkLeft:
                SymbolArtElement(
                    symbol: "􁅃",
                    name: "circle.dotted",
                    initialPosition: .none,
                    primaryColor: .white,
                    fontWeight: .ultraLight,
                    widthRatio: 0.42,
                    heightRatio: 0.42,
                    horizontalOffsetRatio: -0.17,
                    verticalOffsetRatio: -0.18,
                    symbolCountToWaitFor: 0
                )
                
            case .largeHorizontalFireworkRight:
                SymbolArtElement(
                    symbol: "􀌙",
                    name: "dot.radiowaves.left.and.right",
                    initialPosition: .none,
                    primaryColor: .yellow,
                    secondaryColor: .white,
                    fontWeight: .black,
                    widthRatio: 0.347,
                    heightRatio: 0.235,
                    horizontalOffsetRatio: 0.105,
                    verticalOffsetRatio: -0.34,
                    symbolCountToWaitFor: 0
                )
            case .largeVerticalFireworkRight:
                SymbolArtElement(
                    symbol: "􀌙",
                    name: "dot.radiowaves.left.and.right",
                    initialPosition: .none,
                    primaryColor: .yellow,
                    secondaryColor: .white,
                    fontWeight: .black,
                    widthRatio: 0.347,
                    heightRatio: 0.235,
                    rotationDegrees: 90,
                    horizontalOffsetRatio: 0.1,
                    verticalOffsetRatio: -0.34,
                    symbolCountToWaitFor: 0
                )
            case .largeDotFireworkRight:
                SymbolArtElement(
                    symbol: "􁅃",
                    name: "circle.dotted",
                    initialPosition: .none,
                    primaryColor: .yellow,
                    fontWeight: .ultraLight,
                    widthRatio: 0.42,
                    heightRatio: 0.42,
                    horizontalOffsetRatio: 0.1,
                    verticalOffsetRatio: -0.34,
                    symbolCountToWaitFor: 0
                )
            }
        }
    }
}

#Preview {
    NavigationStack {
        FireworksArtView()
            .environment(ArtWorkModel.preview)
    }
}

#Preview {
    Color.midnightNavy
        .overlay {
            FireworksArtView.CoverArt()
                .environment(ArtWorkModel.preview)
        }
}
