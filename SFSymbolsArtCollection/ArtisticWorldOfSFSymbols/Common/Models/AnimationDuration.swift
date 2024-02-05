//
//  AnimationDuration.swift
//  SFSymbolsArtCollection
//
//  Created by Lil Ossa
//

struct AnimationDuration {
    static let perSymbol: Double = 1.5
    
    static func waitingTime(forCount count: Int) -> Double {
        return perSymbol * Double(count)
    }
}
