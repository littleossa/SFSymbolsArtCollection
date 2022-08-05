//
//  ElectroMagneticWaveManFace.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/08/01.
//

import SwiftUI
import SFUserFriendlySymbols

struct ElectroMagneticWaveManFace: View {
    
    let color: Color
    let markSymbol: SFSymbols
    
    var body: some View {
        ZStack {
            ElectroMagneticWaveOutline(color: color)
            
            DrawingSymbol(markSymbol,
                          color: .white,
                          width: 50,
                          height: 50,
                          lineWeight: .bold,
                          offsetY: -70)
            
            DrawingSymbol(.square,
                          color: color,
                          width: 47,
                          height: 47,
                          lineWeight: .bold,
                          offsetY: -70)
            
            DrawingSymbol(.square,
                          color: color,
                          width: 50,
                          height: 50,
                          lineWeight: .bold,
                          offsetY: -70)
            
            DrawingSymbol(.square,
                          color: color,
                          width: 53,
                          height: 53,
                          lineWeight: .bold,
                          offsetY: -70)
            
            DrawingSymbol(.chevronCompactDown,
                          color: color,
                          width: 50,
                          height: 30,
                          lineWeight: .bold,
                          offsetY: -50)
            
            VStack(spacing: 1) {
                HStack(spacing: 5) {
                    ZStack {
                        DrawingSymbol(.eye,
                                      width: 20,
                                      height: 10)
                        
                        DrawingSymbol(.eyeFill,
                                      color: .white,
                                      width: 20,
                                      height: 10)
                    }
                    
                    ZStack {
                        DrawingSymbol(.eye,
                                      width: 20,
                                      height: 10)
                        
                        DrawingSymbol(.eyeFill,
                                      color: .white,
                                      width: 20,
                                      height: 10)
                    }
                }
                
                DrawingSymbol(.nose,
                              width: 20,
                              height: 20,
                              lineWeight: .thin)
                
                Spacer()
                    .frame(height: 8)
                
                ZStack {
                    DrawingSymbol(.mouth,
                                  width: 20,
                                  height: 10)
                    
                    DrawingSymbol(.mountFill,
                                  color: .red,
                                  width: 20,
                                  height: 10)
                }
            }
        }
    }
}

struct ElectroMagneticWaveManFace_Previews: PreviewProvider {
    static var previews: some View {
        ElectroMagneticWaveManFace(color: .blue, markSymbol: .nSquare)
    }
}
