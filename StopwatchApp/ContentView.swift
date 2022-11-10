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
                
                Spacer()
                
                Text("00:09.96")
                    .font(Font.system(size: 90, weight: .thin))
                    .foregroundColor(.white)
                
                // Create a circular button
                HStack {
                    CircleButtonView(buttonColor: Color("Dark Gray"), lable: "Reset", labelColor: .white)
                    
                    Spacer()
                    
                    CircleButtonView(buttonColor: Color("Dark Green"), lable: "Start", labelColor: .green)
                }
                // list of items
                List{
                    
                    Group{
                        HStack{
                            Text("Lap 5")
                                .font(Font.custom("", size: 20))
                            Spacer()
                            Text("00:00.98")
                                .font(Font.custom("", size: 20))
                                .listRowSeparatorTint(Color("Dark Gray"))
                        }
                        
                        
                        HStack{
                            Text("Lap 4")
                                .font(Font.custom("", size: 20))
                                .foregroundColor(.red)
                            Spacer()
                            Text("00:04.08")
                                .foregroundColor(.red)
                                .font(Font.custom("", size: 20))
                                .listRowSeparatorTint(Color("Dark Gray"))
                        }
                        
                        
                        HStack{
                            Text("Lap 3")
                                .font(Font.custom("", size: 20))
                                .foregroundColor(.green)
                            Spacer()
                            Text("00:00.96")
                                .foregroundColor(.green)
                                .font(Font.custom("", size: 20))
                                .listRowSeparatorTint(Color("Dark Gray"))
                        }
                        
                        
                        HStack{
                            Text("Lap 2")
                                .font(Font.custom("", size: 20))
                            Spacer()
                            Text("00:02.76")
                                .font(Font.custom("", size: 20))
                                .listRowSeparatorTint(Color("Dark Gray"))
                        }
                        
                        
                        HStack{
                            Text("Lap 1")
                                .font(Font.custom("", size: 20))
                            Spacer()
                            Text("00:01.16")
                                .font(Font.custom("", size: 20))
                                .listRowSeparatorTint(Color("Dark Gray"))
                        }
                    }
                    // remove inset from list items
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    
                }
                // set the smount of vertical height we want this list to take up.
                .frame(height: 300)
                // adjust list style
                .listStyle(.plain)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabView(selection: Binding.constant(3)) {
            Text("World CLock")
                .tabItem{
                    Image(systemName: "globe")
                    Text("World clock")
                }
                .tag(1)
            
            Text("Alarm")
                .tabItem{
                    Image(systemName: "alarm.fill")
                    Text("Alarm")
                }
                .tag(2)
            
            ContentView()
                .tabItem{
                    Image(systemName: "stopwatch.fill")
                    Text("Stopwatch")
                }
                .tag(3)
            
            Text("Timer")
                .tabItem{
                    Image(systemName: "timer")
                    Text("Timer")
                }
                .tag(4)
        }
        // change the accenet colour for the currently active tab item
        .accentColor(.orange)
        // ensure tab items that are not active are visable
        .preferredColorScheme(.dark)
    }
}
