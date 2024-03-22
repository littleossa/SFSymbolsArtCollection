//
//  GalleryGridView.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

extension View {
    
    func galleryGridItemView(backgroundColor: Color = .white, length: CGFloat) -> some View {
        GalleryGridItemView(backgroundColor: backgroundColor, length: length) {
            self
        }
    }
}

struct GalleryGridItemView<Content: View>: View {
        
    init(backgroundColor: Color = .white, length: CGFloat, @ViewBuilder content: () -> Content) {
        self.backgroundColor = backgroundColor
        self.length = length
        self.content = content()
    }
    
    let backgroundColor: Color
    let length: CGFloat
    let content: Content
    
    var body: some View {
        
        ZStack {
            content
            
            VStack(alignment: .trailing) {
                Spacer()
                
                Image(systemName: "chevron.right")
                    .foregroundStyle(.gray)
                    .imageScale(.large)
                    .padding()
            }
            .frame(width: length,
                   height: length,
                   alignment: .bottomTrailing)
        }
        .frame(width: length,
               height: length)
        .background(RoundedRectangle(cornerRadius: 12).fill(backgroundColor).shadow(radius: 4))
        .padding(.top, 16)
    }
}

#Preview {
    AfroBoyArtView.CoverArt()
        .environment(ArtWorkModel.preview)
        .galleryGridItemView(length: 1024 / 4)
}
