//
//  Sky.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/04/26.
//

import SwiftUI

struct Sky: View {
    var body: some View {
        
        ZStack {
            Image(symbol: .rectangleFill)
                .resizable()
                .foregroundColor(.blue)
            
            VStack(spacing: 40) {
                ForEach(0..<10) { _ in
                    
                    HStack(spacing: 20) {
                        ForEach(0..<6) { _ in
                            DrawingSymbol(.cloudFill, color: .white, width: 100, height: 80)
                        }
                    }
                }
            }
        }
    }
}

struct Sky_Previews: PreviewProvider {
    static var previews: some View {
        Sky()
    }
}
