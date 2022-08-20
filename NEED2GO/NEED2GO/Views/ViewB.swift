//
//  ViewB.swift
//  NEED2GO
//
//  Created by Alena Luo on 2022-08-20.
//

import SwiftUI
import MapKit

struct ViewB: View {
    @StateObject private var mapAPI = MapAPI()
    @State private var text = ""
    var body: some View {
        VStack {
            TextField("Enter an address", text: $text)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            Button("Find a nearby washroom") {
                mapAPI.getLocation(address: text, delta: 0.5)
                    
            }.foregroundColor(Color(hue: 0.67, saturation: 0.866, brightness: 0.415))
            Map(coordinateRegion: $mapAPI.region, annotationItems: mapAPI.locations) {
                location in
                MapMarker(coordinate: location.coordinate, tint: Color(hue: 0.67, saturation: 0.866, brightness: 0.415))
            }
            .ignoresSafeArea()
        }
    }
}

struct ViewB_Previews: PreviewProvider {
    static var previews: some View {
        ViewB()
    }
}
