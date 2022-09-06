//
//  Fire.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/04/26.
//

import SwiftUI

struct Fire: View {
    var body: some View {
        ZStack {
            DrawingSymbol(.flameFill, color: .yellow, width: 50, height: 80, flipType: .vertical)
            
            DrawingSymbol(.flame, color: .red, width: 50, height: 80, flipType: .vertical)
        }
    }
}

struct Fire_Previews: PreviewProvider {
    static var previews: some View {
        Fire()
    }
}
