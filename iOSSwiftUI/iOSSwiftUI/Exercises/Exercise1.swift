//
//  Exercise1.swift
//  iOSSwiftUI
//
//  Created by Jeisson Chacón on 2/10/24.
//

import SwiftUI

struct Exercise1: View {
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.red)
            VStack{
                HStack{
                    Rectangle()
                        .frame(height: 100)
                        .foregroundColor(.blue)
                    Rectangle()
                        .frame(height: 100)
                        .foregroundColor(.orange)
                    Rectangle()
                        .frame(height: 100)
                        .foregroundColor(.yellow)
                }
                Rectangle()
                    .frame(height: 100)
                    .foregroundColor(.orange)
                HStack{
                    Circle()
                        .frame(height: 100)
                        .foregroundColor(.green)
                    Rectangle()
                        .frame(width: 100, height: 200)
                    Circle()
                        .frame(height: 100)
                        .foregroundColor(.indigo)
                }
                Rectangle()
                    .frame(height: 100)
                    .foregroundColor(.orange)
                HStack{
                    Rectangle()
                        .frame(height: 100)
                        .foregroundColor(.blue)
                    Rectangle()
                        .frame(height: 100)
                        .foregroundColor(.orange)
                    Rectangle()
                        .frame(height: 100)
                        .foregroundColor(.yellow)
                }
            }
        }
    }
}

#Preview {
    Exercise1()
}
