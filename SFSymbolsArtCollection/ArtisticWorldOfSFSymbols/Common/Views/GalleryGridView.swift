//
//  GalleryGridView.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

extension View {
    
    func galleryGridItemView(length: CGFloat) -> some View {
        GalleryGridItemView(length: length) {
            self
        }
    }
}

struct GalleryGridItemView<Content: View>: View {
        
    init(length: CGFloat, @ViewBuilder content: () -> Content) {
        self.length = length
        self.content = content()
    }
    
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
        .background(RoundedRectangle(cornerRadius: 12).stroke(lineWidth: 4).foregroundStyle(.black))
        .padding(.top, 16)
    }
}

#Preview {
    AfroBoyPreviewView()
        .environment(ArtWorkModel.preview)
        .galleryGridItemView(length: 1024 / 4)
}
