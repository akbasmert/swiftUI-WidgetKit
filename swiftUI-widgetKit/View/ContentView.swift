//
//  ContentView.swift
//  swiftUI-widgetKit
//
//  Created by Mert AKBAŞ on 18.09.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ForEach(sehirlerDizisi) { ankara in
                AnkaraView(ankara: ankara)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
