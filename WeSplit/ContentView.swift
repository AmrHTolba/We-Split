//
//  ContentView.swift
//  WeSplit
//
//  Created by Amr El-Fiqi on 18/01/2025.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Variables
    
    @State var checkAmount = 0.0
    @State var numberOfPeople = 2
    @State var tipPercentage = 20
    
    let tipList = [10, 15, 20, 25, 0]
    
    // MARK: - Body
    var body: some View {
        NavigationStack {
            
            Form {
                Section {
                    // Using Locale to get user region currency
                    TextField ("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                        .keyboardType(.decimalPad)
                    Picker("Number of People: ",selection: $numberOfPeople ) {
                        ForEach(2..<99){
                            Text("\($0) People")
                        }
                    }
                    
                }
                Section ("How much Tip do you want to leave?"){
                    Picker("Tip Percentage: ", selection: $tipPercentage) {
                        ForEach(tipList, id: \.self) {
                            Text($0, format: .percent)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                
                Section {
                    Text(checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
            }
            .navigationTitle("")
        }
    }
}

#Preview {
    ContentView()
}
