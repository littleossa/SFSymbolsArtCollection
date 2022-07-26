//
//  CrayonMouse.swift
//  CrayonShinchan
//
//  Created by 平岡修 on 2022/02/23.
//

import SwiftUI

struct CrayonMouth: View {
    
    var body: some View {
        
        ZStack {
            DrawingSymbol(.capsulePortraitFill,
                          color: .red,
                          width: 42,
                          height: 60,
                          lineWeight: .ultraLight)
            
            DrawingSymbol(.capsulePortrait,
                          width: 42,
                          height: 60,
                          lineWeight: .ultraLight,
                          rotationDegrees: -1)
        }
        .rotationEffect(.degrees(10))
    }
}

struct CrayonMouth_Previews: PreviewProvider {
    static var previews: some View {
        CrayonMouth()
    }
}
