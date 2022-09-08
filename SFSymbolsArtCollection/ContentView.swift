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
        
        VStack {
            
            iOSDCJapan2022Logo()
            
            List {
                ForEach(ArtWork.allCases) { artwork in
                    Button {
                        selectedArtWork = artwork
                        isPresented = true
                    } label: {
                        HStack {
                            Text(artwork.title)
                            
                            Spacer()
                            
                            Image(symbol: .chevronForward)
                                .font(.caption.bold())
                        }
                    }
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
