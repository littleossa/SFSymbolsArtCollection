//
//  SymbolNameFrameView.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

struct SymbolNameFrameView<Content: View>: View {
    
    init(name: String,
         length: CGFloat,
         frameOpacity: CGFloat,
         @ViewBuilder content: () -> Content){
        self.name = name
        self.length = length
        self.frameOpacity = frameOpacity
        self.content = content()
    }
    
    let name: String
    let length: CGFloat
    let frameOpacity: CGFloat
    let content: Content
    
    var isFrameVisible: Bool {
        frameOpacity != 0
    }
    
    var body: some View {
        ZStack {
            if isFrameVisible {
                RoundedRectangle(cornerRadius: 12)
                    .stroke(lineWidth: 2)
                    .frame(width: length * 2,
                           height: length * 2.2)
                    .opacity(frameOpacity)
                    .offset(y: UIDevice.current.isPad ? length * 0.35 : 0)
            }
            
            content
            
            VStack(spacing: 32) {
                
                content
                    .opacity(0)
                                
                if isFrameVisible,
                   UIDevice.current.isPad {
                    Text(name)
                        .font(.system(size: length * 0.25))
                        .opacity(frameOpacity)
                        .frame(width: length * 1.8)
                        .fixedSize(horizontal: false, vertical: true)
                        .multilineTextAlignment(.center)
                        .offset(y: length * 0.2)
                }
            }
        }
    }
}

#Preview {
    HStack {
        SymbolNameFrameView(
            name: "circle.fill",
            length: 61.44,
            frameOpacity: 1
        ) {
            Image(systemName: "circle.fill")
                .resizable()
                .frame(width: 61.4,
                       height: 61.4)
        }
        
        SymbolNameFrameView(
            name: "doc.plaintext.fill",
            length: 61.44,
            frameOpacity: 1
        ) {
            Image(systemName: "doc.plaintext.fill")
                .resizable()
                .frame(width: 61.4,
                       height: 61.4)
        }
    }
}
