//
//  lesson5.swift
//  Navigationstack
//
//  Created by Raghavendra Mirajkar on 14/05/24.
//

import SwiftUI

@Observable
class PathStore {
    var path: NavigationPath {
        didSet {
            save()
        }
    }
    
    private let savePath = URL.documentsDirectory.appending(path: "SavedPath")
    
    init() {
        if let data = try? Data(contentsOf: savePath) {
            if let decoded = try? JSONDecoder().decode(NavigationPath.CodableRepresentation.self, from: data) {
                path = NavigationPath(decoded)
                return
            }
        }
        
        path = NavigationPath()
    }
    
    func save() {
        guard let represntation = path.codable else { return }
        do {
            let data = try JSONEncoder().encode(represntation)
            try data.write(to: savePath)
        } catch {
            print("Failed to save navigation data")
        }
    }
}

struct DetailView2: View {
    var number: Int

    var body: some View {
        NavigationLink("Go to a Random Number", value: Int.random(in: 1...1000))
            .navigationTitle("Number: \(number)")
    }
}

struct lesson5: View {
    @State private var pathStore = PathStore()
    
    var body: some View {
        NavigationStack(path: $pathStore.path) {
            DetailView2(number: 0)
                .navigationDestination(for: Int.self) { i in
                    DetailView2(number: i)
                }
        }
    }
}

#Preview {
    lesson5()
}
