//
//  CrayonBoy.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/04/27.
//

import SwiftUI

struct CrayonBoy: View {
    
    var body: some View {
        ZStack {
            CrayonFace(faceType: .fill)
            
            CrayonHair()
                .offset(x: 10, y: -50)
            
            CrayonEyes()
            
            CrayonFace(faceType: .line)
            
            CrayonMouth()
                .offset(x: -30, y: 90)
            
        }
    }
}

struct CrayonBoy_Previews: PreviewProvider {
    static var previews: some View {
        CrayonBoy()
    }
}
