//
//  ListExample.swift
//  iOSSwiftUI
//
//  Created by Jeisson Chacón on 11/11/24.
//

import SwiftUI

var pokemons = [
    Pokemon(name : "Pikachu"),
    Pokemon(name: "Charmander"),
    Pokemon(name: "Charmilion"),
    Pokemon(name: "Charizard")
]

var digimonds = [
    Digimond(name: "Agumon"),
    Digimond(name: "Agreimoon"),
    Digimond(name: "Supermon"),
    Digimond(name: "Digimon 4")
]

struct ListExample: View {
    var body: some View {
        /*
         List{
             ForEach(pokemons, id: \.name){ pokemon in
                 Text(pokemon.name)
             }
         }
         */
        /*
         List(digimonds){ digimond in
             Text(digimond.name)
         }
         */
        /*
         List{
             ForEach(digimonds){ digimond in
                 Text(digimond.name)
             }
         }
         */
        List{
            Section(header: Text("Pokemons")){
                ForEach(pokemons, id: \.name){ pokemon in
                    Text(pokemon.name)
                }
            }
            Section(header: Text("Digimonds")){
                ForEach(digimonds){ digimond in
                    Text(digimond.name)
                }
            }
        }
        //.listStyle(.grouped)
        //.listStyle(.inset)
        //.listStyle(.plain)
        .listStyle(.sidebar)
    }
}

#Preview {
    ListExample()
}

struct Pokemon{
    let name: String
}
struct Digimond: Identifiable{
    var id = UUID()
    let name: String
}
