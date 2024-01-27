//
//  ContentView.swift
//  SwiftUiCharts
//
//  Created by Franck Dalin Mbeutcha Tchuisseu on 2024-01-27.
//

import SwiftUI
import Charts

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
            Text("Canadians' favorite sports")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            
            Chart(sportData) {data in
                SectorMark(
                    angle: .value(Text(verbatim: data.name), data.percentage),
                    outerRadius: data.name == "Basketball" ? 150 : 120,
                    angularInset: 2.0
                    
                )
                .foregroundStyle(by: .value("Name", data.name))
                .annotation(position: .overlay) {
                    Text(String(format: "%.0f", data.percentage))
                        .font(.headline)
                        .foregroundStyle(.white)
                }
            }
            .frame(height: 500)
        .padding()
        }
    }
}

#Preview {
    ContentView()
}
