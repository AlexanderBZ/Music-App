//
//  SongHorizontal.swift
//  Music Player
//
//  Created by Alexander Zwerner on 10/12/20.
//  Copyright © 2020 Alexander Zwerner. All rights reserved.
//

import SwiftUI

struct SongHorizontal: View {
    var body: some View {
    NavigationLink(destination: Player()){
        ZStack {
            Rectangle()
                .frame(width: 350, height: 90)
                .foregroundColor(Color(#colorLiteral(red: 0.1882352941, green: 0.1921568627, blue: 0.3019607843, alpha: 1)))
                .cornerRadius(10)
            HStack{
                Image("BaseCover")
                    .renderingMode(.original)
                    .resizable()
                    .frame(width: 70, height: 70)
                    .clipShape(Circle())
                    .padding()
                VStack(alignment: .leading){
                    Text("How I feel")
                        .fontWeight(.bold)
                        .font(Font.system(size: 25, design: .default))
                        .foregroundColor(Color.white)
                    Text("Roy Woods")
                        .fontWeight(.thin)
                        .font(Font.system(size: 18, design: .default))
                        .foregroundColor(Color.white)
                }.padding(.trailing, 45)
                
                Text("3:00")
                    .fontWeight(.thin)
                    .font(Font.system(size: 18, design: .default))
                    .foregroundColor(Color.white)
                    .padding()
            }
        }
        .shadow(color: Color(#colorLiteral(red: 0.1450980392, green: 0.1529411765, blue: 0.2431372549, alpha: 1)), radius: 2, x: 0, y: 0)
    }
    }
}

struct SongHorizontal_Previews: PreviewProvider {
    static var previews: some View {
        SongHorizontal()
    }
}
