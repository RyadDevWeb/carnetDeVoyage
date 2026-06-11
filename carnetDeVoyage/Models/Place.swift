//
//  Place.swift
//  carnetDeVoyage
//
//  Created by Apprenant122 on 09/06/2026.
//

import SwiftUI

struct Place: Identifiable {
    let id = UUID()
    var name: String
    var country: String
    var isVisited: Bool
}

struct PlaceView: View {
    @State private var places = [
        Place(name: "Paris", country: "France", isVisited: true),
        Place(name: "Tokyo", country: "Japon", isVisited: false),
        Place(name: "Rome", country: "Italie", isVisited: false)
    ]
    
    @State private var showAddView = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach($places) { $place in
                    NavigationLink {
                        DetailView(place: $place)
                    } label: {
                        HStack {
                            Image(systemName: place.isVisited ? "checkmark.circle.fill" : "circle")
                            
                            VStack(alignment: .leading) {
                                Text(place.name)
                                    .font(.headline)
                                Text(place.country)
                                    .font(.subheadline)
                                    .foregroundStyle(.gray)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Mon Carnet")
            .toolbar {
                Button {
                    showAddView = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showAddView) {
                AddPlaceView(places: $places)
            }
        }
    }
}
