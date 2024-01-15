//
//  SegmentButton.swift
//  Trackizer
//
//  Created by Phoon Thet Pine on 15/1/24.
//

import SwiftUI

struct SegmentButton: View {
    
    // MARK: - PROPERTIES
    @State var title: String = "Title"
    var isActive: Bool = false
    var onPressed: ( ()->())?
    
    var body: some View {
        Button {
            onPressed?()
        } label: {
            Text(title)
                .font(.customfont(.semibold, fontSized: 12))
        }
        .foregroundColor( isActive ? .white : .gray30 )
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 42, maxHeight: 42)
        .background(Color.gray60.opacity( isActive ? 0.2 : 0.0))
        .overlay {
            RoundedRectangle(cornerRadius: 12)
                .stroke( isActive ? Color.gray70 : .clear, lineWidth: 1)
        }
        .cornerRadius(12)
    }
}

#Preview {
    SegmentButton()
}
