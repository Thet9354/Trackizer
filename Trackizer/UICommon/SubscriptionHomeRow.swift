//
//  SubscriptionHomeRow.swift
//  Trackizer
//
//  Created by Phoon Thet Pine on 15/1/24.
//

import SwiftUI

struct SubscriptionHomeRow: View {
    
    // MARK: - PROPERTIES
    @State var sObj: SubscriptionModel = SubscriptionModel(dict: [
        "name":"Spotify",
        "icon":"spotify_logo",
        "price": "5.99"])
    
    // MARK: - BODY
    var body: some View {
        HStack {
            
            Image(sObj.icon)
                .resizable()
                .frame(width: 40, height: 40)
            
            Text(sObj.name)
                .font(.customfont(.semibold, fontSized: 14))
                .foregroundColor(.white)
            
            Spacer()
            
            Text( "$\(sObj.price)" )
                .font(.customfont(.semibold, fontSized: 14))
                .foregroundColor(.white)
            
        }
        .padding(15)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60)
        .background(Color.gray60.opacity(0.2))
        .overlay {
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.gray70, lineWidth: 1)
        }
        .cornerRadius(12)
    }
}

#Preview {
    SubscriptionHomeRow()
}
