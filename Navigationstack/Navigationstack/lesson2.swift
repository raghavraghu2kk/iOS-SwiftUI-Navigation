//
//  lesson2.swift
//  Navigationstack
//
//  Created by Raghavendra Mirajkar on 13/05/24.
//

import SwiftUI

struct lesson2: View {
    @State private var path = [Int]()
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                Button("Show 32") {
                    path = [32]
                }
                
                Button("Show 64") {
                    path = [64]
                }
                
                Button("Show 32 then 64") {
                    path = [32,64]
                }
            }
            .navigationDestination(for: Int.self) { selection in
                Text("You selected \(selection)")
            }
        }
    }
}

#Preview {
    lesson2()
}
