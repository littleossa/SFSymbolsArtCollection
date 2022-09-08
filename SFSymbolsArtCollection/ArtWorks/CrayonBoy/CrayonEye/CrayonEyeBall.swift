//
//  CrayonEyeBall.swift
//  CrayonShinchan
//
//  Created by 平岡修 on 2022/02/23.
//

import SwiftUI

struct CrayonEyeBall: View {
    
    let baseLength: CGFloat
    
    var body: some View {
        ZStack {
            
            Image(symbol: .circleFill)
                .arrangeShape(fontSize: baseLength * 0.125)
            
            Image(symbol: .circleFill)
                .arrangeShape(color: .white,
                              fontSize: baseLength * 0.05)
        }
    }
}

struct CrayonEyeBall_Previews: PreviewProvider {
    static var previews: some View {
        CrayonEyeBall(baseLength: 400)
    }
}
