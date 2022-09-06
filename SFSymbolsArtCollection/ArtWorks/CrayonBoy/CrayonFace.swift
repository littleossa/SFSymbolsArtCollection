//
//  CrayonFace.swift
//  CrayonShinchan
//
//  Created by littleossa on 2022/02/23.
//

import SwiftUI
import SFUserFriendlySymbols

struct CrayonFace: View {
    
    enum FaceType: String {
        case line
        case fill
        
        var symbol: SFSymbols {
            switch self {
            case .line:
                return .cloud
            case .fill:
                return .cloudFill
            }
        }
        
        var color: Color {
            switch self {
            case .line:
                return .black
            case .fill:
                return .paleOrange
            }
        }
    }
    
    let faceType: FaceType
    
    var body: some View {
        
        DrawingSymbol(faceType.symbol,
                      color: faceType.color,
                      width: 300,
                      height: 200,
                      lineWeight: .ultraLight,
                      flipType: .horizontal,
                      rotationDegrees: 8)
    }
}

struct CrayonFace_Previews: PreviewProvider {
    static var previews: some View {
        
        ZStack {
            CrayonFace(faceType: .fill)
            CrayonFace(faceType: .line)
        }
    }
}
