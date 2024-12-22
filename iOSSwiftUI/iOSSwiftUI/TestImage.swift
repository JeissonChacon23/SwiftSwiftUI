//
//  TestImage.swift
//  iOSSwiftUI
//
//  Created by Jeisson Chacón on 21/11/24.
//

import SwiftUI

struct TestImage: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        
        
        VStack(spacing: 20) {
            Image(colorScheme == .dark ? "AppleMusicLight" : "AppleMusicDark")
                    // Botón de YouTube
                    SocialButton(imageName: "YouTube", urlString: "https://www.youtube.com/@ufpsradio95.2fm5")
                    
                    // Botón de Facebook
                    SocialButton(imageName: "Facebook", urlString: "https://www.facebook.com/ufpsradio")
                    
                    // Botón de Instagram
                    SocialButton(imageName: "Instagram", urlString: "https://www.instagram.com/ufpsradio")
                    
                    // Botón de TikTok
                    SocialButton(imageName: "TikTok", urlString: "https://www.tiktok.com/@ufpsradio")
                    
                    // Botón de LinkedIn
                    SocialButton(imageName: "LinkedIn", urlString: "https://www.linkedin.com/company/ufpsradio")
                    
                    // Botón de la página web
                    SocialButton(imageName: "Website", urlString: "https://www.ufpsradio.com")
                }
                .padding()
    }
}

#Preview {
    TestImage()
}

struct SocialButton: View {
    let imageName: String
    let urlString: String
    
    var body: some View {
        Button(action: { openLink(urlString: urlString) }) {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100) // Ajusta el tamaño según tus necesidades
                .padding()
        }
        .buttonStyle(PlainButtonStyle())
    }
}

func openLink(urlString: String) {
    if let url = URL(string: urlString) {
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
}
