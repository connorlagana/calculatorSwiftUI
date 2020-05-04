//
//  ContentView.swift
//  CalculatorSwiftUI
//
//  Created by Connor Lagana on 5/4/20.
//  Copyright © 2020 Connor Lagana. All rights reserved.
//

import SwiftUI

enum  CalculatorButton: String {
    case zero, one, two, three, four, five, six, seven, eight, nine
    case equals, plus, minus, multiply, divide
    case ac, plusminus, percent
    
    var title: String {
        switch self {
        case .zero: return "0"
        case .one: return "1"
        case .two: return "2"
        case .three: return "3"
        case .four: return "4"
        case .five: return "5"
        case .six: return "6"
        case .seven: return "7"
        case .eight: return "8"
        case .nine: return "9"
        case .plus: return "+"
        case .minus: return "-"
        case .equals: return "="
        case .divide: return "÷"
        case .multiply: return "x"
        case .plusminus: return "±"
        case .ac: return "AC"
        default:
            return "Con"
        }
    }
    
    var backgroundColor: Color {
        switch self {
        case .zero, .one, .two, .three, .four, .five, .six, .seven, .eight, .nine:
            return Color(.darkGray)
        case .ac:
            return Color(.lightGray)
        default:
            return .orange
        }
    }
}

struct ContentView: View {
    
    let buttons: [[CalculatorButton]] = [
        [.seven, .eight, .nine, .multiply],
        [.four, .five, .six, .minus],
        [.one, .two, .three, .plus]
    ]
    
    var body: some View {
        ZStack (alignment: .bottom) {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack (spacing: 12) {
                HStack (spacing: 12) {
                    Spacer()
                    Text("69").foregroundColor(.white)
                        .font(.system(size: 64))
                }.padding(16)
                
                ForEach(buttons, id: \.self) { row in
                    HStack {
                        ForEach(row, id: \.self) { button in
                            Text(button.title)
                                .font(.system(size: 32))
                                .frame(width: self.buttonFrame(), height: self.buttonFrame())
                                .background(button.backgroundColor)
                                .clipShape(Circle())
                                
                                .foregroundColor(.white)
                            
                        }
                    }
                    
                }
                
            }.padding(.bottom)
        }
        
    }
    
    func buttonFrame() -> CGFloat {
//        5 gaps between each button
        return (UIScreen.main.bounds.width - 5 * 12) / 4
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
