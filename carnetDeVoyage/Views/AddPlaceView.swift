//
//  AddPlaceView.swift
//  carnetDeVoyage
//
//  Created by Apprenant122 on 09/06/2026.
//

import SwiftUI


struct AddPlaceView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var places: [Place]
    
    @State private var name = ""
    @State private var country = ""
    @State private var isVisited = false
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("Nom du lieu", text: $name)
                TextField("Pays", text: $country)
                
                Toggle("Déjà visité", isOn: $isVisited)
            }
            .navigationTitle("Ajouter")
            .toolbar {
                Button("Enregistrer") {
                    let newPlace = Place(
                        name: name,
                        country: country,
                        isVisited: isVisited
                    )
                    
                    places.append(newPlace)
                    dismiss()
                }
            }
        }
    }
}
