//
//  HikeDetailsView.swift
//  myApp
//
//  Created by Nguyễn Minh on 18/08/2024.
//

import SwiftUI

struct HikeDetailsView: View {
    
    let hike: Hike
    @State private var zoomed: Bool = false
    
    var body: some View {
        VStack {
            Image(hike.photo)
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill : .fit)
                .padding([.leading, .trailing], 20)
                .onTapGesture {
                    withAnimation {
                        zoomed.toggle()
                    }
                }
            Text(hike.name)
                .font(.title)
                .fontWeight(.bold)
            Text("\(hike.miles.formatted()) miles")
            Spacer()
        }.navigationTitle(hike.name)
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct HikeDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            HikeDetailsView(hike:  Hike(photo: "image", name: "minh", miles: 40.5))
        }
    }
}
