//
//  BearOutline.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/07/29.
//

import SwiftUI

struct AnimalOutline: View {
    
    let baseLength: CGFloat
    let faceColor: Color
    let earColor: Color
    
    var body: some View {
        ZStack {
            Image(symbol: .circleFill)
                .arrangeShape(color: faceColor,
                              fontSize: baseLength * 0.15,
                              offsetX: baseLength * 0.125,
                              offsetY: baseLength * -0.15)
            
            Image(symbol: .rectangleRoundedtopFill)
                .arrangeShape(color: earColor,
                              fontSize: baseLength * 0.06,
                              rotationDegrees: -20,
                              offsetX: baseLength * 0.125,
                              offsetY: baseLength * -0.15)
            
            Image(symbol: .circleFill)
                .arrangeShape(color: faceColor,
                              fontSize: baseLength * 0.15,
                              offsetX: baseLength * -0.125,
                              offsetY: baseLength * -0.15)
            
            Image(symbol: .rectangleRoundedtopFill)
                .arrangeShape(color: earColor,
                              fontSize: baseLength * 0.06,
                              rotationDegrees: 20,
                              offsetX: baseLength * -0.125,
                              offsetY: baseLength * -0.15)
            
            Image(symbol: .ovalFill)
                .arrangeShape(color: faceColor,
                              fontSize: baseLength * 0.325)
        }
    }
}

struct AnimalOutline_Previews: PreviewProvider {
    static var previews: some View {
        AnimalOutline(baseLength: 400,
                      faceColor: .brown,
                      earColor: .palePink)
    }
}
