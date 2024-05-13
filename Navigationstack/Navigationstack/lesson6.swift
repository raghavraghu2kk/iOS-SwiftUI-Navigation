//
//  lesson6.swift
//  Navigationstack
//
//  Created by Raghavendra Mirajkar on 14/05/24.
//

import SwiftUI

struct lesson6: View {
    var body: some View {
        NavigationStack {
            List(0..<100) { i in
                    Text("Row \(i)")
            }
            .navigationTitle("Tittle goes here")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(.blue)
            .toolbarColorScheme(.dark)
            .toolbar(.visible, for: .navigationBar)
        }
    }
}

#Preview {
    lesson6()
}
