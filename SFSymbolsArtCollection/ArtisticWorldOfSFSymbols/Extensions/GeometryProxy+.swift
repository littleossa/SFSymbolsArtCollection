//
//  GeometryProxy+Extensions.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

extension GeometryProxy {
    
    var baseLength: CGFloat {
        
        let width = self.size.width
        let height = self.size.height
        
        let baseLength = width < height ? width : height
        return baseLength
    }
    
    var localCenter: CGPoint {
        return CGPoint(x: self.frame(in: .local).midX,
                       y: self.frame(in: .local).midY)
    }
}
