//
//  ContentView.swift
//  CommonBundle
//
//  Created by Wilson Xue on 2023/12/17.
//

import SwiftUI
import CommonBundle

struct ContentView: View {
    var body: some View {
        VStack {
            Image("image", bundle: .)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
