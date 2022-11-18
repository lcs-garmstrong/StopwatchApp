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
                
                VStack(alignment: .leading, spacing: 10){
                    Text("Alarm")
                        .font(Font.system(size: 40, weight: .bold))
                    
                    List{
                        Group{
                            HStack{
                                Image(systemName: "bed.double.fill")
                                    .bold()
                                Text("Sleep ")
                                    .font(Font.system(size: 20, weight: .bold))
                                Text("Wake Up")
                                    .font(Font.system(size: 20, weight: .bold))
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
                                        .background(Color("Dark Gray"))
                                        .cornerRadius(100)
                                }
                            }
                            Spacer()
                                .listRowSeparator(.hidden)
                            Text("Other")
                                
                                .font(Font.system(size: 20, weight: .bold))
                            
                            AlarmListsView(toggelSwitch: false, time: "5:07", hour: "AM", timeColor: .gray)
                            
                            AlarmListsView(toggelSwitch: true, time: "7:13", hour: "AM", timeColor: .white)
                            
                            AlarmListsView(toggelSwitch: true, time: "1:08", hour: "PM", timeColor: .white)
                            
                            AlarmListsView(toggelSwitch: false, time: "3:45", hour: "PM", timeColor: .gray)
                            
                        }
                        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                    }
                    .listStyle(.plain)
                }
                .padding()
            }
            
            .toolbar {
                ToolbarItem(placement: .navigation) {
                    Text("Edit")
                        .font(Font.system(size: 20, weight: .regular ))
                        .foregroundColor(.orange)
                }
                ToolbarItem(placement: .primaryAction){
                    Image(systemName: "plus")
                        .font(Font.system(size: 20, weight: .regular ))
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
