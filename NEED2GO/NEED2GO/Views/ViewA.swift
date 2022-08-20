//
//  ViewA.swift
//  NEED2GO
//
//  Created by Alena Luo on 2022-08-20.
//

import SwiftUI

struct ViewA: View {
    var body: some View {
        VStack (spacing: 50) {
            NavigationView {
                NavigationLink(destination: detailView()) {
                    VStack (spacing: 50){
                        Image("transparentlogo")
                            .resizable()
                            .frame(width: 260.0, height: 150.0)
                            .scaledToFit()
                        
                        Text("Add Review")
                            .foregroundColor(Color.white)
                            .padding(12)
                            .background(Color(hue: 0.67, saturation: 0.866, brightness: 0.415))
                            .cornerRadius(12)
                    }
                    
                }
                
                
            }
        }
    }
}

struct detailView: View {
    @State var firstName = ""
    @State var rating = ""
    @State var comment = ""
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section {
                        TextField("Username", text: $firstName)
                        TextField("Rating (1-5)", text: $rating)
                        TextField("Comments", text: $comment)
                    }
                    .padding()
                   
                }

                NavigationLink(destination: Text("Submission Successful!").font(.largeTitle).fontWeight(.heavy).foregroundColor(Color(hue: 0.67, saturation: 0.866, brightness: 0.415)).navigationBarHidden(true)) {
                    
                    
                    Text("Submit Review")
                        .foregroundColor(Color.white)
                        .padding(12)
                        .background(Color(hue: 0.67, saturation: 0.866, brightness: 0.415))
                        .cornerRadius(12)
                    
                }
                
            }
            
            
        }
        
    }
    
}

struct ViewA_Previews: PreviewProvider {
    static var previews: some View {
        ViewA()
    }
}
