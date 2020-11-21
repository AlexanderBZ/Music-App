//
//  Home.swift
//  Music Player
//
//  Created by Alexander Zwerner on 10/12/20.
//  Copyright © 2020 Alexander Zwerner. All rights reserved.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView{
        ZStack {
            Color(#colorLiteral(red: 0.1450980392, green: 0.1529411765, blue: 0.2431372549, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            ScrollView{
                AlbumHorizontal()
                Playlist()
            }
        }
    }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
