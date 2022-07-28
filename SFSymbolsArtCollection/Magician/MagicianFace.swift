//
//  MagicianFace.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/07/29.
//

import SwiftUI

struct MagicianFace: View {
    var body: some View {
        ZStack {
            // Face
            DrawingSymbol(.dropFill,color: .paleOrange, width: 220, height: 300,flipType: .vertical)
            
            VStack {
                // Eyebrows
                HStack(spacing: 20) {
                    DrawingSymbol(.chevronCompactUp,
                                  width: 60,
                                  height: 20,
                                  lineWeight: .thin)
                    
                    DrawingSymbol(.chevronCompactUp,
                                  width: 60,
                                  height: 20,
                                  lineWeight: .thin)
                }
                
                // Sun glasses
                HStack(spacing: 0) {
                    DrawingSymbol(.minus,
                                  width: 30,
                                  height: 5)
                    
                    ZStack {
                        DrawingSymbol(.circleFill,
                                      color: .white,
                                      width: 50,
                                      height: 50)
                        
                        DrawingSymbol(.moonCircleFill,
                                      width: 50,
                                      height: 50)
                    }
                    
                    DrawingSymbol(.minus,
                                  width: 30,
                                  height: 5)
                    
                    ZStack {
                        DrawingSymbol(.circleFill,
                                      color: .white,
                                      width: 50,
                                      height: 50)
                        
                        DrawingSymbol(.moonCircleFill,
                                      width: 50,
                                      height: 50)
                    }
                    
                    DrawingSymbol(.minus,
                                  width: 30,
                                  height: 5)
                }
                
                // Nose
                DrawingSymbol(.cloudHeavyrain,
                              width: 80,
                              height: 70,
                              lineWeight: .light)
                
                // Mouse
                ZStack {
                    DrawingSymbol(.rectangleRoundedbottomFill,
                                  color: .red,
                                  width: 60,
                                  height: 30)
                    
                    DrawingSymbol(.capsuleFill,
                                  color: .orange,
                                  width: 58,
                                  height: 10,
                                  offsetY: 9.5)
                }
            }
        }
    }
}

struct MagicianFace_Previews: PreviewProvider {
    static var previews: some View {
        MagicianFace()
    }
}
