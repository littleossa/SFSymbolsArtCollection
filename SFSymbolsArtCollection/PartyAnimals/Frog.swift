//
//  Frog.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/07/29.
//

import SwiftUI

struct Frog: View {
    var body: some View {
        ZStack {
            AnimalOutline(faceColor: .green,
                          earColor: .green)
            
            AnimalEye(eyeColor: .black)
                .offset(x: -50, y: -60)
            
            AnimalEye(eyeColor: .black)
                .offset(x: 50, y: -60)
            
            DrawingSymbol(.chevronDown,
                          width: 40,
                          height: 25,
                          lineWeight: .bold)
            .offset(x: 0, y: 10)
        }
    }
}

struct Frog_Previews: PreviewProvider {
    static var previews: some View {
        Frog()
    }
}
