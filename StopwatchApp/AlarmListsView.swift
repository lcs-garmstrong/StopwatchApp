//
//  AlarmListsView.swift
//  StopwatchApp
//
//  Created by Graeme Armstrong on 2022-11-18.
//

import SwiftUI

struct AlarmListsView: View {
    // MARK: Stored properties
    
    let toggelSwitch: Bool
    let time: String
    let hour: String
    let timeColor: Color
    
    var body: some View {
        // MARK: Computed properties
        HStack{
            VStack (alignment: .leading){
                Toggle(isOn: .constant(toggelSwitch)) {
                    HStack(alignment: .firstTextBaseline){
                        Text(time)
                            .font(Font.system(size: 60, weight: .light))
                        Text(hour)
                            .font(Font.system(size: 35, weight: .light))
                    }
                }
                Text("Alarm")
            }
            .foregroundColor(timeColor)
        }
        .padding(.trailing, 2)
    }
}

struct AlarmListsView_Previews: PreviewProvider {
    static var previews: some View {
        AlarmListsView(toggelSwitch: true, time: "5:07", hour: "AM", timeColor: .gray)
    }
}
