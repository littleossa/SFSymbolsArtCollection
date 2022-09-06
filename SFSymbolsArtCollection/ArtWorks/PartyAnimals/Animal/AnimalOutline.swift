//
//  BearOutline.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/07/29.
//

import SwiftUI

struct AnimalOutline: View {
    
    let faceColor: Color
    let earColor: Color
    
    var body: some View {
        ZStack {
            DrawingSymbol(.circleFill,
                          color: faceColor,
                          width: 60,
                          height: 60,
                          offsetX: 50,
                          offsetY: -60)
            
            DrawingSymbol(.rectangleRoundedtopFill,
                          color: earColor,
                          width: 30,
                          height: 20,
                          rotationDegrees: -20,
                          offsetX: 50,
                          offsetY: -60)
            
            DrawingSymbol(.circleFill,
                          color: faceColor,
                          width: 60,
                          height: 60,
                          offsetX: -50,
                          offsetY: -60)
            
            DrawingSymbol(.rectangleRoundedtopFill,
                          color: earColor,
                          width: 30,
                          height: 20,
                          rotationDegrees: 20,
                          offsetX: -50,
                          offsetY: -60)
            
            DrawingSymbol(.ovalFill,
                          color: faceColor,
                          width: 160, height: 120)
        }
    }
}

struct AnimalOutline_Previews: PreviewProvider {
    static var previews: some View {
        AnimalOutline(faceColor: .brown,
                    earColor: .palePink)
    }
}
