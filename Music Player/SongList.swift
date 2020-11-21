//
//  Playlist.swift
//  Music Player
//
//  Created by Alexander Zwerner on 10/12/20.
//  Copyright © 2020 Alexander Zwerner. All rights reserved.
//

import SwiftUI

struct SongList: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(#colorLiteral(red: 0.1490196078, green: 0.1607843137, blue: 0.2588235294, alpha: 1))
                    .edgesIgnoringSafeArea(.all)
                ScrollView(.vertical) {
                        VStack{
                            HStack {
                                Text("Playlist")
                                    .fontWeight(.bold)
                                    .font(Font.system(size: 30, design: .default))
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(Color.white)
                            }
                            VStack(spacing: 20){
                            ForEach(0..<10) { index in
                                SongHorizontal()
                                }
                            }
                        } .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
                }
            }
        }
        }
    }


struct SongList_Previews: PreviewProvider {
    static var previews: some View {
        SongList()
    }
}

