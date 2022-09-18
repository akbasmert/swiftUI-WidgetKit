//
//  widgetSehirler.swift
//  widgetSehirler
//
//  Created by Mert AKBAŞ on 18.09.2022.
//

import WidgetKit
import SwiftUI
import Intents

struct Provider: IntentTimelineProvider {
    @AppStorage("ankara", store: UserDefaults(suiteName: "group.mert.swiftUI-widgetKit"))
    var ankaraData : Data = Data()
    
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), configuration: ConfigurationIntent(), ankara: Sehirler(gorselIsmi: "ankara", isim: "Ankara", ulke: "Türkiye"))
    }

    func getSnapshot(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        if let ankara = try? JSONDecoder().decode(Sehirler.self, from: ankaraData){
            let entry = SimpleEntry(date: Date(), configuration: configuration, ankara: ankara)
            completion(entry) // getSnapshot içine kaydettiğimiz userdefaultsu burada gösteriyoruz
        }
    }

    func getTimeline(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        
        if let ankara = try? JSONDecoder().decode(Sehirler.self, from: ankaraData){
            let entry = SimpleEntry(date: Date(), configuration: configuration, ankara: ankara)
            let timeline =  Timeline(entries: [entry], policy: .never)
            completion(timeline) // getSnapshot içine kaydettiğimiz userdefaultsu burada gösteriyoruz
        }
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let configuration: ConfigurationIntent
    let ankara : Sehirler
}

struct widgetSehirlerEntryView : View {
    var entry: Provider.Entry

    var body: some View {
        
        // Widget te görselimizi gösterdik.
        OzleGorselView(image: Image(entry.ankara.gorselIsmi))
    }
}

@main
struct widgetSehirler: Widget {
    let kind: String = "widgetSehirler"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            widgetSehirlerEntryView(entry: entry)
        }
        .configurationDisplayName("Widget Seçeneklerimiz") // Kullanıcı widget seçerken bunlar gözükecek.
        .description("Örnek Widget Görünümü")
    }
}
