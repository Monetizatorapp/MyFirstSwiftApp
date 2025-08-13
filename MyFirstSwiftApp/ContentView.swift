//
//  ContentView.swift
//  MyFirstSwiftApp
//
//  Created by Admin on 28.07.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var isAlertPresented = false
    @State private var userInput = ""
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            
            TextField("Enter your text", text: $userInput)
                .textFieldStyle(.roundedBorder)
                .padding()
                .accessibilityLabel("Text input field")
            
            Button("Show Alert") {
                isAlertPresented = true
            }
            .padding()
            .background(.blue, in: RoundedRectangle(cornerRadius: 8))
            .foregroundStyle(.white)
            .accessibilityLabel("Show alert button")
            .accessibilityHint("Displays an alert message")
        }
        .padding()
        .alert("Alert", isPresented: $isAlertPresented) {
            Button("OK") { }
        } message: {
            Text("This is an alert message!")
        }
    }
}

#Preview {
    ContentView()
}
