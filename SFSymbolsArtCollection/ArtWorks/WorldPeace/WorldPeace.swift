//
//  ColorfulAlphabets.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/07/29.
//

import SwiftUI

struct WorldPeace: View {
    var body: some View {
        VStack {
            AlphabeticalWorld()

            ZStack {
                Earth()
                
                DrawingSymbol(.peacesign,
                              color: .white,
                              width: 200,
                              height: 200,
                              lineWeight: .thin)
            }
                     
            AlphabeticalPeace()
        }
    }
}

struct WorldPeace_Previews: PreviewProvider {
    static var previews: some View {
        WorldPeace()
    }
}
