//
//  ImWearingPantsArtView+CoverArt.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

extension ImWearingPantsArtView {
    
    struct CoverArt: View {
            
        var body: some View {
            ZStack {
                ForEach(FinishPoseElement.allCases) {
                    SymbolArtDisplayView(element: $0.value)
                }
                
                ForEach(FaceElement.allCases) {
                    SymbolArtDisplayView(element: $0.value)
                }
            }
        }
    }
}

#Preview {
    ImWearingPantsArtView.CoverArt()
        .environment(ArtWorkModel.preview)
}
