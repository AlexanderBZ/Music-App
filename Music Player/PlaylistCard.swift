//
//  PlaylistCard.swift
//  Music Player
//
//  Created by Alexander Zwerner on 10/12/20.
//  Copyright © 2020 Alexander Zwerner. All rights reserved.
//

import SwiftUI

struct PlaylistCard: View {
    var body: some View {
        
        
        VStack(spacing: 0){
            ZStack{
            Rectangle()
                .frame(width: 200, height: 150)
                .cornerRadius(radius: 8, corners: [.topLeft, .topRight])
                .foregroundColor(Color(#colorLiteral(red: 0.1882352941, green: 0.1921568627, blue: 0.3019607843, alpha: 1)))
                        Image(systemName: "play")
                .font(.system(size: 20))
                .foregroundColor(Color.white)
                .overlay(Circle().stroke(Color.clear, lineWidth: 0))
                    .frame(width: 35, height: 35, alignment: .center)
                    .background(Circle().fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9921568627, green: 0.4980392157, blue: 0.4039215686, alpha: 1)), Color(#colorLiteral(red: 0.9647058824, green: 0.3333333333, blue: 0.5333333333, alpha: 1))]), startPoint: .top, endPoint: .bottom)))
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 80, trailing: 120))
                Image("Wave")
                    .renderingMode(.original)
                    .offset(x: 0, y: 25)
            }
            ZStack {
                Rectangle()
                    .frame(width: 200, height: 60)
                    .cornerRadius(radius: 8, corners: [.bottomLeft, .bottomRight])
                    .foregroundColor(Color(#colorLiteral(red: 0.1882352941, green: 0.1921568627, blue: 0.3019607843, alpha: 1)))
                    VStack(alignment: .leading){
                        Text("Dance Hits")
                            .fontWeight(.bold)
                            .font(Font.system(size: 23, design: .default))
                            .foregroundColor(Color.white)
                        Text("29 songs")
                            .fontWeight(.thin)
                            .font(Font.system(size: 16, design: .default))
                            .foregroundColor(Color.white)
                    }.padding(.trailing, 45)
            }
        }.shadow(color: Color(#colorLiteral(red: 0.1450980392, green: 0.1529411765, blue: 0.2431372549, alpha: 1)), radius: 2, x: 0, y: 0)
    }
}

struct PlaylistCard_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistCard()
    }
}
