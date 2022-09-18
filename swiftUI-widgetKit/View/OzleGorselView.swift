//
//  OzleGorselView.swift
//  swiftUI-widgetKit
//
//  Created by Mert AKBAŞ on 18.09.2022.
//

import SwiftUI

struct OzleGorselView: View {
    var image : Image
    var body: some View {
        image.resizable().aspectRatio( contentMode: .fit).clipShape(Circle()).overlay(Circle().stroke(Color.blue, lineWidth: 5)).shadow(radius: 10)
    }
}

struct OzleGorselView_Previews: PreviewProvider {
    static var previews: some View {
        OzleGorselView(image: Image("ankara"))
    }
}
