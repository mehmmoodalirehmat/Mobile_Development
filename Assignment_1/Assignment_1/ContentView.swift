//
//  ContentView.swift
//  Assignment_1
//
//  Created by J V S Dattu on 8/30/23.
//

import SwiftUI

//struct StaticInterfaceApp:App{
//    var body:some Scene{
//        WindowGroup{
//            ContentView()
//        }
//    }
//}

struct ContentView: View {
    @State private var isImageVisible=false
    var body: some View {
        VStack {
            Text("Welcome to SwiftUI Static App")
                .font(.title)
                .foregroundColor(.blue)
                .padding()
            Circle()
                .frame(width: 100,height:100)
                .foregroundColor(.green)
                .overlay(Text("Circle"))
                .shadow(radius: 10)
            if isImageVisible{
                Image("icon")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height:100)
                    .cornerRadius(10)
                    .transition(.scale)
            }
            Text("Hello, SwiftUI!")
                            .font(.headline)
                            .foregroundColor(.purple)
                            .padding()
                            .background(Color.yellow)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius:3,x:0,y:2)
            Toggle("Show Image", isOn: $isImageVisible)
                .padding()
                .toggleStyle(SwitchToggleStyle(tint:.green))
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


