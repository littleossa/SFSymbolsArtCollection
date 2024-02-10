//
//  CrayonBoyArtView+CoverArt.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

extension CrayonBoyArtView {
        
    struct CoverArt: View {
        
        @Environment(ArtWorkModel.self) var model
            
        var body: some View {
            ZStack {
                ForEach(Element.allCases) {
                    SymbolArtDisplayView(element: $0.value)
                }
                
                Image(systemName: "cloud.fill")
                    .resizable()
                    .foregroundStyle(.black.opacity(0.9))
                    .frame(
                        width: model.calculatingProportionalValue(
                            withRatio: 0.85,
                            shouldResizeForCoverArt: true
                        ),
                        height: model.calculatingProportionalValue(
                            withRatio: 0.6,
                            shouldResizeForCoverArt: true
                        )
                    )
                    .rotationEffect(.degrees(8))
                    .rotation3DEffect(
                        .degrees(180),
                        axis: (x: 0, y: 1, z: 0)
                    )
                
                Image(systemName: "questionmark.app.fill")
                    .foregroundStyle(.white, .black.opacity(0.9))
                    .font(.system(size: model.calculatingProportionalValue(
                        withRatio: 0.4,
                        shouldResizeForCoverArt: true
                    )))
                    .bold()
            }
        }
    }
}

#Preview {
    CrayonBoyArtView.CoverArt()
        .environment(ArtWorkModel.preview)
}
