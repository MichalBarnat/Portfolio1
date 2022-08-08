//
//  Contact.swift
//  MBarnat
//
//  Created by Michał Barnat on 08/08/2022.
//

import SwiftUI

struct Contact: View {
    var systemImage: String
    var text: String
    var body: some View {
        HStack(spacing: 0) {
            Image(systemName: systemImage)
                .font(.system(size: 35))
                .shadow(radius: 8)
                .padding()
            
            Text(text)
                .font(.title2)
                .foregroundColor(Colors.background)
                .frame(maxWidth: .infinity, alignment: .center)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct Contact_Previews: PreviewProvider {
    static var previews: some View {
        Contact(systemImage: "phone.fill", text: "+48 537 087 312")
    }
}
