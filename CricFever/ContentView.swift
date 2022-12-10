//
//  ContentView.swift
//  CricFever
//
//  Created by Alwin VK on 09/12/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(UIColor(red: 0.20, green: 0.29, blue: 0.37, alpha: 1.00))
                .edgesIgnoringSafeArea(.all)
            VStack{
                HeaderBarView()
                LiveGameView()
            }
           
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HeaderBarView: View {
    var body: some View {
        HStack{
            Button(action: {}){
                Image(systemName: "square.grid.3x3.middle.filled")
                    .foregroundColor(.white)
                    .font(.system(size: 30))
            }
            Spacer()
            HStack {
                Button(action: {}){
                    Image(systemName: "magnifyingglass.circle.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                }
                .padding()
                
                Button(action: {}){
                    Image(systemName: "bell.badge.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                }
            }
            
            
        }.padding(.horizontal)
    }
}


struct LiveGameView: View {
    var body: some View {
        VStack{
            LiveHeadBar()
            VStack {
                HStack{
                    VStack {
                        Image("ind")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 50,height: 50)
                            .clipShape(Circle())
                        Text("INDIA")
                        Text("280/6 (50)")
                    }.font(.system(size: 13))
                        .bold()
                    Spacer()
                    
                    Text("vs")
                        .font(.system(size: 14))
                        .frame(width: 40,height: 20, alignment: .center)
                        .background(Color.white)
                        .bold()
                        .clipShape(Rectangle())
                        .overlay(Rectangle().stroke(Color.gray, lineWidth: 1))
                    
                    Spacer()
                    VStack {
                        Image("pak")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 50,height: 50)
                            .clipShape(Circle())
                        Text("PAKISTAN")
                        Text("156/6 (50)")
                    }.font(.system(size: 13))
                        .bold()
                    
                }.padding(.all)
                Text("ICC Champion Trophy")
                    .font(.system(size: 15))
                    .frame(width: 190, height: 35)
                    .foregroundColor(.white)
                    .background(Color.black)
                
            }
            
        }.frame(width: 300, height: 215)
            .padding(.horizontal)
            .background(Color.white)
            .cornerRadius(10)
    }
}
struct LiveHeadBar: View {
    var body: some View {
        HStack{
            Text("Live Match")
                .font(.system(size: 15))
                .bold()
                .foregroundColor(.white)
            Spacer()
            RoundedRectangle(cornerRadius: 6)
                .frame(width: 65,height: 25)
                .overlay( HStack {
                    Image(systemName: "button.programmable")
                        .foregroundColor(.red)
                    Text("LIVE")
                        .foregroundColor(.black)
                }).foregroundColor(.gray)
                .font(.system(size: 13))
            
            
        }.foregroundColor(.white)
            .padding(.horizontal)
    }
}
