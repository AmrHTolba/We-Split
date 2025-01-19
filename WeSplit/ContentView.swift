//
//  ContentView.swift
//  WeSplit
//
//  Created by Amr El-Fiqi on 18/01/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Form {
                Section("Test") {
                    Text("Hello, World 1")
                }
                Section("Test2") {
                    Text("Hello, World 2")

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
