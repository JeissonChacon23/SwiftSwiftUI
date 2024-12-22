//
//  StateExample.swift
//  iOSSwiftUI
//
//  Created by Jeisson Chacón on 15/10/24.
//

import SwiftUI

struct StateExample: View {
    @State var subscribersNumber: Int = 0
    var body: some View {
        Button {
            subscribersNumber += 1
        } label: {
            Text("Subscribers: \(subscribersNumber)  ")
                .font(.headline)
                .bold()
                .frame(height: 50)
                .foregroundColor(.white)
                .background(.red)
                .cornerRadius(10)
        }

    }
}

#Preview {
    StateExample()
}
