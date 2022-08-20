//
//  ViewC.swift
//  NEED2GO
//
//  Created by Alena Luo on 2022-08-20.
//

import SwiftUI

struct ViewC: View {
    var body: some View {
      WelcomeScreenView()
    }
}

struct ViewC_Previews: PreviewProvider {
    static var previews: some View {
        ViewC()
    }
}

struct PrimaryButton: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color(hue: 0.67, saturation: 0.866, brightness: 0.415))
            .cornerRadius(50)
    }
}


