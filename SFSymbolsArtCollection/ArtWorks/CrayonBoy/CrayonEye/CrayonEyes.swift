//
//  CrayonEyes.swift
//  CrayonShinchan
//
//  Created by 平岡修 on 2022/02/23.
//

import SwiftUI

struct CrayonEyes: View {
    
    let baseLength: CGFloat
    
    var body: some View {
        HStack(spacing: 0) {
            Spacer()
            
            CrayonEye(baseLength: baseLength)
            
            CrayonEye(baseLength: baseLength)
            
            Spacer()
        }
        .rotationEffect(.radians(0.1))
    }
}

struct CrayonEyes_Previews: PreviewProvider {
    static var previews: some View {
        CrayonEyes(baseLength: 400)
    }
}
