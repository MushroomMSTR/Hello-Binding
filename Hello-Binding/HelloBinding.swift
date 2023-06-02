//
//  HelloBinding.swift
//  Hello-Binding
//
//  Created by NazarStf on 02.06.2023.
//

import SwiftUI

struct HelloBinding: View {
	@State private var name: String = ""
	
	var body: some View {
		VStack {
			Text("Hello, \(name)!")
				.font(.title)
				.padding()
			TextField("Enter your name", text: $name)
				.padding()
			Spacer()
		}
		.navigationBarTitle("Hello Binding")
	}
}

struct HelloBinding_Previews: PreviewProvider {
    static var previews: some View {
        HelloBinding()
    }
}
