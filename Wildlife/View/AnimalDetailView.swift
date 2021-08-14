//
//  AnimalDetailView.swift
//  Wildlife
//
//  Created by Ruchir on 8/13/21.
//

import SwiftUI

struct AnimalDetailView: View {
    
    let animal: Animal_Info
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                Image(animal.name)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Text(animal.name)
                    .padding()
                    .foregroundColor(.orange)
                    .font(.headline)
            }
        }
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    static let animal: [Animal_Info] = Bundle.main.decode("animals.json")
    static var previews: some View {
        AnimalDetailView(animal: animal[0])
    }
}
