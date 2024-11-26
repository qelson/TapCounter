//
//  ContentView.swift
//  TapCounter
//
//  Created by Quin on 11/25/24.
//

import SwiftUI

struct ContentView: View {
    @State private var count = 0
    
    var body: some View {
        VStack(spacing: 20) {
            // Display the count
            Text("\(count)")
                .font(.largeTitle)
                .padding()
            
            // Increment button
            Button(action: {
                count += 1
            }) {
                Text("Tap Me to count")
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            // Reset button
            Button(action: {
                count = 0
            }) {
                Text("Reset")
                    .font(.title)
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
