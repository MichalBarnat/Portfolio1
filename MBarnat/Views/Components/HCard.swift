//
//  HCard.swift
//  MBarnat
//
//  Created by Michał Barnat on 06/08/2022.
//

import SwiftUI

struct HCard: View {
    var dodatkowe: Dodatkowe
    var body: some View {
        HStack(spacing: 20) {
            VStack(alignment: .leading, spacing: 10) {
                Text(dodatkowe.title)
                    .font(.title).bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                HStack(alignment: .center, spacing: 20) {
                    ForEach(0..<5) { num in
                        if num < dodatkowe.level {
                            Image(systemName: "circle.fill")
                        } else {
                            Image(systemName: "circle.dashed")
                        }
                    }
                }
            }
            Divider()
            dodatkowe.image
        }
        .padding(30)
        .frame(maxWidth: .infinity, maxHeight: 100)
        .foregroundColor(.white)
        .background(dodatkowe.color)
        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
    }
}

struct HCard_Previews: PreviewProvider {
    static var previews: some View {
        HCard(dodatkowe: dodatkoweData[0])
    }
}
