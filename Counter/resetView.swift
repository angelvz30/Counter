//
//  resetView.swift
//  Counter
//
//  Created by QHS on 1/13/25.
//

import SwiftUI

struct resetView: View {
    var body: some View {
        VStack {
            Button("Confirm reset") {
                confirmReset = true
                
            }
        }
    }
}

#Preview {
    resetView()
}
