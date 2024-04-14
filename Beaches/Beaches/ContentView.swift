//
//  ContentView.swift
//  Beaches
//
//  Created by Arundas MK on 14/04/24.
//

import SwiftUI

struct ContentView: View {
    
    let beaches = [
        Beach(name: "Lucky Bay", photo: "lucky", country: "Australia", info: "Lucky Bay is a bay located at 33°59′40″S 122°13′57″E on the south coast of Western Australia, in the Cape Le Grand National Park."),
        Beach(name: "Navagio", photo: "navagio", country: "Greece", info: "Navagio Beach, or Shipwreck Beach, is an exposed cove, sometimes referred to as \"Smugglers Cove\", on the coast of Zakynthos, in the Ionian Islands of Greece."),
        Beach(name: "Playa Balandra", photo: "balandra", country: "Mexico", info: "Playa Balandra is a beach located on the Baja California Sur peninsula of Mexico in La Paz.")
    ]
    
    var body: some View {
        List(beaches) { beach in
            BeachCellView(beach: beach)
        }
    }
}

#Preview {
    ContentView()
}

struct BeachCellView: View {
    let beach: Beach
    var body: some View {
        HStack {
            Image(beach.photo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 10, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading) {
                Text(beach.name)
                    .font(.title3)
                Text(beach.country)
                    .font(.subheadline)
            }
        }
    }
}
