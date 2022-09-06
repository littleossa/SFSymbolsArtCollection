//
//  Arm.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/08/01.
//

import SwiftUI

struct Arm: View {
    var body: some View {
        HStack(spacing: 0) {
            
            ZStack {
                DrawingSymbol(.rectangleFill,
                              color: .paleOrange,
                              width: 200, height: 50,
                              lineWeight: .light)
                
                DrawingSymbol(.rectangle,
                              width: 200,
                              height: 50,
                              lineWeight: .thin)
            }
            
            ZStack {
                ZStack {
                    DrawingSymbol(.handRaisedFill,
                                  color: .paleOrange,
                                  width: 80,
                                  height: 80,
                                  rotationDegrees: -90)
                    
                    DrawingSymbol(.handRaised,
                                  width: 80,
                                  height: 80,
                                  lineWeight: .light,
                                  rotationDegrees: -90)
                }
                .offset(x: -8, y: 5)
                
                DrawingSymbol(.rectangleFill,
                              color: .paleOrange,
                              width: 19,
                              height: 39,
                              offsetX: -45)
            }
        }
    }
}

struct Arm_Previews: PreviewProvider {
    static var previews: some View {
        Arm()
    }
}
