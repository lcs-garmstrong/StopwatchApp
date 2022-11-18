//
//  AlarmView.swift
//  StopwatchApp
//
//  Created by Graeme Armstrong on 2022-11-17.
//

import SwiftUI

struct AlarmView: View {
    var body: some View {
        NavigationView{
            ZStack{
                
                Color.black
                    .ignoresSafeArea()
                
                VStack(alignment: .leading){
                    Text("Alarm")
                        .font(Font.system(size: 40, weight: .bold))
                    
                    List{
                        Group{
                            HStack{
                                Image(systemName: "bed.double")
                                    .bold()
                                Text("Sleep")
                                    .bold()
                                Text("Wake Up")
                                    .bold()
                            }
                            
                            HStack{
                                VStack(alignment: .leading){
                                    Text("No Alarm")
                                        .font(Font.system(size: 50, weight: .light))
                                        .foregroundColor(.gray)
                                    Text("Tomorrow Morning")
                                        .foregroundColor(.gray)
                                }
                                Spacer()
                                Button(action: {}) {
                                    Text("CHANGE")
                                        .font(Font.system(size: 17.5, weight: .medium))
                                        .foregroundColor(.orange)
                                        .padding(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10))
                                        .background(.gray)
                                        .cornerRadius(100)
                                }
                            }
                            
                            Text("Other")
                                .font(Font.system(size: 20, weight: .bold))
                            
                            VStack (alignment: .leading){
                                HStack(alignment: .firstTextBaseline){
                                    Text("5:07")
                                        .font(Font.system(size: 60, weight: .light))
                                    Text("AM")
                                        .font(Font.system(size: 35, weight: .light))
                                }
                                .foregroundColor(.gray)
                                Text("Alarm")
                                    .foregroundColor(.gray)
                                
                            }
                            
                        }
                        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    }
                    .listStyle(.plain)
                }
                .padding()
            }
            
            .toolbar {
                ToolbarItem(placement: .navigation) {
                    Text("Edit")
                        .foregroundColor(.orange)
                }
                ToolbarItem(placement: .primaryAction){
                    Image(systemName: "plus")
                        .foregroundColor(.orange)
                }
            }
        }
    }
}

struct AlarmView_Previews: PreviewProvider {
    static var previews: some View {
        AlarmView()
            .preferredColorScheme(.dark)
    }
}
