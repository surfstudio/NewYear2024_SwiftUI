//
//  ContentView.swift
//  NewYear2024
//
//  Created by Daria Leonova on 08.10.2023.
//

import SwiftUI

// fireworks
// hue rotation


struct ContentView: View {
    @State private var acceleration = 5
    var body: some View {
        ZStack {
            RoomView()
        }
    }
}

#Preview {
    ContentView()
}
