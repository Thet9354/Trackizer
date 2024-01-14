//
//  MainTabView.swift
//  Trackizer
//
//  Created by Phoon Thet Pine on 14/1/24.
//

import SwiftUI

struct MainTabView: View {
    
    // MARK: - PROPERTIES
    @State var selectTab: Int = 0
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            
            VStack {
                Spacer()
                
                ZStack(alignment: .bottom) {
                    ZStack(alignment: .center) {
                        Image("bottom_bar_bg")
                            .resizable()
                            .scaledToFit()
                        
                        HStack(alignment: .center, spacing: 0) {
                            
                            Spacer()
                            
                            Button {
                                selectTab = 0
                            } label: {
                                Image("home")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .padding()
                            }
                            .foregroundColor( selectTab == 0 ? .white : .gray30 )
                            
                            Spacer()
                            
                            Button {
                                selectTab = 1
                            } label: {
                                Image("budgets")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .padding()
                            }
                            .foregroundColor( selectTab == 1 ? .white : .gray30 )
                            
                            
                            Rectangle()
                                .fill(.clear)
                                .frame(width: 80, height: 0)
                            
                            Spacer()
                            
                            Button {
                                selectTab = 2
                            } label: {
                                Image("calendar")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .padding()
                            }
                            .foregroundColor( selectTab == 2 ? .white : .gray30 )
                            
                            Spacer()
                            
                            Button {
                                selectTab = 3
                            } label: {
                                Image("creditcards")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .padding()
                            }
                            .foregroundColor( selectTab == 3 ? .white : .gray30 )
                            
                            Spacer()
                        }
                    }
                    
                    Button {
                        
                    } label: {
                        Image("center_btn")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding()
                    }
                    .padding(.bottom, 6)
                    .shadow(color: .secondaryC.opacity(0.5), radius: 6, y: 4)
                }
            }
            .padding(.horizontal, 20)
            .padding(.bottom, .bottomInsets + 8)
        }
        .background(Color.grayC)
        .ignoresSafeArea()
        
    }
}

#Preview {
    MainTabView()
}
