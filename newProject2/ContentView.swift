//
//  ContentView.swift
//  newProject2
//
//  Created by Адам Дотмерзаев on 03.12.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var size = 300.0
    
    var body: some View {
            VStack(alignment: .leading) {
                Text("Марафон ")
                    .foregroundStyle(Color(.systemGray)) +
        
                Text("по SwiftUI ") +
                
                Text("«Отцовский Пинок»")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(.blue)
            }
            
            .frame(width: size, height: 200)
            .overlay {
                Rectangle()
                    .stroke(lineWidth: 1)
                    .foregroundStyle(.red)
            }
            
            
            Slider(value: $size, in: 100...300)
                .padding(.horizontal)
    }
}

#Preview {
    ContentView()
}
