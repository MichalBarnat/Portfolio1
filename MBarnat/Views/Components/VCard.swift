//
//  VCard.swift
//  MBarnat
//
//  Created by Michał Barnat on 06/08/2022.
//

import SwiftUI

struct VCard: View {
    var umiejetnosci: Umiejetnosci
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(umiejetnosci.title)
                .font(.title).bold()
                .frame(maxWidth: 170, alignment: .leading)
                .layoutPriority(1)
            Text(umiejetnosci.body)
                .font(.body).opacity(0.7)
                .frame(maxWidth: .infinity, alignment: .leading)
            HStack(alignment: .center, spacing: 20) {
                ForEach(0..<5) { num in
                    if num < umiejetnosci.level {
                        Image(systemName: "circle.fill")
                    } else {
                        Image(systemName: "circle.dashed")
                    }
                }
            }
        }
        .foregroundColor(.white)
        .padding(30)
        .frame(width: 250, height: 300)
        .background(.linearGradient(colors: [umiejetnosci.color.opacity(1), umiejetnosci.color.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing))
        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .overlay(
            umiejetnosci.image
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                .padding(20)
        )
    }
}

struct VCard_Previews: PreviewProvider {
    static var previews: some View {
        VCard(umiejetnosci: umiejetnosciData[0])
    }
}
