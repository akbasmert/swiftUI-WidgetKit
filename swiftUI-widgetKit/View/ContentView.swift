//
//  ContentView.swift
//  swiftUI-widgetKit
//
//  Created by Mert AKBAŞ on 18.09.2022.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("ankara", store: UserDefaults(suiteName: "group.mert.swiftUI-widgetKit"))
    var ankaraData : Data = Data()
    var body: some View {
        VStack {
            ForEach(sehirlerDizisi) { ankara in
                AnkaraView(ankara: ankara).onTapGesture {
                    userDefaultsKaydet(ankara: ankara)
                }
            }
        }
        
    }
    
    func userDefaultsKaydet(ankara: Sehirler){
       
        
        if let ankaraData = try? JSONEncoder().encode(ankara){
            self.ankaraData = ankaraData
            print(ankara.isim)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
