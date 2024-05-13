//
//  lesson4.swift
//  Navigationstack
//
//  Created by Raghavendra Mirajkar on 13/05/24.
//

import SwiftUI

struct DetailView1: View {
    var number: Int
    @Binding var path: NavigationPath
    
    var body: some View {
        NavigationLink("Go to a Random Number", value: Int.random(in: 1...1000))
            .navigationTitle("Number: \(number)")
            .toolbar {
                Button("Home") {
                    path = NavigationPath()
                }
            }
    }
}

struct lesson4: View {
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            DetailView1(number: 0, path: $path)
                .navigationDestination(for: Int.self) { i in
                    DetailView1(number: i, path: $path)
                }
        }
    }
}

#Preview {
    lesson4()
}
