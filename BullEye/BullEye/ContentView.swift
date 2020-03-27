//
//  ContentView.swift
//  BullEye
//
//  Created by Joash Tubaga on 3/27/20.
//  Copyright © 2020 Joash Tubaga. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Welcome to my first app!")
                .fontWeight(.semibold)
                .foregroundColor(.green)
            Button(action: {}) {
                Text("Hit Me!")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
