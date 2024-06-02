//
//  CreditCardModel.swift
//  Trackizer
//
//  Created by Phoon Thet Pine on 31/5/24.
//

import SwiftUI

struct CreditCardModel: Identifiable {
    var id: UUID = UUID()
    var name: String
    var number: String = ""
    var month_year: String = ""
}
