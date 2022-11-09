//
//  ContentView.swift
//  StopwatchApp
//
//  Created by Graeme Armstrong on 2022-11-09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            // First layer background
            Color.black
                .ignoresSafeArea()
            
            // Second layer rest of interfacce
            
            VStack {
                Text("00:09.96")
                    .font(Font.system(size: 90, weight: .thin))
                    .foregroundColor(.white)
                
                // Create a circular button
                ZStack {
                    
                    // First layer
                    Circle()
                        .foregroundColor(.gray)
                        .frame(width: 100)
                    
                    // Second layer
                    Circle()
                        .foregroundColor(.black)
                        .frame(width: 93)
                
                    // Third layer
                    Circle()
                        .foregroundColor(.gray)
                        .frame(width: 89)
                    
                    // Forth layer (text)
                    Text("Reset")
                        .foregroundColor(.white)
                        .font(.title2)
                    
                    
                    
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
