//
//  ContentView.swift
//  ViewsAndSubviewsDemo
//
//  Created by Davide Troise with Swift 5.0
//  for the YouTube channel "Coding con Davide" https://bit.ly/3QJziJE
//

import SwiftUI

struct ContentView: View {
    @State var greetings: String = "Hello, world!"
    
    var body: some View {
        VStack {
            Text(greetings)
                .font(.largeTitle)
                .padding()
            
            ButtonView(greetings: $greetings)
        }
    }
}

struct ButtonView: View {
    @Binding var greetings: String

    var body: some View {
        Button {
            greetings = "Ciao, mondo!"
        } label: {
            Text("Translate in Italian")
                .foregroundColor(.white)
                .padding()
                .background(.red)
                .clipShape(Capsule())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
