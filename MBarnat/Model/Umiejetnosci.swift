//
//  Umiejetnosci.swift
//  MBarnat
//
//  Created by Michał Barnat on 06/08/2022.
//

import Foundation
import SwiftUI

struct Umiejetnosci: Identifiable {
    var id = UUID()
    var title: String
    var body: String
    var level: Int
    var image: Image
    var color: Color
}

var umiejetnosciData = [
    Umiejetnosci(title: "Swift", body: "Swift jest językiem programowania stosowanym na urządzeniach Apple. Zaprezentowany po raz pierwszy podczas WDC 2 czerwca 2014.", level: 3, image: Image("iOS"), color: Colors.V.one),
    Umiejetnosci(title: "SwiftUI", body: "SwiftUI jest to framework od Apple służący do przygotowywania interfejsów aplikacji w Swifcie według paradygmatu deklaratywnego.", level: 3, image: Image("iOS"), color: Colors.V.two),
    Umiejetnosci(title: "Xcode", body: "Xcode to środowisko programistyczne od firmy Apple, które kompleksowo świadczy nam możliwość tworzenia aplikacji na wszytkie urządzenia od Apple.", level: 4, image: Image("iOS"), color: Colors.V.three)
]
