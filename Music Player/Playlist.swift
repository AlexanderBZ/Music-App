//
//  Playlist.swift
//  Music Player
//
//  Created by Alexander Zwerner on 10/12/20.
//  Copyright © 2020 Alexander Zwerner. All rights reserved.
//

import SwiftUI

struct Playlist: View {
    var body: some View {
        NavigationLink(destination: SongList()){
            ScrollView(.horizontal) {
                VStack{
                    HStack {
                        Text("Playlists")
                            .fontWeight(.bold)
                            .font(Font.system(size: 30, design: .default))
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 38))
                            .foregroundColor(Color.white)
                        Spacer()
                    }
                    HStack(spacing: 20){
                    ForEach(0..<10) { index in
                        PlaylistCard()
                        }
                    }
                } .padding(EdgeInsets(top: 0, leading: 20, bottom: 40, trailing: 0))
            }
        }
    }
    }


struct Playlist_Previews: PreviewProvider {
    static var previews: some View {
        Playlist()
    }
}
