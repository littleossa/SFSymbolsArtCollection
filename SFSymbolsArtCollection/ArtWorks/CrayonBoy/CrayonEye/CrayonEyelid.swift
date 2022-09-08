//
//  CrayonEyelid.swift
//  CrayonShinchan
//
//  Created by 平岡修 on 2022/02/23.
//

import SwiftUI

struct CrayonEyelid: View {
    
    let baseLength: CGFloat
    
    var body: some View {
        
        ZStack {
            Image(symbol: .circle)
                .arrangeShape(fontSize: baseLength * 0.15,
                              fontWeight: .ultraLight)
            
            Image(symbol: .rectangleFill)
                .arrangeShape(color: .paleOrange,
                              fontSize: baseLength * 0.15,
                              fontWeight: .ultraLight,
                              offsetY: baseLength * 0.05)
        }
    }
}

struct CrayonEyelid_Previews: PreviewProvider {
    static var previews: some View {
        CrayonEyelid(baseLength: 400)
    }
}
