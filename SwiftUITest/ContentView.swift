//
//  ContentView.swift
//  SwiftUITest
//
//  Created by Богдан Беннер on 17.02.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.19, green: 0.22, blue: 0.32)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("me")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 150.0, alignment: .center)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5.0))
                Text("Bogdan Benner")
                    .bold()
                    .font(Font.custom("Exo2-VariableFont_wght", size: 40))
                .foregroundColor(.white)
                Text("Junior iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "bennerbr@icloud.com", imageName: "envelope.fill")
                InfoView(text: "github.com/c0pland", imageName: "chevron.left.forwardslash.chevron.right")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50, alignment: .center)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(.black)
                Text(text)
            })
            .padding(.all)
    }
}
