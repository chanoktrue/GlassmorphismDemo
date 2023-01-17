//
//  ContentView.swift
//  GlassMorphismisCoolDemo
//
//  Created by Thongchai Subsaidee on 18/1/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            LinearGradient(
                gradient: Gradient(colors: [Color(#colorLiteral(red: 0.7928462625, green: 0.9963774085, blue: 0.9735774398, alpha: 1)), Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))]),
                startPoint: .top,
                endPoint: .bottom
            )
            
            LinearGradient(
                colors: [Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)).opacity(0.6), Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)).opacity(0.3)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            
            ZStack {
                
                Circle()
                    .frame(width: 400, height: 400)
                    .offset(x: 150, y: -200)
                    .foregroundColor(Color.purple.opacity(0.6))
                    .blur(radius: 8)
                
                Circle()
                    .frame(width: 300, height: 300)
                    .offset(x: -100, y: -125)
                    .foregroundColor(Color.blue.opacity(0.4))
                    .blur(radius: 8)
                
                PopupView()
            }
            
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PopupView: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            
            Color.white.opacity(0.5)
                .frame(width: 300, height: 300)
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                .shadow(color: .black.opacity(0.1), radius: 10, x:0, y:10)
                .blur(radius: 1)
            
            VStack(alignment: .leading, spacing: 16) {
                
                Text("Glassmorphism")
                    .font(.system(size: 24, weight: .bold, design: .rounded))
                
                Text("Wow, what abeautiful screen".uppercased())
                    .font(.caption)
                
                Text("This colud be your body text. If you are enjoying this video, like and subscribe.")
                    .font(.footnote)
            }
            .padding()
            .frame(width: 300, height: 400)
            .foregroundColor(.black.opacity(0.8))
        }
    }
}
