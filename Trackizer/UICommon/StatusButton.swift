//
//  StatusButton.swift
//  Trackizer
//
//  Created by Phoon Thet Pine on 15/1/24.
//

import SwiftUI

struct StatusButton: View {
    
    // MARK: - PROPERTIES
    @State var title: String = "Title"
    @State var value: String = "10"
    @State var color: Color = .secondaryC
    var isActive: Bool = false
    var onPressed: ( ()->())?
    
    // MARK: - BODY
    var body: some View {
        
        Button {
            onPressed?()
        } label: {
            ZStack(alignment: .top) {
                VStack {
                    VStack {
                        Text(title)
                            .font(.customfont(.semibold, fontSized: 12))
                            .foregroundColor(.gray30)
                        
                        Text(value)
                            .font(.customfont(.semibold, fontSized: 14))
                            .foregroundColor(.white)
                    }
                }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 68, maxHeight: 68)
                .background(Color.gray60.opacity( 0.2 ))
                .overlay {
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color.gray30.opacity(0.5), lineWidth: 1)
                }
                .cornerRadius(16)
                
                Rectangle()
                    .fill(color)
                    .frame(width: 60, height: 1, alignment: .center)
            }
        }
        
    }
}

#Preview {
    StatusButton()
}
