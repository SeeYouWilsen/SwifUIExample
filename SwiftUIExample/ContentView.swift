//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by Wilson Xue on 2023/12/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Text")
            Color(.bg).frame(width: 100,height: 100)
        }
        .padding()
    }
}

#Preview {
    ContentView().environment(\.locale,.init(identifier:"en"))
}
