//
//  Fireworks.swift
//  SFSymbolsArtCollection
//
//  Created by 平岡修 on 2022/08/06.
//

import SwiftUI

struct Fireworks: View {
    var body: some View {
        
        ZStack {
            Rectangle()
                .fill(Color.midnightNavy)
                .ignoresSafeArea()
            
            // Small fireworks
            Group {
                DrawingSymbol(.timelapse,
                              color: .pink,
                              width: 50,
                              height: 50,
                              offsetX: -90,
                              offsetY: 50)
                
                DrawingSymbol(.timelapse,
                              color: .lemonYellow,
                              width: 50,
                              height: 50,
                              offsetX: -30,
                              offsetY: 100)
                
                DrawingSymbol(.timelapse,
                              color: .green,
                              width: 50,
                              height: 50,
                              offsetX: 60,
                              offsetY: 80)
            }
            
            Firework(color: Color(uiColor: .red),
                     dotColor: .white)
            .offset(x: -40, y: -100)
            
            Firework(color: .white,
                     dotColor: .yellow)
            .offset(x: 40, y: -180)
            
            RocketFirework(color: .yellow)
                .offset(x: 10, y: 130)
            
            RocketFirework(color: .white)
                .offset(x: -80, y: 200)
            
            mediumFirework(color: .lemonYellow,
                          dotColor: .red)
            .offset(x: 90, y: 30)
            
            VStack {
                Spacer()
                
                Building(color: .gray,
                         lightColor: .yellow)
            }
            
            VStack {
                Spacer()
                
                HStack(spacing: 0) {
                    DrawingSymbol(.person3SequenceFill, width: 100, height: 50)
                    
                    DrawingSymbol(.person3SequenceFill, width: 100, height: 50)
                    
                    DrawingSymbol(.person3SequenceFill, width: 100, height: 50)
                    
                    DrawingSymbol(.person3SequenceFill, width: 100, height: 50)
                }
            }
        }
    }
}

struct Fireworks_Previews: PreviewProvider {
    static var previews: some View {
        Fireworks()
    }
}
