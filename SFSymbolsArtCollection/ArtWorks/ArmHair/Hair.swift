//
//  Hair.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/08/01.
//

import SwiftUI

struct Hair: View {
    var body: some View {
        DrawingSymbol(.alternatingcurrent,
                      width: 30,
                      height: 10,
                      lineWeight: .thin,
                      rotationDegrees: 100)
    }
}

struct Hair_Previews: PreviewProvider {
    static var previews: some View {
        Hair()
    }
}
