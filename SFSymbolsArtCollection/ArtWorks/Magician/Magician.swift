//
//  Magician.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/07/29.
//

import SwiftUI

struct Magician: View {
    var body: some View {
        ZStack {
            MagicianFace()
                .offset(x: 0, y: 50)
            MagicianHat()
                .offset(x: 0, y: -150)
        }
    }
}

struct Magician_Previews: PreviewProvider {
    static var previews: some View {
        Magician()
    }
}
