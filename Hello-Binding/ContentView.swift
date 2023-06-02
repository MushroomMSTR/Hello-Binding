//
//  ContentView.swift
//  Hello-Binding
//
//  Created by NazarStf on 02.06.2023.
//

import SwiftUI

struct ContentView: View {
	var model = Dish.all()
	@State private var isSpicy = false
	
	var body: some View {
		SpicyList(model: model, isSpicy: $isSpicy)
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}

