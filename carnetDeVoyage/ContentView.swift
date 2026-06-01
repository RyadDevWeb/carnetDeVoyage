//
//  ContentView.swift
//  carnetDeVoyage
//
//  Created by Apprenant122 on 01/06/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Carnet de voyage !")
                .font( .system(size: 40))
            Image(systemName: "person")
                .imageScale(.large)
                .foregroundStyle(.tint)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
