//
//  BeachDetailScreen.swift
//  Beaches
//
//  Created by Arundas MK on 14/04/24.
//

import SwiftUI

struct BeachDetailScreen: View {
    
    @State private var zoomed: Bool = false
    
    let beach: Beach
    
    var body: some View {
        VStack {
            Image(beach.photo)
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill: .fit)
                .onTapGesture {
                    withAnimation {
                        zoomed.toggle()
                    }
                }
            Text(beach.country)
                .font(.title2)
            Text(beach.info)
                .font(.title3)
            Spacer()
        }
        .navigationTitle(beach.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    BeachDetailScreen(beach: Beach(name: "Lucky Bay", photo: "lucky", country: "Australia", info: "Lucky Bay is a bay located at 33°59′40″S 122°13′57″E on the south coast of Western Australia, in the Cape Le Grand National Park."))
}
