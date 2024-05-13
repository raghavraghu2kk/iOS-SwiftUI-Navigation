//
//  ContentView.swift
//  Navigationstack
//
//  Created by Raghavendra Mirajkar on 13/05/24.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        NavigationStack {
            TabView {
                lesson1().tabItem { Label("Lesson 1", systemImage: "house") }
                lesson2().tabItem { Label("Lesson 2", systemImage: "house") }
                lesson3().tabItem { Label("Lesson 3", systemImage: "house") }
                lesson4().tabItem { Label("Lesson 4", systemImage: "house") }
                lesson5().tabItem { Label("Lesson 5", systemImage: "house") }
            }
            .tint(Gradient(colors: [.teal,.purple,.blue]))
            .navigationTitle("Navigation Stack")
        }
    }
}

#Preview {
    ContentView()
}
