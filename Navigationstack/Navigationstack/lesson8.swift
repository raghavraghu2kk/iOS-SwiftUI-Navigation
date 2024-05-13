//
//  lesson8.swift
//  Navigationstack
//
//  Created by Raghavendra Mirajkar on 14/05/24.
//

import SwiftUI

struct lesson8: View {
    @State var title = "SwiftUI"
    var body: some View {
        NavigationStack{
            Text("SwiftUI")
                .navigationTitle($title)
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    lesson8()
}
