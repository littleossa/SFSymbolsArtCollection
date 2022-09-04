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
        let height = self.size.height
        
        let baseLength = width < height ? width : height
        return baseLength
    }
}
