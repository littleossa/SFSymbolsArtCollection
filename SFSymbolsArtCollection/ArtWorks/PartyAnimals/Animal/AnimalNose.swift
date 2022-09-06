//
//  BearNose.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/07/29.
//

import SwiftUI

struct AnimalNose: View {
    
    let noseTipColor: Color
    let mouthColor: Color
    
    var body: some View {
        ZStack {
            DrawingSymbol(.circleFill,
                          color: .white,
                          width: 50,
                          height: 50)
            
            DrawingSymbol(.arrowDown,
                          color: mouthColor,
                          width: 30,
                          height: 30,
                          offsetY: 5)
            
            DrawingSymbol(.circleFill,
                          color: .white,
                          width: 20,
                          height: 20,
            offsetY: -4)
            
            DrawingSymbol(.moonCircleFill,
                          color: noseTipColor,
                          width: 20,
                          height: 20,
                          lineWeight: .bold,
                          flipType: .horizontalAndVertical,
            offsetY: -4)
        }
    }
}

struct AnimalNose_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Rectangle()
                .fill(.brown)
                .ignoresSafeArea()
            AnimalNose(noseTipColor: .red,
                     mouthColor: .black)
        }
    }
}
