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
                HStack {
                    CircleButtonView(buttonColor: Color("Dark Gray"), lable: "Reset", labelColor: .white)
                    
                    Spacer()
                    
                    CircleButtonView(buttonColor: Color("Dark Green"), lable: "Start", labelColor: .green)
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabView {
            Text("World CLock")
                .tabItem{
                    Image(systemName: "globe")
                    Text("World clock")
                }
            
            Text("Alarm")
                .tabItem{
                    Image(systemName: "alarm.fill")
                    Text("Alarm")
                }
            
            ContentView()
                .tabItem{
                    Image(systemName: "stopwatch.fill")
                    Text("Stopwatch")
                }
            
            Text("Timer")
                .tabItem{
                    Image(systemName: "timer")
                    Text("Timer")
                }
        }
        // change the accenet colour for the currently active tab item
        .accentColor(.orange)
        // ensure tab items that are not active are visable
        .preferredColorScheme(.dark)
    }
}
