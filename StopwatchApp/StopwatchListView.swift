//
//  StopwatchListView.swift
//  StopwatchApp
//
//  Created by Graeme Armstrong on 2022-11-13.
//

import SwiftUI
struct StopwatchListView: View {
    
    let lapNumber: String
    let lapTime: String
    let lapColor: Color
    
    var body: some View {
        HStack{
            Text(lapNumber)
                .foregroundColor(lapColor)
                .font(Font.custom("", size: 20))
            Spacer()
            Text(lapTime)
                .foregroundColor(lapColor)
                .font(Font.custom("", size: 20))
                .listRowSeparatorTint(Color("Dark Gray"))
                .frame(height: 55)
        }
    }
}

struct StopwatchListView_Previews: PreviewProvider {
    static var previews: some View {
        StopwatchListView(lapNumber: "Lap 5", lapTime: "0", lapColor: .red)
    }
}
