//
//  ContentView.swift
//  CalculatorSwiftUI
//
//  Created by Connor Lagana on 5/4/20.
//  Copyright © 2020 Connor Lagana. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let buttons = [["AC", "±", "%", "÷"], ["7", "8", "9", "x"], ["4", "5", "6", "-"], ["1", "2", "3", "+"]]
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack {
                ForEach(buttons, id: \.self) { row in
                    HStack {
                        ForEach(row, id: \.self) { button in
                            Text(button)
                                .font(.system(size: 32))
                                .frame(width: 80, height: 80)
                                .background(Color.gray)
                                .clipShape(Circle())
                                .padding(2)
                                .foregroundColor(.white)
                            
                        }
                    }
                    
                }
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
