//
//  lesson7.swift
//  Navigationstack
//
//  Created by Raghavendra Mirajkar on 14/05/24.
//

import SwiftUI

struct lesson7: View {
    var body: some View {
        NavigationStack {
            Text("Hello, World")
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button("Trailing 1") {
                            
                        }
                    }
                    
                    ToolbarItem(placement: .topBarTrailing) {
                        Button("Trailing 2") {
                            
                        }
                    }
                    // Toolbar item group
                    ToolbarItemGroup(placement: .topBarLeading) {
                        Button("Leading 1") {
                            
                        }
                        Button("Leading 2") {
                            
                        }
                    }
                }
//                .navigationBarBackButtonHidden()
        }
    }
}

#Preview {
    lesson7()
}
