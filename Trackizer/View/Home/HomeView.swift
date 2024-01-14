//
//  HomeView.swift
//  Trackizer
//
//  Created by Phoon Thet Pine on 14/1/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            
            ZStack {
                
                Rectangle()
                    .foregroundColor(.gray70.opacity(0.5))
                    .frame(width: .screenWidth, height: .widthPer(per: 1.1))
                    .cornerRadius(25)
            }
        }
        .background(Color.grayC)
        .ignoresSafeArea()
    }
}

#Preview {
    HomeView()
}
