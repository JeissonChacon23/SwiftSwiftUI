//
//  MenuView.swift
//  iOSSwiftUI
//
//  Created by Jeisson Chacón on 16/10/24.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationStack{
            List {
                NavigationLink {
                } label: {
                    Image(systemName: "square.fill")
                    Text("App 01")
                        .bold()
                }
                
                NavigationLink(destination: IMCView()){
                    Image(systemName: "plusminus.circle.fill")
                    Text("IMC Calculator")
                        .bold()
                }
                
                NavigationLink(destination: ListExample()){
                    Image(systemName: "list.bullet.circle.fill")
                    Text("List Example")
                        .bold()
                }
                NavigationLink(destination: SuperHeroSearcher()){
                    Image(systemName: "magnifyingglass.circle.fill")
                    Text("Super Hero")
                        .bold()
                }
            }
        }
    }
}

#Preview {
    MenuView()
}
