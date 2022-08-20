//
//  SigninScreenView.swift
//  NEED2GO
//
//  Created by Alena Luo on 2022-08-20.
//

import SwiftUI

struct SigninScreenView: View {
    @State private var email: String = ""
    var body: some View {
        ZStack {
            Color("white").edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                VStack {
                    Text("Sign In")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.bottom, 30)
                    
                    SocialLoginButton(image: Image(systemName: "applelogo"), text: Text("Sign in with Apple") )
                    SocialLoginButton(image: Image("Image-3"), text: Text("Sign in with Google") )
                        .padding(.vertical)
                    Text("or get a link emailed to you")
                        .foregroundColor(Color.black.opacity(0.4))
                    TextField("Email address", text: $email)
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(50.0)
                        .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                        .padding(.vertical)
                    PrimaryButton(title: "Email me a signup link")
                }
                Spacer()
                Divider()
                Spacer()
                Text("You are completely safe.")
                Text("Read our Terms & Conditions.")
                    .foregroundColor(Color(hue: 0.67, saturation: 0.866, brightness: 0.415))
            }
            .padding()
        }
    }
}

struct SocialLoginButton: View {
    var image: Image
    var text: Text
    var body: some View {
        HStack {
            image
                .padding(.horizontal)
            Spacer()
            
            text
                .font(.title2)
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(50.0)
        .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
    }
}

struct SigninScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SigninScreenView()
    }
}
