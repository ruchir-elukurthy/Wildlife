//
//  AnimalListView.swift
//  Wildlife
//
//  Created by Ruchir on 8/12/21.
//

import SwiftUI

struct AnimalListView: View {
    
    let animal: Animal_Info
    
    var body: some View {

            HStack(alignment: .center, spacing: 15) {
                Image(animal.name)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 90, height: 90)
                    .clipShape(
                        RoundedRectangle(cornerRadius: 12)
                    )
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 8) {
                    Text(animal.name)
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundColor(.accentColor)
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis augue eu leo sodales gravida mollis")
                        .font(.footnote)
                        .fontWeight(.heavy)
                        .foregroundColor(.accentColor)
                }
                    
            }
    }
}

struct AnimalListView_Previews: PreviewProvider {
    static let animal: [Animal_Info] = Bundle.main.decode("animals.json")
    static var previews: some View {
        AnimalListView(animal: animal[1])
            .previewLayout(.fixed(width: 300, height: 100))
    }}
