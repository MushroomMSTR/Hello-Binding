//
//  ContentView.swift
//  Hello-Binding
//
//  Created by NazarStf on 02.06.2023.
//

import SwiftUI

struct ContentView: View {
	@State private var selectedPage: Int? = nil
	
	var body: some View {
		NavigationView {
			List {
				NavigationLink(destination: SpicyList(), tag: 1, selection: $selectedPage) {
					Text("Spicy List") // 'init(destination:tag:selection:label:)' was deprecated in iOS 16.0: use NavigationLink(value:label:) inside a List within a NavigationStack or NavigationSplitView
				}
				// Add more navigation links for other pages
				
			}
			.listStyle(PlainListStyle())
			.onChange(of: selectedPage) { newValue in
				if newValue == 1 {
					// Handle selection for Spicy List page
				}
				// Add more cases for other pages
			}
			.navigationBarTitle("Hello Binding")
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}

