//
//  CrayonEyeBall.swift
//  CrayonShinchan
//
//  Created by 平岡修 on 2022/02/23.
//

import SwiftUI

struct CrayonEyeBall: View {
    
    var body: some View {
        ZStack {
            
            DrawingSymbol(.circleFill,
                          width: 50,
                          height: 50)
            
            DrawingSymbol(.circleFill,
                          color: .white,
                          width: 20,
                          height: 20)
        }
    }
}

struct CrayonEyeBall_Previews: PreviewProvider {
    static var previews: some View {
        CrayonEyeBall()
    }
}
