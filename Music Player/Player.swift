//
//  Player.swift
//  Music Player
//
//  Created by Alexander Zwerner on 10/11/20.
//  Copyright © 2020 Alexander Zwerner. All rights reserved.
//

import SwiftUI

struct Player: View {
    @State var timeBar: Double = 0
    @State var playButton: Bool = true
    let gradient = Gradient(colors: [.red, .blue])
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.1490196078, green: 0.1607843137, blue: 0.2588235294, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("BaseCover")
                    .resizable()
                    .frame(width: 350, height: 350, alignment: .center)
                    .cornerRadius(25)
                    .shadow(color: .black, radius: 3, x: 0, y: 0)
                Text("How I feel")
                    .fontWeight(.bold)
                    .font(Font.system(size: 25, design: .default))
                    .foregroundColor(Color.white)
                    .padding()
                    
            
                Text("Roy Woods")
                    .fontWeight(.thin)
                    .font(Font.system(size: 18, design: .default))
                    .foregroundColor(Color.white)
                HStack{
                    Text("0")
                        .fontWeight(.thin)
                        .font(Font.system(size: 18, design: .default))
                        .foregroundColor(Color.white)
                        .padding()
                    ZStack {
                          LinearGradient(
                              gradient: Gradient(colors: [Color(#colorLiteral(red: 0.3764705882, green: 0.3843137255, blue: 0.9882352941, alpha: 1)), Color(#colorLiteral(red: 0.9843137255, green: 0.5098039216, blue: 0.431372549, alpha: 1))]),
                              startPoint: .leading,
                              endPoint: .trailing
                          )
                            .frame(height: 50.0)
                        
                          .mask(Slider(value: $timeBar, in: 0...50, step: 1))

                          Slider(value: $timeBar, in: 0...50, step: 1)
                              .opacity(0.05)
                    }
                    //Slider(value: $timeBar, in: 0...1)
                    Text("3:00")
                        .fontWeight(.thin)
                        .font(Font.system(size: 18, design: .default))
                        .foregroundColor(Color.white)
                        .padding()
                    
                } .padding()
                HStack{
                    Button(action: {}) {
                        Image(systemName: "backward.end.fill")
                            .foregroundColor(Color(#colorLiteral(red: 0.3646062755, green: 0.3568116717, blue: 0.5994436084, alpha: 1)))
                            .shadow(color: .black, radius: 1, x: 0, y: 0)
                            .font(.system(size: 30))
                            .frame(width: 30, height: 30, alignment: .center)
                        
                    }.padding()
                    
                    Button(action: {
                        self.playButton.toggle()
                    }) {
                        if self.playButton == true {
                            Image(systemName: "play")

                        } else {
                            Image(systemName: "pause")
                        }
                    }
                    .font(.system(size: 45))
                    .foregroundColor(Color.white)
                    .frame(width: 90, height: 90, alignment: .center)
                    .overlay(Circle().stroke(Color.clear, lineWidth: 4))
                    .background(Circle().fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.462745098, green: 0.4117647059, blue: 0.9098039216, alpha: 1)), Color(#colorLiteral(red: 0.6745098039, green: 0.3450980392, blue: 0.9529411765, alpha: 1))]), startPoint: .top, endPoint: .bottom)))
                    .padding()
                    
                    Button(action: {}) {
                        Image(systemName: "forward.end.fill")
                            .foregroundColor(Color(#colorLiteral(red: 0.3646062755, green: 0.3568116717, blue: 0.5994436084, alpha: 1)))
                            .shadow(color: .black, radius: 1, x: 0, y: 0)
                            .font(.system(size: 30))
                            .frame(width: 30, height: 30, alignment: .center)
                    } .padding()
                }
            }
        }
    }
}

struct Player_Previews: PreviewProvider {
    static var previews: some View {
        Player()
    }
}
