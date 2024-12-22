//
//  IMCView.swift
//  iOSSwiftUI
//
//  Created by Jeisson Chacón on 16/10/24.
//

import SwiftUI

struct IMCView: View {
    /*
     init(){
         UINavigationBar.appearance().titleTextAttributes =
         [.foregroundColor: UIColor.white]
     }
     
     -->   //.navigationTitle("IMC Calculator")
     */
    @State var gender: Int8 = 0
    @State var age: Int16 = 18
    @State var weight: Int16 = 80
    @State var height: Double = 150
    var body: some View {
        VStack{
            HStack{
                ToggleButton(text: "Hombre", gender: 0, image: "star.fill", selectedGender: $gender)
                ToggleButton(text: "Mujer", gender: 1, image: "heart.fill", selectedGender: $gender)
            }
            HeightCalculator(selectedHeight: $height)
            HStack{
                CounterButton(text: "Edad", number: $age)
                CounterButton(text: "Peso", number: $weight)
            }
            IMCCalculateButton(userWeight: weight, userHeight: Int16(height))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea()
        .background(.backgroundApp)
        .toolbar{
            ToolbarItem(placement: .principal){
                Image(systemName: "globe")
                    .foregroundColor(.white)
            }
        }
        
    }
}

#Preview {
    IMCView()
}

struct InformationText: View {
    let text: String
    var body: some View {
        Text(text)
            .bold()
            .foregroundColor(.white)
            .font(.largeTitle)
    }
}

struct HeightCalculator: View {
    @Binding var selectedHeight: Double
    var body: some View {
        VStack{
            TittleText(text: "Altura")
            InformationText(text: "\(Int(selectedHeight)) Cm")
            Slider(value: $selectedHeight, in: 100...220, step: 1)
                .accentColor(.purple)
                .padding(.horizontal, 16)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundComponent)
    }
}

struct TittleText: View {
    let text: String
    var body: some View {
        Text(text)
            .foregroundColor(.gray)
            .font(.title2)
    }
}

struct CounterButton: View {
    let text: String
    @Binding var number: Int16
    var body: some View {
        VStack{
            TittleText(text: text)
            InformationText(text: String(number))
            HStack{
                Button(action: {
                    if number > 0{
                        number -= 1
                    }
                    
                }){
                    ZStack{
                        Circle()
                            .frame(width: 70)
                            .foregroundColor(.purple)
                        Image(systemName: "minus")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.white)
                            .bold()
                            
                    }
                }
                Button(action: {
                    if number < 100{
                        number += 1
                    }
                }){
                    ZStack{
                        Circle()
                            .frame(width: 70)
                            .foregroundColor(.purple)
                        Image(systemName: "plus")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.white)
                            .bold()
                            
                    }
                }
                
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundComponent)
    }
}


struct IMCCalculateButton: View {
    let userWeight: Int16
    let userHeight: Int16
    var body: some View {
        NavigationStack{
            NavigationLink(destination: {IMCResult(userWeight: Double(userWeight), userHeight: Double(userHeight))}) {
                Text("Calculate")
                    .font(.title)
                    .bold()
                    .foregroundColor(.purple)
                    .frame(maxWidth: .infinity, maxHeight: 100)
                    .background(.backgroundComponent)
            }
        }
    }
}
