//
//  LabelExample.swift
//  iOSSwiftUI
//
//  Created by Jeisson Chacón on 15/10/24.
//

import SwiftUI

struct LabelExample: View {
    var body: some View {
        Label("Title", systemImage: "globe")
        
        
        Label {
            Text("Title")
                .bold()
        } icon: {
            Image(systemName: "globe")
                .resizable()
                .scaledToFit()
                .frame(height: 30)
                
        }

    }
}

#Preview {
    LabelExample()
}
