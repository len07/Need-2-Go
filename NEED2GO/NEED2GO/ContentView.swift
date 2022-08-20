//
//  ContentView.swift
//  NEED2GO
//
//  Created by Alena Luo on 2022-08-19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
            TabView {
                ViewA()
                    .tabItem() {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                ViewB()
                    .tabItem() {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                ViewC()
                    .tabItem() {
                        Image(systemName: "person.circle")
                        Text("Account")
                    }
            }
        }
        
        
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
