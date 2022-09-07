//
//  BearNose.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/07/29.
//

import SwiftUI

struct AnimalNose: View {
    
    let baseLength: CGFloat
    let noseTipColor: Color
    let mouthColor: Color
    
    var body: some View {
        ZStack {
            Image(symbol: .circleFill)
                .arrangeShape(color: .white,
                              fontSize: baseLength * 0.125)
            
            Image(symbol: .arrowDown)
                .arrangeShape(color: mouthColor,
                              fontSize: baseLength * 0.09,
                              offsetY: baseLength * 0.0125)
            
            // Nose tip
            Group {
                Image(symbol: .circleFill)
                    .arrangeShape(color: .white,
                                  fontSize: baseLength * 0.05,
                                  offsetY: baseLength * -0.01)
                
                Image(symbol: .moonCircleFill)
                    .arrangeShape(color: noseTipColor,
                                  fontSize: baseLength * 0.05,
                                  fontWeight: .bold,
                                  flipType: .horizontalAndVertical,
                                  offsetY: baseLength * -0.01)
            }
        }
    }
}

struct AnimalNose_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Rectangle()
                .fill(.brown)
                .ignoresSafeArea()
            
            AnimalNose(baseLength: 400,
                       noseTipColor: .red,
                       mouthColor: .black)
        }
    }
}
