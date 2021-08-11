//
//  MainView.swift
//  Wildlife
//
//  Created by Ruchir on 8/10/21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("Browse")
                }
            VideoView()
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("Video")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
