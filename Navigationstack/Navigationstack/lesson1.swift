//
//  lesson1.swift
//  Navigationstack
//
//  Created by Raghavendra Mirajkar on 13/05/24.
//

import SwiftUI


struct DetailView : View {
    
    var number: Int
    var body: some View {
        Text("Detail view \(number)")
    }
    init(number: Int) {
        self.number = number
        print("Creating the detail view \(number)")
    }
}

struct Student: Hashable {
    var id = UUID()
    var name : String
    var age: Int
}

struct lesson1: View {
    var body: some View {
        NavigationStack{
            List(0..<100) { i in
                NavigationLink("Select \(i)", value: i)
            }
            .navigationDestination(for: Int.self) { selection in
                DetailView(number: selection)
            }
            .navigationDestination(for: Student.self) { student in
                Text("You selected \(student.name)")
            }
        }
    }
}

#Preview {
    lesson1()
}
