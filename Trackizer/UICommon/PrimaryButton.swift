//
//  PrimaryButton.swift
//  Trackizer
//
//  Created by Phoon Thet Pine on 5/1/24.
//

import SwiftUI

struct PrimaryButton: View {
    
    // MARK: - PROPERTIES
    @State var title: String = "Title"
    var onPressed: (()->())?
    
    var body: some View {
        Button {
            onPressed?()
        } label: {
            ZStack {
                Image("primary_btn")
                    .resizable()
                    .scaledToFill()
                    .padding(.horizontal, 20)
                    .frame(width: .screenWidth, height: 48)
                
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
    PrimaryButton()
}
