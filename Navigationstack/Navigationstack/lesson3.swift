//
//  lesson3.swift
//  Navigationstack
//
//  Created by Raghavendra Mirajkar on 13/05/24.
//

import SwiftUI

struct lesson3: View {
    @State private var path = NavigationPath()
    var body: some View {
        NavigationStack(path: $path) {
            List {
                ForEach(0..<5) { i in
                        NavigationLink("Select Number: \(i)", value: i)
                }
                
                ForEach(0..<5) { i in
                    NavigationLink("Select String: \(i)", value: String(i))
                }
            }
            .toolbar {
                Button {
                    path.append(556)
                } label: {
                    Text("Tap 556")
                }
                
                Button {
                    path.append("Hello")
                } label: {
                    Text("Tap Hello")
                }
            }
            .navigationDestination(for: Int.self) { selection in
                Text("You selected the number \(selection)")
            }
            .navigationDestination(for: String.self) { selection in
                Text("You selected the string \(selection)")
            }
        }
    }
}

#Preview {
    lesson3()
}

