//
//  ContentView.swift
//  SFSymbolsArtCollection
//
//

import SwiftUI

struct ContentView: View {
    
    @State private var isPresented = false
    @State private var selectedArtWork: ArtWork = .flyingFlower
    
    var body: some View {
        List {
            ForEach(ArtWork.allCases) { artwork in
                Button {
                    selectedArtWork = artwork
                    print("Button押下時", selectedArtWork)
                    isPresented = true
                } label: {
                    Text(artwork.title)
                }
            }
        }
        .sheet(isPresented: $isPresented, content: {
            let _ = print("sheet表示前", $selectedArtWork)
            ArtWorkView(artwork: $selectedArtWork)
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
