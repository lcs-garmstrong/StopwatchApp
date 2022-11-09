//
//  CircleButtonView.swift
//  StopwatchApp
//
//  Created by Graeme Armstrong on 2022-11-09.
//

import SwiftUI

struct CircleButtonView: View {
    // MARK: Stored properties
    let buttonColor: Color
    let lable: String
    let labelColor: Color
    
    //MARK: Computed properties
    var body: some View {
        ZStack {
            
            // First layer
            Circle()
                .foregroundColor(buttonColor)
                .frame(width: 100)
            
            // Second layer
            Circle()
                .foregroundColor(.black)
                .frame(width: 93)
        
            // Third layer
            Circle()
                .foregroundColor(buttonColor)
                .frame(width: 89)
            
            // Forth layer (text)
            Text(lable)
                .foregroundColor(labelColor)
                .font(.title2)
        }
    }
}

struct CircleButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CircleButtonView(buttonColor: .gray, lable: "Reset", labelColor: .white)
    }
}
