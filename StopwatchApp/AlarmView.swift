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
                    HStack{
                        Image(systemName: "bed.double")
                        Text("Sleep")
                        Text("Wake Up")
                    }
                    List{
                        HStack{
                            VStack(alignment: .leading){
                                Text("No Alarm")
                                Text("Tomorrow Morning")
                            }
                            
                        }
                    }
                }
                .padding()
            }
            
            .toolbar {
                ToolbarItem(placement: .navigation) {
                    Text("Edit")
                }
                ToolbarItem(placement: .primaryAction){
                    Image(systemName: "plus")
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
