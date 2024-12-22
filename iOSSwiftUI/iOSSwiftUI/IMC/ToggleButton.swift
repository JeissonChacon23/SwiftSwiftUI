//
//  ToggleButton.swift
//  iOSSwiftUI
//
//  Created by Jeisson Chacón on 16/10/24.
//

import SwiftUI

struct ToggleButton: View {
    var text: String = ""
    var gender: Int8
    var image: String = ""
    @Binding var selectedGender: Int8
    
    var body: some View {
        let color = if gender == selectedGender{
            Color.backgroundComponentSelected
        } else{
            Color.backgroundComponent
        }
        
        
        Button(action: {
            selectedGender = gender
        }) {
            VStack{
                Image(systemName: image)
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.white)
                InformationText(text: text)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(color)
            .cornerRadius(10)
        }
        
    }
}

#Preview {
    //ToggleButton(text: "Mujer", gender: 1, image: "heart.fill", selectedGender: g)
    //ToggleButton(text: "Hombre", gender: 1, selectedGender: $gender, image: "star.circle.fill")
    //ToggleButton(text: "Hombre", gender: 1, selectedGender: , image: "star.circle.fill")
}


