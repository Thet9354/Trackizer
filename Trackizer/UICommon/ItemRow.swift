//
//  ItemRow.swift
//  Trackizer
//
//  Created by Phoon Thet Pine on 25/5/24.
//

import SwiftUI

struct ItemRow: View {
    
    //MARK: PROPERTY
    @State var title: String = "Title"
    @State var value: String = "Value"
    
    var body: some View {
        HStack {
            Text(title)
                .font(.customfont(.semibold, fontSized: 14))
                .foregroundStyle(.white)
            
            Spacer()
            
            Text(value)
                .font(.customfont(.medium, fontSized: 14))
                .foregroundStyle(Color.gray30)
            
            Image("next")
                .resizable()
                .frame(width: 12, height: 12)
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 15)
    }
}

#Preview {
    ItemRow()
        .background(Color.gray60.opacity(0.2))
}
