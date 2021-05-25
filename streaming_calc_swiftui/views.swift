//
//  views.swift
//  streaming_calc_swiftui
//
//  Created by sycured on 2/29/20.
//  Copyright © 2020 sycured. All rights reserved.
//

import SwiftUI
import SwiftValidators

let nol = "Number of listeners"
let bekb = "Bitrate en kb/s"

struct bwServerView: View {
    @State var nblisteners: String = ""
    @State var bitrate: String = ""

    var body: some View {
        VStack(alignment: .leading) {
            Text(nol)
                .font(.callout)
                .bold()
            TextField(nol, text: $nblisteners).textFieldStyle(RoundedBorderTextFieldStyle())
            Text(bekb)
                .font(.callout)
                .bold()
            TextField(bekb, text: $bitrate).textFieldStyle(RoundedBorderTextFieldStyle())
            if Validator.isFloat().apply(nblisteners) && Validator.isFloat().apply(bitrate) {
                Text("Server bandwidth (Mib/s): " + String(bwServer(Float(nblisteners).unsafelyUnwrapped, Float(bitrate).unsafelyUnwrapped))).font(.subheadline).bold()
            }
        }
    }
}

struct serverUsageBwView: View {
    @State var nblisteners: String = ""
    @State var bitrate: String = ""
    @State var nbdays: String = ""
    @State var nbhours: String = ""

    var body: some View {
        VStack(alignment: .leading) {
            Text(nol)
                .font(.callout)
                .bold()
            TextField(nol, text: $nblisteners).textFieldStyle(RoundedBorderTextFieldStyle())
            Text(bekb)
                .font(.callout)
                .bold()
            TextField(bekb, text: $bitrate).textFieldStyle(RoundedBorderTextFieldStyle())
            Text("Number of days")
                .font(.callout)
                .bold()
            TextField("Number of days", text: $nbdays).textFieldStyle(RoundedBorderTextFieldStyle())
            Text("Number of hours by day")
                .font(.callout)
                .bold()
            TextField("Number of hours by day", text: $nbhours).textFieldStyle(RoundedBorderTextFieldStyle())
            if Validator.isFloat().apply(nblisteners) && Validator.isFloat().apply(bitrate) && Validator.isFloat().apply(nbdays) && Validator.isFloat().apply(nbhours) {
                Text("Bandwidth used (GiB): " + String(serverUsageBw(Float(nblisteners).unsafelyUnwrapped, Float(bitrate).unsafelyUnwrapped, Float(nbdays).unsafelyUnwrapped, Float(nbhours).unsafelyUnwrapped))).font(.subheadline).bold()
            }
        }
    }
}

struct bwServerView_Previews: PreviewProvider {
    static var previews: some View {
        bwServerView()
    }
}

struct serverUsageBwView_Previews: PreviewProvider {
    static var previews: some View {
        serverUsageBwView()
    }
}
