//
//  Font.Weight+.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

extension Font.Weight {
    
    var animatableValue: CGFloat {
        switch self {
        case .ultraLight:
            return 0
        case .thin:
            return 1
        case .light:
            return 2
        case .regular:
            return 3
        case .medium:
            return 4
        case .semibold:
            return 5
        case .bold:
            return 6
        case .heavy:
            return 7
        case .black:
            return 8
        default:
            fatalError("\(self) is not defined")
        }
    }
    
    init(animatableValue value: CGFloat) {
        switch value {
        case 0..<1:
            self = .ultraLight
        case 1..<2:
            self = .thin
        case 2..<3:
            self = .light
        case 3..<4:
            self = .regular
        case 4..<5:
            self = .medium
        case 5..<6:
            self = .semibold
        case 6..<7:
            self = .bold
        case 7..<8:
            self = .heavy
        case 8:
            self = .black
        default:
            print("💣: \(value) is not defined")
            self = .regular
        }
    }
}
