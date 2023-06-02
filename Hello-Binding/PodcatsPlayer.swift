//
//  PodcatsPlayer.swift
//  Hello-Binding
//
//  Created by NazarStf on 02.06.2023.
//

import SwiftUI

struct PodcatsPlayer: View {
	
	let episode = Episode(name: "Macbreak Weekly", track: "WWDC 2019")
	
	@State private var isPlaying = false
	
    var body: some View {
		
		VStack {
			Text(self.episode.name)
				.font(.title)
				.foregroundColor(self.isPlaying ? .green : .black)
			Text(self.episode.track)
				.foregroundColor(.secondary)
			
			PlayButton(isPlaying: $isPlaying)
		}
    }
}

struct PlayButton: View {
	
	@Binding var isPlaying: Bool
	
	var body: some View {
		Button("Play") {
			self.isPlaying.toggle()
		}
		.padding(12)
	}
	
}

struct PodcatsPlayer_Previews: PreviewProvider {
    static var previews: some View {
        PodcatsPlayer()
    }
}
