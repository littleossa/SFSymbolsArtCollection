//
//  CrayonEyebrow.swift
//  CrayonShinchan
//
//  Created by 平岡修 on 2022/02/23.
//

import SwiftUI

struct CrayonEyebrow: View {
    
    let baseLength: CGFloat
    
    var body: some View {
        
        Image(symbol: .control)
                .arrangeShape(fontSize: baseLength * 0.2,
                          fontWeight: .black)
    }
}

struct CrayonEyebrow_Previews: PreviewProvider {
    static var previews: some View {
        CrayonEyebrow(baseLength: 400)
    }
}
