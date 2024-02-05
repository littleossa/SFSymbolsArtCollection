//
//  PlayButton.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

struct PlayButton: View {
    
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            HStack {
                Image(systemName: "play.circle.fill")
                Text("Play")
            }
        }
    }
}

#Preview {
    PlayButton {}
}
