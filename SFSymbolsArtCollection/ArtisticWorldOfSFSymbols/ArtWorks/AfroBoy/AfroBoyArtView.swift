//
//  AfroBoyArtView.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

struct AfroBoyArtView: View {
        
    @State private var isAnimating = false
    
    var body: some View {
        ZStack {
            ForEach(Element.allCases) {
                AnimatableSymbolView(
                    name: $0.value.name,
                    initialPosition: $0.value.initialPosition,
                    primaryColor: $0.value.primaryColor,
                    secondaryColor: $0.value.secondaryColor,
                    widthRatio: $0.value.widthRatio,
                    heightRatio: $0.value.heightRatio,
                    horizontalOffsetRatio: $0.value.horizontalOffsetRatio,
                    verticalOffsetRatio: $0.value.verticalOffsetRatio,
                    isAnimating: isAnimating,
                    symbolCountToWaitFor: $0.value.symbolCountToWaitFor
                )
            }
        }
        .navigationTitle("Afro boy")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar(content: {
            ToolbarItemGroup(placement: .bottomBar) {
                Spacer()
                
                PlayButton {
                    isAnimating = true
                }
                .font(.system(size: 32))
                .disabled(isAnimating)
            }
        })
    }
}

#Preview {
    NavigationStack {
        AfroBoyArtView()
            .environment(ArtWorkModel.preview)
    }
}
