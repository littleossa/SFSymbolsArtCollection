//
//  ElectroMagneticWaveOutline.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/08/02.
//

import SwiftUI

struct ElectroMagneticWaveOutline: View {
    
    let color: Color
    
    var body: some View {
        ZStack {
            
            DrawingSymbol(.shieldFill,
                          color: color,
                          width: 110,
                          height: 150,
                          flipType: .vertical,
                          offsetY: -40)
            
            ZStack {
                DrawingSymbol(.capsulePortrait,
                              width: 60,
                              height: 100,
                              lineWeight: .light)
                
                DrawingSymbol(.capsulePortraitFill,
                              color: .paleOrange,
                              width: 60,
                              height: 100)
            }
            

        }
    }
}

struct ElectroMagneticWaveOutline_Previews: PreviewProvider {
    static var previews: some View {
        ElectroMagneticWaveOutline(color: .blue)
    }
}
