//
//  TextFieldExample.swift
//  iOSSwiftUI
//
//  Created by Jeisson Chacón on 16/10/24.
//

import SwiftUI

struct TextFieldExample: View {
    @State var email: String = ""
    @State var password: String = ""
    var body: some View {
        VStack {
            TextField("Email: ", text: $email)
                .keyboardType(.emailAddress)
                .padding(16)
                .background(.gray.opacity(0.2))
                .cornerRadius(16)
                .padding(.horizontal, 32)
                .onChange(of: email) { oldValue, newValue in
                    print("Old value \(oldValue) and new value \(newValue)")
                }
        }
        
        VStack {
            SecureField("Password: ", text: $password)
                .padding(16)
                .background(.gray.opacity(0.2))
                .cornerRadius(16)
                .padding(.horizontal, 32)
                .onChange(of: email) { oldValue, newValue in
                    print("Old value \(oldValue) and new value \(newValue)")
                }
        }
            
    }
}

#Preview {
    TextFieldExample()
}
