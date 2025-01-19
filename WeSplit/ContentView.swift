//
//  ContentView.swift
//  WeSplit
//
//  Created by Amr El-Fiqi on 18/01/2025.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Variables
    @State var tapCount: Int = 0
    @State var name: String = ""
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Test") {
                    Text("Hello, World 1")
                    TextField("Enter Data", text: $name)
                }
                Section("Test2") {
                    Text("Hello, World 2")

                }
            }
            
            .padding()
            .navigationTitle("SwiftUI")
            
        }
        Button("Tap Count: \(tapCount)") {
            tapCount += 1
            print(name)
        }
    }
}

#Preview {
    ContentView()
}
