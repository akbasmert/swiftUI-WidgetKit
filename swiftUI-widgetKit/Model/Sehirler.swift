//
//  Sehirler.swift
//  swiftUI-widgetKit
//
//  Created by Mert AKBAŞ on 18.09.2022.
//

import Foundation

struct Sehirler :Identifiable,Codable{
    
    let gorselIsmi : String
    let isim : String
    let ulke : String
    
    var id : String{
        gorselIsmi
    }
}

let adana = Sehirler(gorselIsmi: "adana", isim: "Adana", ulke: "Türkiye")
let ankara = Sehirler(gorselIsmi: "ankara", isim: "Ankara", ulke: "Türkiye")
let izmir = Sehirler(gorselIsmi: "izmir", isim: "Izmir", ulke: "Türkiye")

let sehirlerDizisi = [ankara,adana,izmir]
