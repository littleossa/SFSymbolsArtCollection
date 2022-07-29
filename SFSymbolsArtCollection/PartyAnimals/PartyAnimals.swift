//
//  PartyAnimals.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/07/29.
//

import SwiftUI

struct PartyAnimals: View {
    var body: some View {
        VStack {
            HStack {
                VStack {
                    DrawingSymbol(.pawprintFill,
                                  color: .red,
                                  width: 40,
                                  height: 40,
                                  rotationDegrees: 20,
                                  offsetY: -10)
                    
                    DrawingSymbol(.pawprintFill,
                                  color: .blue,
                                  width: 40,
                                  height: 40,
                                  rotationDegrees: -15,
                                  offsetX: -20,
                                  offsetY: -10)
                }
                Bear()
            }
            
            HStack {
                Frog()
                
                VStack {
                    DrawingSymbol(.pawprintFill,
                                  color: .orange,
                                  width: 40,
                                  height: 40,
                                  rotationDegrees: 15,
                                  offsetY: -10)
                    
                    DrawingSymbol(.pawprintFill,
                                  color: .cyan,
                                  width: 40,
                                  height: 40,
                                  rotationDegrees: -15,
                                  offsetX: 20,
                                  offsetY: -10)
                }
            }
            .offset(x: 0, y: 10)

            Lion()
        }
    }
}

struct PartyAnimals_Previews: PreviewProvider {
    static var previews: some View {
        PartyAnimals()
    }
}
