//
//  ContentView.swift
//  Counter
//
//  Created by QHS on 1/6/25.
//

import SwiftUI

struct ContentView: View {
    @State var Counter: Int = 0
    @State var counterDisplay: String = "0"
    @State var showingReset = false
    var body: some View {
        NavigationStack{
            VStack {
                
                Text(counterDisplay)
                    .font(.largeTitle)
                
                Button("Increment") {
                    Counter += 1
                    counterDisplay = String(Counter)
                    
                }
                Button("Reset") {
                    
                }
            }
        }
    }
}
#Preview {
    ContentView()
}
