//
//  ContentView.swift
//  final version project
//
//  Created by Nitay Patel on 12/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ViewA()
                .tabItem() {
                    Image(systemName: "plus.rectangle")
                    Text("Calculator")
                }
            ViewB()
                .tabItem() {
                    Image(systemName: "qrcode")
                    Text("QR Code Reader")
                }
            ViewC()
                .tabItem() {
                    Image(systemName: "safari")
                    Text("Safari")
                }
            ViewD()
                .tabItem() {
                    Image(systemName: "gamecontroller")
                    Text("Snake Game")
                }
            ViewE()
                .tabItem() {
                    Image(systemName: "coloncurrencysign.circle.fill")
                    Text("Currency Converter")
                }



        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
