//
//  SpicyList.swift
//  Hello-Binding
//
//  Created by NazarStf on 02.06.2023.
//

import SwiftUI

struct SpicyList: View {
	var model: [Dish]
	@Binding var isSpicy: Bool
	
	var body: some View {
		List {
			Toggle(isOn: $isSpicy) {
				Text("Spicy")
					.font(.title2)
			}
			
			ForEach(model.filter({ $0.isSpicy == self.isSpicy })) { dish in
				HStack {
					Image(dish.imageURL)
						.resizable()
						.frame(width: 100, height: 100)
					
					Text(dish.name)
						.font(.title)
						.lineLimit(nil)
					
					Spacer()
					
					if dish.isSpicy {
						Image("spicy-icon")
							.resizable()
							.frame(width: 35, height: 35)
					}
				}
			}
		}
	}
}

struct SpicyList_Previews: PreviewProvider {
	static var previews: some View {
		SpicyList(model: Dish.all(), isSpicy: .constant(false))
	}
}
