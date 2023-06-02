//
//  ContentView.swift
//  Hello-Binding
//
//  Created by NazarStf on 02.06.2023.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		NavigationView {
			List {
				NavigationLink(destination: SpicyList()) {
					Text("Spicy List")
				}
				// Add more navigation links for other pages
				
			}
			.listStyle(PlainListStyle())
			.navigationBarTitle("Section 5")
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}

