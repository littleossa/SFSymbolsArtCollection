//
//  CrayonEyes.swift
//  CrayonShinchan
//
//  Created by 平岡修 on 2022/02/23.
//

import SwiftUI

struct CrayonEyes: View {
    
    var body: some View {
        HStack {
            Spacer()
            
            CrayonEye()
            
            Spacer()
                .frame(width: 1)
            
            CrayonEye()
            
            Spacer()
        }
        .rotationEffect(.radians(0.1))
        .offset(x: 5, y: -5)
    }
}

struct CrayonEyes_Previews: PreviewProvider {
    static var previews: some View {
        CrayonEyes()
    }
}
