//
//  WelcomeScreenView.swift
//  NEED2GO
//
//  Created by Alena Luo on 2022-08-20.
//

import SwiftUI

struct WelcomeScreenView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(.white).edgesIgnoringSafeArea(.all)
                VStack {
                    Spacer()
                    Image("transparentlogo")
                        .resizable()
                        .frame(width: 200.0, height: 100.0)
                        .scaledToFit()
                    Spacer()
                    PrimaryButton(title: "Get Started")
                    
                    NavigationLink(
                        destination: SigninScreenView(),
                        label: {
                            Text("Sign In")
                                .font(.title3)
                                .fontWeight(.bold)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .foregroundColor(Color(hue: 0.67, saturation: 0.866, brightness: 0.415))
                                .background(Color(hue: 210, saturation: 0.02, brightness: 0.95))
                                .cornerRadius(50)
                                .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0, y: 16)
                                .padding(.vertical)
                        })
                        .navigationBarHidden(true)
                    HStack {
                        Text("New around here? ")
                        Text("Sign Up")
                            .foregroundColor(Color(hue: 0.67, saturation: 0.866, brightness: 0.415))
                    }
                }
                .padding()
            }
        }
        
    }
}

struct WelcomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreenView()
    }
}
