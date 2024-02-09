//
//  AfroBoyPreviewView.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

struct AfroBoyPreviewView: View {
    
    @Environment(ArtWorkModel.self) var model
    
    var body: some View {
        ZStack {
            ForEach(AfroBoyArtView.Element.allCases) {
                Image(systemName: $0.value.name)
                    .arrangeShape(
                        primaryColor: $0.value.primaryColor,
                        secondaryColor: $0.value.secondaryColor,
                        width: model.calculatingProportionalValue(
                            withRatio: $0.value.widthRatio,
                            forPreview: true
                        ),
                        height: model.calculatingProportionalValue(
                            withRatio: $0.value.heightRatio,
                            forPreview: true
                        ),
                        horizontalOffset: model.calculatingProportionalValue(
                            withRatio: $0.value.horizontalOffsetRatio,
                            forPreview: true
                        ),
                        verticalOffset: model.calculatingProportionalValue(
                            withRatio: $0.value.verticalOffsetRatio,
                            forPreview: true)
                    )
            }
        }
    }
}

#Preview {
    AfroBoyPreviewView()
        .environment(ArtWorkModel.preview)
}
