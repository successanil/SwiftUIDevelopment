//
//  ContentView.swift
//  LoginScreenDemo
//
//  Created by ANIL KUKRETI on 20/01/20.
//  Copyright © 2020 Relsell Global. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    @State private var password: String = ""
    let verticalPaddingForForm = 40.0
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [.blue, .red]), center: .center, startRadius: 100, endRadius: 470)
            VStack(spacing: CGFloat(verticalPaddingForForm)) {
                Text("Welcome To Relsell Global")
                    .font(.title)
                    .foregroundColor(Color.white)
                HStack {
                    Image(systemName: "person")
                        .foregroundColor(.secondary)
                    TextField("Enter your name", text: $name)
                        .foregroundColor(Color.black)
                }
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                
                HStack {
                    Image("icons8-key-50")
                        .resizable()
                        .frame(width: 16.0, height: 16.0) .foregroundColor(.secondary)
                    SecureField("Enter password", text: $password)
                        .foregroundColor(Color.black)
                    
                }
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Login")
                        .padding()
                    
                }
                .background(Color.black)
                .foregroundColor(Color.white)
                .cornerRadius(10)
                
            }.padding(.horizontal, CGFloat(verticalPaddingForForm))
            
        }
    };
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
