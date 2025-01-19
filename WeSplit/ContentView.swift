//
//  ContentView.swift
//  WeSplit
//
//  Created by Amr El-Fiqi on 18/01/2025.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Variables
    let students = ["Amr", "Hassan", "Mohamed"]
    
    @State var selectedStudent = "Amr"
    @State var name: String = ""
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Test") {
                    TextField("Enter Data", text: $name)
                }
                Section("Test2") {
                    Picker("Select Your Fav Student", selection: $selectedStudent) {
                        ForEach(students, id: \.self) {
                            Text($0)
                        }
                    }
                }
            }
            .padding()
            .navigationTitle("SwiftUI")
            
        }
    }
}

#Preview {
    ContentView()
}
