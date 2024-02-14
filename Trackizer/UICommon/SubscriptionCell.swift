//
//  SubscriptionCalendar.swift
//  Trackizer
//
//  Created by Phoon Thet Pine on 13/2/24.
//

import SwiftUI

struct SubscriptionCalendar: View {
    @State var sObj: SubscriptionModel = SubscriptionModel(dict: [
        "name":"Spotify",
        "icon":"spotify_logo",
        "price": "5.99"])
    
    // MARK: - BODY
    var body: some View {
        VStack (alignment: .leading){
            
            Image(sObj.icon)
                .resizable()
                .frame(width: 40, height: 40)
            
            Spacer()
            
            Text(sObj.name)
                .font(.customfont(.semibold, fontSized: 14))
                .foregroundColor(.white)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            
            
            Text( "$\(sObj.price)" )
                .font(.customfont(.bold, fontSized: 20))
                .foregroundColor(.white)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)

            
        }
        .padding(15)
        .frame(minWidth: 0, maxWidth: .infinity)
        .aspectRatio(contentMode: .fill)
        .background(Color.gray60.opacity(0.2))
        .overlay {
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.gray70, lineWidth: 1)
        }
        .cornerRadius(12)
    }
}

#Preview {
    SubscriptionCalendar()
}
