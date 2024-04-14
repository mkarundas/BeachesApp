//
//  Beach.swift
//  Beaches
//
//  Created by Arundas MK on 14/04/24.
//

import Foundation


struct Beach: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let photo: String
    let country: String
    let info: String
    
}
