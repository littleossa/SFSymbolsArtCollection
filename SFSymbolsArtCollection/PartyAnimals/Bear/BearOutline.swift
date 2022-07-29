//
//  BearOutline.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/07/29.
//

import SwiftUI

struct BearOutline: View {
    var body: some View {
        ZStack {
            DrawingSymbol(.circleFill,
                          color: .brown,
                          width: 60,
                          height: 60,
                          offsetX: 50,
                          offsetY: -60)
            
            DrawingSymbol(.rectangleRoundedtopFill,
                          color: .palePink,
                          width: 30,
                          height: 20,
                          rotationDegrees: -20,
                          offsetX: 50,
                          offsetY: -60)
            
            DrawingSymbol(.circleFill,
                          color: .brown,
                          width: 60,
                          height: 60,
                          offsetX: -50,
                          offsetY: -60)
            
            DrawingSymbol(.rectangleRoundedtopFill,
                          color: .palePink,
                          width: 30,
                          height: 20,
                          rotationDegrees: 20,
                          offsetX: -50,
                          offsetY: -60)
            
            DrawingSymbol(.ovalFill,
                          color: .brown,
                          width: 160, height: 120)
        }
    }
}

struct BearOutline_Previews: PreviewProvider {
    static var previews: some View {
        BearOutline()
    }
}
