//
//  CrayonEyelid.swift
//  CrayonShinchan
//
//  Created by 平岡修 on 2022/02/23.
//

import SwiftUI

struct CrayonEyelid: View {
    
    var body: some View {
        
        ZStack {
            DrawingSymbol(.circle,
                          width: 60,
                          height: 60,
                          lineWeight: .ultraLight)
            
            DrawingSymbol(.rectangleFill,
                          color: .paleOrange,
                          width: 75,
                          height: 50,
                          offsetX: 0,
                          offsetY: 20)
        }
    }
}

struct CrayonEyelid_Previews: PreviewProvider {
    static var previews: some View {
        CrayonEyelid()
    }
}
