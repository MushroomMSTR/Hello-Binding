//
//  Dish.swift
//  Hello-Binding
//
//  Created by NazarStf on 02.06.2023.
//

import SwiftUI

struct Dish: Identifiable {
	
	let id = UUID()
	let name: String
	let imageURL: String
	let isSpicy: Bool
}

extension Dish {
	
	static func all() -> [Dish] {
		
		return [
		
			Dish(name: "Kung Pow Chicken", imageURL: "kungpow", isSpicy: true),
			Dish(name: "Sweet and Sour Chicken", imageURL: "sweet", isSpicy: false),
			Dish(name: "Spicy Red Chicken", imageURL: "spicy", isSpicy: true)
			
		]
		
	}
	
}
