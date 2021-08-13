//
//  CoverImageView.swift
//  Wildlife
//
//  Created by Ruchir on 8/12/21.
//

import SwiftUI

struct CoverImageView: View {
    let animalInfo: [Animal_Info] = Bundle.main.decode("animals.json")
    var body: some View {
        //Text("\(animalData.count)")
        TabView {
            ForEach(0 ..< 5) { item in
                Image(animalInfo[item].name)
                    .resizable()
                    .scaledToFit()
            }
        }.tabViewStyle(PageTabViewStyle())
    }
}

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView().previewLayout(.fixed(width: 400, height: 500))
    }
}
