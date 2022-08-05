//
//  ElectricMagneticWaveManBody.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/08/02.
//

import SwiftUI

struct ElectricMagneticWaveManBody: View {
    
    let color: Color
    
    var body: some View {
        ZStack {
            DrawingSymbol(.figureWave,
                          width: 150,
                          height: 300)
            
            DrawingSymbol(.figureWave,
                          color: .paleOrange,
                          width: 150,
                          height: 300)
            
            DrawingSymbol(.powerplugFill,
                          color: .paleOrange,
                          width: 50,
                          height: 50,
                          lineWeight: .bold,
                          rotationDegrees: -90,
                          offsetX: 10,
                          offsetY: -68)
            
            DrawingSymbol(.locationFill,
                          color: color,
                          width: 50,
                          height: 50,
                          rotationDegrees: 227,
                          offsetX: 7,
                          offsetY: 10)
            
            DrawingSymbol(.minus,
                          color: color,
                          width: 10,
                          height: 50,
                          rotationDegrees: 20,
                          offsetX: -10,
                          offsetY: -10)
            
            DrawingSymbol(.minus,
                          color: color,
                          width: 10,
                          height: 58,
                          rotationDegrees: 12,
                          offsetX: -21,
                          offsetY: -50)
            
            DrawingSymbol(.minus,
                          color: color,
                          width: 10,
                          height: 50,
                          rotationDegrees: -20,
                          offsetX: 22,
                          offsetY: -10)
            
            DrawingSymbol(.minus,
                          color: color,
                          width: 10,
                          height: 51,
                          rotationDegrees: -12,
                          offsetX: 33,
                          offsetY: -50)
        }
    }
}

struct ElectricMagneticWaveManBody_Previews: PreviewProvider {
    static var previews: some View {
        ElectricMagneticWaveManBody(color: .blue)
    }
}
