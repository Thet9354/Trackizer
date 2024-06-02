//
//  IconItemSwitchRow.swift
//  Trackizer
//
//  Created by Phoon Thet Pine on 31/5/24.
//

import SwiftUI

struct IconItemSwitchRow: View {
    //MARK: PROPERTY
    @State var icon: String = "face_id"
    @State var title: String = "Title"
    @Binding var value: Bool
    
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
            
            Toggle(isOn: $value, label: {
                /*@START_MENU_TOKEN@*/Text("Label")/*@END_MENU_TOKEN@*/
            })
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 8)
    }
}

struct IconItemSwitch_Previews: PreviewProvider {
    @State static var isNO: Bool = false
    static var previews: some View {
        IconItemSwitchRow(value: $isNO)
            .background(Color.gray60.opacity(0.2))
    }
}
