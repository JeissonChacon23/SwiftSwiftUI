//
//  SuperHeroSearcher.swift
//  iOSSwiftUI
//
//  Created by Jeisson Chacón on 11/11/24.
//

import SwiftUI

struct SuperHeroSearcher: View {
    @State var superHeroName: String = ""
    var body: some View {
        VStack{
            Image("superman")
            TextField("", text: $superHeroName, prompt:
                        Text("Superman...")
                .bold()
                .foregroundColor(.gray )
            )
                .bold()
                .foregroundColor(.gray)
                .foregroundColor(.white)
                .padding(16)
                .border(.purple, width: 1.5)
                .padding(8)
                .autocorrectionDisabled()
                .onSubmit {
                    //printf(superHeroName)
                }
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundApp)
    }
}

#Preview {
    SuperHeroSearcher()
}
