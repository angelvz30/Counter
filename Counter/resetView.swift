//
//  resetView.swift
//  Counter
//
//  Created by QHS on 1/13/25.
//

import SwiftUI

struct resetView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var counter: Int //current count
    @Binding var counterDisplay: String //Display counter
    var body: some View {
        VStack {
            Text("Are you sure you want to reset the counter?")
            HStack {
                Button("Confirm reset ") {
                    counterDisplay = "0"
                    counter = 0
                    dismiss()
                }
                .buttonStyle(PlainButtonStyle())
                .padding(.leading)
                .foregroundColor(.white)
                .background(Color.blue)
                Button("Cancel") {
                    dismiss()
                    }
                }
            }
        }
    }
    #Preview {
        struct Preview: View {
            @State var count = 0
            @State var stringCount = "0"
            var body: some View {
                resetView(counter: $count, counterDisplay: $stringCount)
            }
        }
        return Preview()
    }

