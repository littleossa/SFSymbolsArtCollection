//
//  RocketFirework.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/08/07.
//

import SwiftUI

struct RocketFirework: View {
    
    let color: Color
    
    var body: some View {
        
        ZStack {
            DrawingSymbol(.circleFill,
                          color: color,
                          width: 20,
                          height: 20,
            offsetY: -140)
            
            DrawingSymbol(.alternatingcurrent,
                          color: color,
                          width: 100,
                          height: 10,
                          rotationDegrees: 90,
            offsetY: -89)
            DrawingSymbol(.alternatingcurrent,
                          color: color,
                          width: 100,
                          height: 10,
                          rotationDegrees: 90)
            
            DrawingSymbol(.alternatingcurrent,
                          color: color,
                          width: 100,
                          height: 10,
                          rotationDegrees: 90,
            offsetY: 89)
        }
    }
}

struct RocketFirework_Previews: PreviewProvider {
    static var previews: some View {
        RocketFirework(color: .red)
    }
}
