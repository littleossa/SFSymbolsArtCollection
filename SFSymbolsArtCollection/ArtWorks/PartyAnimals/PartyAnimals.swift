//
//  PartyAnimals.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/07/29.
//

import SwiftUI

struct PartyAnimals: View {
    var body: some View {
        
        GeometryReader { proxy in
            
            let baseLength = proxy.baseLength
            
            VStack {
                
                HStack {
                    VStack {
                        Image(symbol: .pawprintFill)
                            .arrangeShape(color: .red,
                                          fontSize: baseLength * 0.15,
                                          fontWeight: .regular,
                                          rotationDegrees: 20,
                                          offsetY: baseLength * -0.025)
                        
                        Image(symbol: .pawprintFill)
                            .arrangeShape(color: .blue,
                                          fontSize: baseLength * 0.15,
                                          fontWeight: .regular,
                                          rotationDegrees: -15,
                                          offsetX: baseLength * -0.05,
                                          offsetY: baseLength * -0.025)
                    }
                    Bear(baseLength: baseLength)
                }
                
                HStack {
                    Frog(baseLength: baseLength)
                    
                    VStack {
                        
                        Image(symbol: .pawprintFill)
                            .arrangeShape(color: .orange,
                                          fontSize: baseLength * 0.15,
                                          fontWeight: .regular,
                                          rotationDegrees: 15,
                                          offsetY: baseLength * -0.025)
                        
                        Image(symbol: .pawprintFill)
                            .arrangeShape(color: .cyan,
                                          fontSize: baseLength * 0.15,
                                          fontWeight: .regular,
                                          rotationDegrees: -15,
                                          offsetX: baseLength * 0.05,
                                          offsetY: baseLength * -0.025)
                    }
                }
                .offset(x: 0,
                        y: baseLength * 0.025)
                
                Lion(baseLength: baseLength)
            }
            .position(proxy.localCenter)
        }
    }
}

struct PartyAnimals_Previews: PreviewProvider {
    static var previews: some View {
        PartyAnimals()
            .scaleEffect(0.7)
    }
}
