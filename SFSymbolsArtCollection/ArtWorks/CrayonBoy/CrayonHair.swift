//
//  CrayonHair.swift
//  CrayonShinchan
//
//  Created by 平岡修 on 2022/02/23.
//

import SwiftUI

struct CrayonHair: View {
    
    let baseLength: CGFloat
    
    var body: some View {
        ZStack {
            Image(symbol: .circleFill)
                .arrangeShape(width: baseLength * 0.375,
                              height: baseLength * 0.25)
            
            Image(symbol: .rectangleFill)
                .arrangeShape(color: .paleOrange,
                              width: baseLength * 0.375,
                              height: baseLength * 0.25,
                              offsetY: baseLength * 0.075)
        }
    }
}

struct CrayonHair_Previews: PreviewProvider {
    static var previews: some View {
        CrayonHair(baseLength: 400)
    }
}
