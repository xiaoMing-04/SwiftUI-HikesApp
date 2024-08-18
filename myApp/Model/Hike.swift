//
//  Hike.swift
//  myApp
//
//  Created by Nguyễn Minh on 18/08/2024.
//

import Foundation


struct Hike: Identifiable, Hashable {
    let id = UUID()
    let photo: String
    let name: String
    let miles: Double
}
