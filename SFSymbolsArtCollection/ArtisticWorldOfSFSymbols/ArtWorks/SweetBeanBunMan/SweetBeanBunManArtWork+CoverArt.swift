//
//  SweetBeanBunManArtWork+CoverArt.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

extension SweetBeanBunManArtView {
    
    struct CoverArt: View {
        
        @Environment(ArtWorkModel.self) var model
        
        var body: some View {
            ZStack {
                ForEach(Element.allCases) {
                    SymbolArtDisplayView(element: $0.value)
                }
                
                Image(systemName: "circle.fill")
                    .resizable()
                    .foregroundStyle(.black.opacity(0.9))
                    .frame(
                        width: model.calculatingProportionalValue(
                            withRatio: 0.7,
                            shouldResizeForCoverArt: true
                        ),
                        height: model.calculatingProportionalValue(
                            withRatio: 0.7,
                            shouldResizeForCoverArt: true
                        )
                    )
                
                Image(systemName: "ev.plug.ac.gb.t.fill")
                    .resizable()
                    .foregroundStyle(.black.opacity(0.9))
                    .frame(
                        width: model.calculatingProportionalValue(
                            withRatio: 0.8,
                            shouldResizeForCoverArt: true
                        ),
                        height: model.calculatingProportionalValue(
                            withRatio: 0.7,
                            shouldResizeForCoverArt: true
                        )
                    )
                    .offset(y: model.calculatingProportionalValue(
                        withRatio: 0.05,
                        shouldResizeForCoverArt: true
                    ))
                
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
    SweetBeanBunManArtView.CoverArt()
        .environment(ArtWorkModel.preview)
}

