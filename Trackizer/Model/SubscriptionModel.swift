//
//  SubscriptionModel.swift
//  Trackizer
//
//  Created by Phoon Thet Pine on 15/1/24.
//

import Foundation

struct SubscriptionModel: Identifiable, Equatable {
    
    var id: UUID = UUID()
    var name: String = ""
    var price: String = ""
    var icon: String = ""
    
    
    init(dict: NSDictionary) {
        self.name = dict.value(forKey: "name") as? String ?? ""
        self.price = dict.value(forKey: "price") as? String ?? ""
        self.icon = dict.value(forKey: "icon") as? String ?? ""
    }
    
    static func == (lhs: SubscriptionModel, rhs: SubscriptionModel) -> Bool {
        return lhs.id == rhs.id
    }
}
