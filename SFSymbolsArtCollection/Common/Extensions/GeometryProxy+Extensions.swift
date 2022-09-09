//
//  GeometryProxy+Extensions.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/09/04.
//

import SwiftUI

extension GeometryProxy {
    
    var baseLength: CGFloat {
        
        let width = self.size.width
        let halfHeight = self.size.height / 2
        
        let baseLength = width < halfHeight ? width : halfHeight
        return baseLength
    }
    
    var localCenter: CGPoint {
        return CGPoint(x: self.frame(in: .local).midX,
                       y: self.frame(in: .local).midY)
    }
}
