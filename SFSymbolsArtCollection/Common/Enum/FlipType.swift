//
//  FlipType.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/07/29.
//

import CoreGraphics

enum FlipType {
    case none
    case horizontal
    case vertical
    case horizontalAndVertical
    
    var axis: (x: CGFloat, y: CGFloat, z: CGFloat) {
        switch self {
        case .none:
            return (x: 0, y: 0, z: 0)
        case .horizontal:
            return (x: 0, y: 1, z: 0)
        case .vertical:
            return (x: 1, y: 0, z: 0)
        case .horizontalAndVertical:
            return (x: 0, y: 0, z: 1)
        }
    }
}
