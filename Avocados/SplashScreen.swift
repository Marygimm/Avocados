//
//  SplashScreen.swift
//  Avocados
//
//  Created by Mary Moreira on 28/10/2022.
//

import SwiftUI

struct SplashScreen: View {
    //MARK: - Properties
    
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        VStack {
            if !isActive {
                ZStack {
                    Image("background")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .edgesIgnoringSafeArea(.all)
                    VStack {
                        Image("avocado")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200, alignment: .center)
                        
                        Text("Avocados")
                            .font(.system(size: 42, weight: .bold, design: .serif))
                            .foregroundColor(Color.white)
                            .padding()
                            .shadow(color: Color("ColorBlackTransparentDark"), radius: 4, x: 0, y: 4)
                    }
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear {
                        withAnimation(.easeOut(duration: 1.2)) {
                            self.size = 0.9
                            self.opacity = 1.0
                        }
                    }
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        withAnimation {
                            self.isActive = true
                        }
                    }
                }
            } else {
                ContentView()
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
