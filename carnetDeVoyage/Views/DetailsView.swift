//
//  DetailsView.swift
//  carnetDeVoyage
//
//  Created by Apprenant122 on 09/06/2026.
//

import SwiftUI

struct DetailView: View {
    @Binding var place: Place
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "map.fill")
                .font(.system(size: 80))
                .foregroundStyle(.blue)
            
            Text(place.name)
                .font(.largeTitle)
                .bold()
            
            Text(place.country)
                .font(.title2)
                .foregroundStyle(.gray)
            
            Button {
                place.isVisited.toggle()
            } label: {
                Text(place.isVisited ? "Marquer comme à découvrir" : "Marquer comme visité")
                    .padding()
                    .background(.blue)
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            
            Spacer()
        }
        .padding()
        .navigationTitle("Détail")
    }
}
