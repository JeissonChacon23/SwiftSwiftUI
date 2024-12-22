//
//  IMCResult.swift
//  iOSSwiftUI
//
//  Created by Jeisson Chacón on 29/10/24.
//

import SwiftUI

struct IMCResult: View {
    let userWeight: Double
    let userHeight: Double
    var body: some View {
        VStack{
            Text("Tu resultado")
                .font(.title)
                .bold()
                .foregroundColor(.white)
            let result = calculateIMC(weight: userWeight, height: userHeight)
            InformationView(result: 84)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundApp)
    }
}

#Preview {
    IMCResult(userWeight: 80, userHeight: 190)
}

struct InformationView: View {
    let result: Double
    var body: some View {
        let information = getIMCResult(result: result)
        
        VStack{
            Spacer()
            Text(information.0)
                .foregroundColor(information.2)
                .font(.title)
            Spacer()
            //Text(String(Int(result)))
            Text("\(result, specifier: "%.2f")")
                .font(.system(size: 80))
                .bold()
                .foregroundColor(.white)
            Spacer()
            Text(information.1)
                .foregroundColor(.white)
                .font(.title2)
                .padding(.horizontal)
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundComponent)
        .cornerRadius(16)
    }
}

func calculateIMC(weight: Double, height: Double) -> Double{
    //let result = weight / pow(height, 2)
    let result = weight / ((height / 100) * (height / 100))
    return result
}

func getIMCResult(result: Double) -> (String, String, Color){
    let title: String
    let description: String
    let color: Color
    
    switch result{
    case 0.00...19.99:
        title = "Bajo de Peso"
        description = "Estas por debajo del peso recomendado segun el IMC"
        color = .yellow
    case 20.00...24.99:
        title = "Peso Normal"
        description = "Estas en el peso recomendado segun el IMC"
        color = .green
    case 25.00...29.99:
        title = "Normal"
        description = "Estas por encima del peso recomendado segun el IMC"
        color = .orange
    case 30.00...100:
        title = "Obesidad"
        description = "Estas muy por encima del peso recomendado segun el IMC"
        color = .red
    default:
        title = "Error"
        description = "Error de sobre peso"
        color = Color.gray
    }
    
    return (title, description, color)
}
