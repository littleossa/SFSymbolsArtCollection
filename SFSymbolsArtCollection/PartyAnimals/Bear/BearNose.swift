//
//  BearNose.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/07/29.
//

import SwiftUI

struct BearNose: View {
    var body: some View {
        ZStack {
            DrawingSymbol(.circleFill,
                          color: .white,
                          width: 50,
                          height: 50)
            
            DrawingSymbol(.arrowDown,
                          width: 30,
                          height: 30,
                          offsetY: 5)
            
            DrawingSymbol(.circleFill,
                          color: .white,
                          width: 20,
                          height: 20,
            offsetY: -4)
            
            DrawingSymbol(.moonCircleFill,
                          color: .red,
                          width: 20,
                          height: 20,
                          lineWeight: .bold,
                          flipType: .horizontalAndVertical,
            offsetY: -4)
        }
    }
}

struct BearNose_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Rectangle()
                .fill(.brown)
                .ignoresSafeArea()
            BearNose()
        }
    }
}
