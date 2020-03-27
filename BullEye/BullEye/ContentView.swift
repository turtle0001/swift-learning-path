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
	@State var sliderValue: Double = 50.0
	
	var body: some View {
		VStack {
			Spacer()
			// Target row
			HStack {
				Text("Put the bullseye as close as you can to:")
				Text("100")
			}
			Spacer()
			// Slider row
			HStack {
				Text("1")
				Slider(value: self.$sliderValue, in: 1...100)
				Text("100")
			}
			Spacer()
			// Button row
			Button(action: {
				print("Button pressed!")
				self.alertIsVisible = true
			}) {
				Text("Hit Me!")
			}
			.alert(isPresented: $alertIsVisible) { () -> Alert in
				let roundedValue: Int = Int(sliderValue.rounded())
				return Alert(title: Text("Hello there!"), message: Text("The value of the slider is now: \(roundedValue)"), dismissButton: .default(Text("Awesome!")))
			}
			 Spacer()
			// Score Row
			HStack {
				Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
					Text("Start over")
					Spacer()
					HStack {
						Text("Score:")
						Text("999999:")
					}
					Spacer()
					HStack {
						Text("Round:")
						Text("999:")
					}
					Spacer()
					Button(action: {}) {
						Text("Info")
					}
				}
				.padding(.bottom, 20)
			}
			
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView().previewLayout(.fixed(width: 896, height: 414))
	}
}
