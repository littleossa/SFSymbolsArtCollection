//
//  iOSDCJapan2022SymbolType.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/09/08.
//

import SwiftUI

enum iOSDCJapan2022SymbolType: String, Identifiable, CaseIterable {
    case green
    case orange
    case blue
    case punk
    
    var id: String { self.rawValue }
    
    var configuration: SymbolAppearance {
        switch self {
        case .green:
            return SymbolAppearance(color: .green,
                                sizeMagnification: 0.25,
                                offsetXMagnification: 0.1,
                                    offsetYMagnification: -0.15)
            
        case .orange:
            return SymbolAppearance(color: .orange,
                                sizeMagnification: 0.2,
                                offsetXMagnification: -0.07,
                                offsetYMagnification: 0.17)
        case .blue:
            return SymbolAppearance(color: .blue,
                                sizeMagnification: 0.16,
                                    offsetXMagnification: -0.22,
                                    offsetYMagnification: -0.12)
            
        case .punk:
            return SymbolAppearance(color: .pink,
                                sizeMagnification: 0.12,
                                offsetXMagnification: 0.2,
                                    offsetYMagnification: 0.15)
        }
    }
    
    struct SymbolAppearance {
        let color: Color
        let sizeMagnification: CGFloat
        let offsetXMagnification: CGFloat
        let offsetYMagnification: CGFloat
    }
}
