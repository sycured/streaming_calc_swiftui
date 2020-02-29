//
//  ContentView.swift
//  streaming_calc_swiftui
//
//  Created by sycured on 2/29/20.
//  Copyright © 2020 sycured. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            VStack(alignment: .leading) {
                bwServerView()
            }.padding()
                .tabItem {
                    Text("Determine necessary server bandwidth")
                }
            VStack(alignment: .leading) {
                serverUsageBwView()
            }.padding()
                .tabItem {
                    Text("Determine the amount of data used for the streaming")
                }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
