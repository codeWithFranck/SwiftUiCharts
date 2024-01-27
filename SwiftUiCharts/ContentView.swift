//
//  ContentView.swift
//  SwiftUiCharts
//
//  Created by Franck Dalin Mbeutcha Tchuisseu on 2024-01-27.
//

import SwiftUI

struct Sport : Identifiable {
    let id = UUID()
    let name: String
    let percentage: Double
}

struct ContentView: View {
    
    @State private var sportData: [Sport] = [
        .init(name: "Basketball", percentage: 10),
        .init(name: "Hockey", percentage: 50),
        .init(name: "Soccer", percentage: 40)
    ]
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
