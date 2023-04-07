//
//  WatchDemoApp.swift
//  WatchDemo
//
//  Created by Anh Lê on 28/03/2023.
//

import SwiftUI

@main
struct WatchDemoApp: App {
  @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
            .environmentObject(modelData)
        }
      
      #if os(watchOS)
      WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
      #endif
    }
}
