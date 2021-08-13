//
//  ContentView.swift
//  Wildlife
//
//  Created by Ruchir on 8/9/21.
//

import SwiftUI

struct ContentView: View {
    
    let animal: [Animal_Info] = Bundle.main.decode("animals.json")
    
    var body: some View {
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 300)
                ForEach (animal) { animal in
                    AnimalListView(animal: animal)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
