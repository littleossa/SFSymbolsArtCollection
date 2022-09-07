//
//  ColorfulAlphabets.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/07/29.
//

import SwiftUI

struct WorldPeace: View {
    var body: some View {
        
        GeometryReader { proxy in
            
            let baseLength = proxy.baseLength
            
            VStack {

                FiveCharactersView(type: .world,
                                   baseLength: baseLength)
                ZStack {
                    Earth(baseLength: baseLength)
                    
                    Image(symbol: .peacesign)
                        .arrangeShape(color: .white,
                                      fontSize: baseLength * 0.52,
                                      fontWeight: .thin)
                }
                
                FiveCharactersView(type: .peace,
                                   baseLength: baseLength)
            }
            .position(x: proxy.frame(in: .local).midX,
                      y: proxy.frame(in: .local).midY)
        }
    }
}

struct WorldPeace_Previews: PreviewProvider {
    static var previews: some View {
        WorldPeace()
    }
}
