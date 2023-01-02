//
//  NewsfeedApp.swift
//  newsfeed_app
//

import Flutter
import FlutterPluginRegistrant
import SwiftUI

class FlutterDependencies: ObservableObject {
  let npsFlutterEngine = FlutterEngine(name: "flutter_nps_engine")

  init() {
    // Prepare a Flutter engine in advance.
    npsFlutterEngine.run()
    // # https://docs.flutter.dev/development/add-to-app/ios/add-flutter-screen
    GeneratedPluginRegistrant.register(with: self.npsFlutterEngine)
  }
}

@main
struct NewsfeedApp: App {

  // flutterDependencies will be injected using EnvironmentObject
  @StateObject var flutterDependencies = FlutterDependencies()

  var body: some Scene {
    WindowGroup {
      ContentView()
        .environmentObject(flutterDependencies)
    }
  }
}

extension String {
  func localized() -> String {
    return NSLocalizedString(
      self, tableName: "Localizable", bundle: .main, value: self, comment: self)
  }
}
