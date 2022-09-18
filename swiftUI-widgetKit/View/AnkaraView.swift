//
//  AnkaraView.swift
//  swiftUI-widgetKit
//
//  Created by Mert AKBAŞ on 18.09.2022.
//

import SwiftUI

struct AnkaraView: View {
    
    let ankara : Sehirler
    var body: some View {
        HStack{
            OzleGorselView(image: Image(ankara.gorselIsmi)).frame(width: 100, height: 100, alignment: .center).padding()
            Spacer()
            VStack{
                Text(ankara.isim).font(.largeTitle).fontWeight(.bold).foregroundColor(.blue)
                Text(ankara.ulke).fontWeight(.bold)
            }
            Spacer()
        }.frame(width: UIScreen.main.bounds.width, height: 100, alignment: .center)
    }
}

struct AnkaraView_Previews: PreviewProvider {
    static var previews: some View {
        AnkaraView(ankara: ankara)
    }
}
