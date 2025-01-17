//
//  ContentView.swift
//  Counter
//
//  Created by QHS on 1/6/25.
//

import SwiftUI

struct ContentView: View {
    @State var Counter: Int = 0 //current count
    @State var counterDisplay: String = "0" //Display counter
    @State var showingReset = false
    @State var confirmReset = false
    var body: some View { //entire view
        NavigationStack{ //Navigation stack view
            VStack { //VStack view
                Text(counterDisplay)
                    .font(.largeTitle)
                Button("Increment") { //Counter button
                    Counter += 1
                    counterDisplay = String(Counter)
                } // Close counter button
                Button("Reset") { //Reset counter button
                    showingReset = true
                } //Close reset counter button
            } //Close VStack view
                .navigationDestination(isPresented: $showingReset) { //Show reset view
                    resetView()
                } //Close show reset view
        } //Close navigation stack view
    } //close View
}





#Preview {
    ContentView()
}
