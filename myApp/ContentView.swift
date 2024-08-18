//
//  ContentView.swift
//  myApp
//
//  Created by Nguyễn Minh on 18/08/2024.
//

import SwiftUI

struct ContentView: View {
    
    let hikes: [Hike] = [
        Hike(photo: "image", name: "this is my image", miles: 50.8),
        Hike(photo: "image", name: "this is my name", miles: 30.8),
        Hike(photo: "image", name: "this is my house", miles: 40.8)
    ]
    
    var body: some View {
        NavigationStack {
            List(hikes) { hike in
                NavigationLink(value: hike) {
                    CellView(hike: hike)
                }
            }.navigationTitle("Hikes")
                .navigationDestination(for: Hike.self) { hike in
                    HikeDetailsView(hike: hike)
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CellView: View {
    
    let hike: Hike
    
    var body: some View {
        HStack(spacing: 20) {
            Image(hike.photo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
            VStack(alignment: .leading) {
                Text(hike.name)
                    .font(.title3)
                    .fontWeight(.bold)
                Text("\(hike.miles.formatted()) miles")
            }
        }
    }
}
