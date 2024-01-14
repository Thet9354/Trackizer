//
//  SecondaryButton.swift
//  Trackizer
//
//  Created by Phoon Thet Pine on 5/1/24.
//

import SwiftUI

struct SecondaryButton: View {
    
    // MARK: - PROPERTIES
    @State var title: String = "Title"
        var onPressed: (()->())?
    
    // MARK: - BODY
    var body: some View {
        Button {
            onPressed?()
        } label: {
            ZStack {
                Image("secodry_btn")
                    .resizable()
                    .scaledToFill()
                    .padding(.horizontal, 20)
                    .frame(width: .infinity, height: 48)
                
                Text(title)
                    .font(.customfont(.regular, fontSized: 14))
                    .padding(.horizontal, 20)
            }
        }
        .foregroundColor(.white)
        .shadow(color: .secondaryC.opacity(0.3), radius: 5, y: 3)
    }
}

#Preview {
    SecondaryButton()
}
