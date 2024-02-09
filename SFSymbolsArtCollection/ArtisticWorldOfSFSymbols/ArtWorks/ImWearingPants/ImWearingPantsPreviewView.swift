//
//  ImWearingPantsPreviewView.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

struct ImWearingPantsPreviewView: View {
        
    var body: some View {
        ZStack {
            ForEach(ImWearingPantsArtView.FinishPoseElement.allCases) {
                SymbolArtDisplayView(element: $0.value)
            }
            
            ForEach(ImWearingPantsArtView.FaceElement.allCases) {
                SymbolArtDisplayView(element: $0.value)
            }
        }
    }
}

#Preview {
    ImWearingPantsPreviewView()
        .environment(ArtWorkModel.preview)
}
