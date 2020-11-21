//
//  AlbumCard.swift
//  Music Player
//
//  Created by Alexander Zwerner on 10/12/20.
//  Copyright © 2020 Alexander Zwerner. All rights reserved.
//

import SwiftUI

struct AlbumCard: View {
    var body: some View {
        VStack(spacing: 0){
            Image("BaseCover")
                .renderingMode(.original)
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)
                .clipped()
                .cornerRadius(radius: 8, corners: [.topLeft, .topRight])
            
            ZStack {
                Rectangle()
                    .frame(width: 200, height: 75)
                    .cornerRadius(radius: 8, corners: [.bottomLeft, .bottomRight])
                    .foregroundColor(Color(#colorLiteral(red: 0.1882352941, green: 0.1921568627, blue: 0.3019607843, alpha: 1)))
                
                    VStack(alignment: .leading){
                        Text("How I feel")
                            .fontWeight(.bold)
                            .font(Font.system(size: 23, design: .default))
                            .foregroundColor(Color.white)
                        Text("Roy Woods")
                            .fontWeight(.thin)
                            .font(Font.system(size: 16, design: .default))
                            .foregroundColor(Color.white)
                    }.padding(.trailing, 45)
            }
        }.shadow(color: Color(#colorLiteral(red: 0.1450980392, green: 0.1529411765, blue: 0.2431372549, alpha: 1)), radius: 2, x: 0, y: 0)
    }
}

struct AlbumCard_Previews: PreviewProvider {
    static var previews: some View {
        AlbumCard()
    }
}
