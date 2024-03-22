//
//  UIDevice+.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

import SwiftUI

extension UIDevice {
    
    var isPad: Bool {
        return userInterfaceIdiom == .pad
    }
}
