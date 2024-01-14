//
//  WelcomeView.swift
//  Trackizer
//
//  Created by Phoon Thet Pine on 5/1/24.
//

import SwiftUI

struct WelcomeView: View {
    
    // MARK: - PROPERTIES
    @State var showSignIn: Bool = false
    @State var showSignUp: Bool = false
    
    // MARK: - BODY

    var body: some View {
        ZStack {
            Image("welcome_screen")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight)
            
            VStack {
                
                Image("app_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: .widthPer(per: 0.5) )
                    .padding(.top, .topInsets + 8)
                
                Spacer()
                
                Text("Congue malesuada in ac justo, a tristique\nleo massa. Arcu leo leo urna risus.")
                    .multilineTextAlignment(.center)
                    .font(.customfont(.regular, fontSized: 14))
                    .padding(.horizontal, 20)
                    .foregroundColor(.white)
                    .padding(.bottom, 30)
                
                PrimaryButton(title: "Get Started", onPressed: {
                    showSignUp.toggle()
                })
                .background( NavigationLink(destination: SocialSignupView(), isActive: $showSignUp, label: {
                    EmptyView()
                }) )
                .padding(.bottom, 15)

                
                SecondaryButton(title: "I have an account", onPressed: {
                    showSignIn.toggle()
                })
                .background( NavigationLink(destination: SignInView(), isActive: $showSignIn, label: {
                    EmptyView()
                }) )
                .padding(.bottom, .bottomInsets)
            }
        }
        .navigationTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .ignoresSafeArea()
    }
}

#Preview {
    WelcomeView()
}
