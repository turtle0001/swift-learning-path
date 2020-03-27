//
//  ContentView.swift
//  BullEye
//
//  Created by Joash Tubaga on 3/27/20.
//  Copyright © 2020 Joash Tubaga. All rights reserved.
//

import SwiftUI

struct ContentView: View {
	
	@State var alertIsVisible: Bool = false
	
	var body: some View {
		VStack {
			Text("Welcome to my first app!")
				.fontWeight(.semibold)
				.foregroundColor(.green)
			Button(action: {
				print("Button pressed!")
				self.alertIsVisible = true
			}) {
				Text("Hit Me!")
			}
			.alert(isPresented: $alertIsVisible) { () -> Alert in
				return Alert(title: Text("Hello there!"), message: Text("This is my first pop-up!"), dismissButton: .default(Text("Awesome!")))
			}
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
