//
//  SFSymbolsArtCollectionApp.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

@main
struct SFSymbolsArtCollectionApp: App {
        
    var body: some Scene {
        WindowGroup {
            GeometryReader { geometry in
                ArtGalleryView(screenSize: geometry.size)
                    .preferredColorScheme(.light)
            }
        }
    }
}
