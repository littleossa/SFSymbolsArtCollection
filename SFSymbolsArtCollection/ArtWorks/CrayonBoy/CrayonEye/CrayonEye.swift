//
//  CrayonEye.swift
//  CrayonShinchan
//
//  Created by 平岡修 on 2022/02/23.
//

import SwiftUI

struct CrayonEye: View {
    
    let baseLength: CGFloat
    
    var body: some View {
        
        ZStack {
            CrayonEyebrow(baseLength: baseLength)
                .offset(x: 0,
                        y: baseLength * -0.125)
            
            CrayonEyelid(baseLength: baseLength)
            
            CrayonEyeBall(baseLength: baseLength)
                .offset(x: baseLength * -0.0075,
                        y: baseLength * 0.025)
        }
    }
}

struct CrayonEye_Previews: PreviewProvider {
    static var previews: some View {
        CrayonEye(baseLength: 400)
    }
}
