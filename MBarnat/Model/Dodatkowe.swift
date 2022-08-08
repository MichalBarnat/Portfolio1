//
//  Dodatkowe.swift
//  MBarnat
//
//  Created by Michał Barnat on 06/08/2022.
//

import Foundation
import SwiftUI

struct Dodatkowe: Identifiable {
    var id = UUID()
    var title: String
    var level: Int
    var image: Image
    var color: Color
}

var dodatkoweData = [
    Dodatkowe(title: "CoreData", level: 2, image: Image("iOS"), color: Colors.H.one),
    Dodatkowe(title: "Git", level: 2, image: Image("struct"), color: Colors.H.two),
    Dodatkowe(title: "Realm", level: 3, image: Image("struct"), color: Colors.H.three),
    Dodatkowe(title: "Cocoapods", level: 4, image: Image("struct"), color: Colors.H.one)
]
