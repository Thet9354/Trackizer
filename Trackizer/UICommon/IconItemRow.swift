//
//  IconItemRow.swift
//  Trackizer
//
//  Created by Phoon Thet Pine on 27/5/24.
//

import SwiftUI

struct IconItemRow: View {
    //MARK: PROPERTY
    @State var icon: String = "face_id"
    @State var title: String = "Title"
    @State var value: String = "Value"
    
    var body: some View {
        HStack {
            Image(icon)
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
            
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
        .padding(.vertical, 8)
    }
}

#Preview {
    IconItemRow()
        .background(Color.gray60.opacity(0.2))
}
