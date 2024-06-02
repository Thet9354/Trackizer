//
//  AddSubscription.swift
//  Trackizer
//
//  Created by Phoon Thet Pine on 14/2/24.
//

import SwiftUI

struct AddSubscription: View {
    
    // MARK: - PROPERTIES
    @State var subArr: [SubscriptionModel] = [
        SubscriptionModel(dict: [
            "name":"HBO GO",
            "icon":"hbo_logo",
            "price": "5.99"])
        ,
        SubscriptionModel(dict: [
            "name":"Spotify",
            "icon":"spotify_logo",
            "price": "5.99"])
        ,
        SubscriptionModel(dict: [
            "name":"YouTube Premium",
            "icon":"youtube_logo",
            "price": "18.99"])
        ,
        SubscriptionModel(dict: [
            "name":"Microsoft OneDrive",
            "icon":"onedrive_logo",
            "price": "29.99"])
        ,
        SubscriptionModel(dict: [
            "name":"Netflix",
            "icon":"netflix_logo",
            "price": "15.00"])
    ]
    
     
    
    // MARK: - BODY
    var body: some View {
        ScrollView {
            
            ZStack(alignment: .center) {
                
                Rectangle()
                    .foregroundColor(.gray70.opacity(0.5))
                    .frame(width: .screenWidth, height: .widthPer(per: 1.1))
                    .cornerRadius(25)
            }
            .frame(width: .screenWidth, height: .widthPer(per: 1.1))
            
            
            
        }
        .background(Color.grayC)
        .ignoresSafeArea()
    }
}

#Preview {
    AddSubscription()
}
