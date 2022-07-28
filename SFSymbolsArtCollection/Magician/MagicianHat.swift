//
//  MagicianHat.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/07/29.
//

import SwiftUI

struct MagicianHat: View {
    var body: some View {
        ZStack {
            DrawingSymbol(.rectangleFill,
                          color: .red,
                          width: 171,
                          height: 30,
                          flipType: .vertical,
                          offsetY: 40)
            
            DrawingSymbol(.archiveboxFill,
                          width: 200,
                          height: 200,
                          flipType: .vertical)
            
            DrawingSymbol(.rectangleFill,
                          width: 250,
                          height: 50,
                          flipType: .vertical,
                          offsetY: 75)
        }
    }
}

struct MagicianHat_Previews: PreviewProvider {
    static var previews: some View {
        MagicianHat()
    }
}
