//
//  TabBarView.swift
//  Alarm
//
//  Created by Алина Власенко on 25.01.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            WorldTimeView()
                .tabItem {
                    Label("Час у світі", systemImage: "globe")
                }
            Alarm()
                .tabItem {
                    Label("Будильник", systemImage: "alarm")
                }
            StopwatchView()
                .tabItem {
                    Label("Секундомір", systemImage: "clock.fill")
                }
            TimerView()
                .tabItem {
                    Label("Таймер", systemImage: "timer")
                }
        }
        .tint(.orange)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
