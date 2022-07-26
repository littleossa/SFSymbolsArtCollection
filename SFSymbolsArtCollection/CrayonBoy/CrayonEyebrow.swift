//
//  CrayonEyebrow.swift
//  CrayonShinchan
//
//  Created by 平岡修 on 2022/02/23.
//

import SwiftUI

struct CrayonEyebrow: View {
    
    var body: some View {
        DrawingSymbol(.control,
                      width: 75,
                      height: 50,
                      lineWeight: .black)
    }
}

struct CrayonEyebrow_Previews: PreviewProvider {
    static var previews: some View {
        CrayonEyebrow()
    }
}
