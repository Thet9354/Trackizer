//
//  SignInView.swift
//  Trackizer
//
//  Created by Phoon Thet Pine on 14/1/24.
//

import SwiftUI

struct SignInView: View {
    
    // MARK: - PROPERTIES
    @State var txtLogin: String = ""
    @State var txtPassword: String = ""
    @State var isRemember: Bool = false
    @State var showSignUp: Bool = false
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            
            VStack {
                Image("app_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: .widthPer(per: 0.5))
                    .padding(.top, .topInsets + 8)
                
                Spacer()
                
                RoundTextField(title: "Login", text: $txtLogin, keyboardType: .emailAddress)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 15)
                
                RoundTextField(title: "Password", text: $txtPassword, isPassword: true)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 20)
                
                HStack {
                    Button {
                        isRemember = !isRemember
                    } label: {
                        
                        HStack {
                            Image(systemName: isRemember ? "checkmark.square" : "square")
                                .resizable()
                                .frame(width: 20, height: 20)
                            
                            Text("Forgot Password")
                                .multilineTextAlignment(.center)
                                .font(.customfont(.regular, fontSized: 14))
                        }
                    }
                    .foregroundColor(.gray50)
                    
                    Spacer()
                    Button {
                        
                    } label: {
                        Text("Forgot Password")
                            .multilineTextAlignment(.center)
                            .font(.customfont(.regular, fontSized: 14))
                    }
                    .foregroundColor(.gray50)
                }
                .padding(.horizontal, 20)
                .padding(.bottom, 15)
                
                PrimaryButton(title: "Sign In", onPressed: {
                    
                })
                
                Spacer()
                
                Text("Don't have an account yet?")
                    .multilineTextAlignment(.center)
                    .font(.customfont(.regular, fontSized: 14))
                    .padding(.horizontal, 20)
                    .foregroundColor(.white)
                    .padding(.bottom, 20)
                
                SecondaryButton(title: "Sign Up", onPressed: {
                    showSignUp.toggle()
                })
                .background(NavigationLink(destination: SignUpView(), isActive: $showSignUp, label: {
                    EmptyView()
                }))
                .padding(.bottom, .bottomInsets + 8)
            }
        }
        .navigationTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .ignoresSafeArea()
        .background(Color.gray80)
    }
}

#Preview {
    SignInView()
}
