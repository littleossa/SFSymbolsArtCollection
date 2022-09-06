//
//  CrayonHair.swift
//  CrayonShinchan
//
//  Created by 平岡修 on 2022/02/23.
//

import SwiftUI

struct CrayonHair: View {
    
    var body: some View {
        ZStack {
            DrawingSymbol(.circleFill,
                          width: 150,
                          height: 100)
            
            DrawingSymbol(.rectangleFill,
                          color: .paleOrange,
                          width: 160,
                          height: 100,
                          offsetY: 30)
        }
    }
}

struct CrayonHair_Previews: PreviewProvider {
    static var previews: some View {
        CrayonHair()
    }
}
