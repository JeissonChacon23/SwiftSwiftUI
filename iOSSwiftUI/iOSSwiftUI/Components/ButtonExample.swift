//
//  ButtonExample.swift
//  iOSSwiftUI
//
//  Created by Jeisson Chacón on 15/10/24.
//

import SwiftUI

struct ButtonExample: View {
    var body: some View {
        Button("Hello, World!") {
            print("Hello, World!")
        }
        
        Button {
            
        } label: {
            Image(systemName: "clock")
                .resizable()
                .scaledToFit()
                .frame(height: 30)
                .bold()
            Text("Accept")
                .frame(width: 100, height: 50)
                .foregroundColor(.white)
                .background(.blue)
                .cornerRadius(30)
        }

    }
}

#Preview {
    ButtonExample()
}
