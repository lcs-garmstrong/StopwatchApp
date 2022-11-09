//
//  CircleButtonView.swift
//  StopwatchApp
//
//  Created by Graeme Armstrong on 2022-11-09.
//

import SwiftUI

struct CircleButtonView: View {
    var body: some View {
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
}

struct CircleButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CircleButtonView()
    }
}
