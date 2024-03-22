//
//  FireworksArtView+CoverArt.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

extension FireworksArtView {
    
    struct CoverArt: View {
        
        var body: some View {
            ZStack {
                ForEach(Element.allCases) {
                    SymbolArtDisplayView(element: $0.value)
                }
            }
        }
    }
}
