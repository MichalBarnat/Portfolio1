//
//  StrokeText.swift
//  MBarnat
//
//  Created by Michał Barnat on 06/08/2022.
//

import SwiftUI

struct StrokeText: View {
        let text: String
        let width: CGFloat
        let color: Color
    var body: some View {
            ZStack{
                ZStack{
                    Text(text).offset(x:  width, y:  width)
                    Text(text).offset(x: -width, y: -width)
                    Text(text).offset(x: -width, y:  width)
                    Text(text).offset(x:  width, y: -width)
                }
                .foregroundColor(color)
                Text(text)
            }
        }
    }

struct StrokeText_Previews: PreviewProvider {
    static var previews: some View {
        StrokeText(text: "Text", width: 0.5, color: .green)
    }
}
