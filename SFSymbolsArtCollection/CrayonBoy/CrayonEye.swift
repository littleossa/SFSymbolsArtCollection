//
//  CrayonEye.swift
//  CrayonShinchan
//
//  Created by 平岡修 on 2022/02/23.
//

import SwiftUI

struct CrayonEye: View {
    
    var body: some View {
        
        ZStack {
            CrayonEyebrow()
                .offset(x: 0, y: -50)
            
            CrayonEyelid()
            
            CrayonEyeBall()
                .offset(x: -3, y: 10)
        }
    }
}

struct CrayonEye_Previews: PreviewProvider {
    static var previews: some View {
        CrayonEye()
    }
}
