//
//  ContentView.swift
//  SFSymbolsArtCollection
//
//

import SwiftUI

struct ContentView: View {
    
    @State private var isPresented = false
    @State private var selectedArtWork: ArtWork = .crayonBoy
    
    var body: some View {
        List {
            ForEach(ArtWork.allCases) { artwork in
                Button {
                    selectedArtWork = artwork
                    isPresented = true
                } label: {
                    Text(artwork.title)
                }
            }
        }
        .sheet(isPresented: $isPresented, content: {
            ArtWorkView(artwork: $selectedArtWork)
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
