//
//  LoginView.swift
//  MyFirstSwiftApp
//
//  Created by Admin on 13.08.2025.
//

import SwiftUI

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var isLoginSuccessful = false
    @State private var showingAlert = false
    @State private var alertMessage = ""
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                // App Logo/Title
                VStack {
                    Image(systemName: "person.circle.fill")
                        .font(.system(size: 80))
                        .foregroundStyle(.blue)
                    
                    Text("Login")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }
                .padding(.bottom, 40)
                
                // Input Fields
                VStack(spacing: 16) {
                    TextField("Username", text: $username)
                        .textFieldStyle(.roundedBorder)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled()
                        .accessibilityLabel("Username field")
                        .accessibilityHint("Enter your username")
                    
                    SecureField("Password", text: $password)
                        .textFieldStyle(.roundedBorder)
                        .accessibilityLabel("Password field")
                        .accessibilityHint("Enter your password")
                }
                .padding(.horizontal, 20)
                
                // Login Button
                Button("Login") {
                    performLogin()
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(isLoginButtonEnabled ? .blue : .gray, in: RoundedRectangle(cornerRadius: 10))
                .foregroundStyle(.white)
                .disabled(!isLoginButtonEnabled)
                .padding(.horizontal, 20)
                .accessibilityLabel("Login button")
                .accessibilityHint("Tap to login with entered credentials")
                
                Spacer()
            }
            .padding(.top, 60)
            .navigationTitle("")
            .navigationBarHidden(true)
        }
        .alert("Login Status", isPresented: $showingAlert) {
            Button("OK") { }
        } message: {
            Text(alertMessage)
        }
        .fullScreenCover(isPresented: $isLoginSuccessful) {
            ContentView()
        }
    }
    
    // MARK: - Computed Properties
    
    private var isLoginButtonEnabled: Bool {
        !username.isEmpty && !password.isEmpty
    }
    
    // MARK: - Methods
    
    private func performLogin() {
        // Simple validation - in real app, this would be server authentication
        if username.lowercased() == "admin" && password == "password" {
            alertMessage = "Login successful!"
            isLoginSuccessful = true
        } else {
            alertMessage = "Invalid username or password. Try: admin/password"
            showingAlert = true
        }
    }
}

#Preview {
    LoginView()
}