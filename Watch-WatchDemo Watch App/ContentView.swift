//
//  ContentView.swift
//  Watch-WatchDemo Watch App
//
//  Created by Anh Lê on 07/04/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        .environmentObject(ModelData())
    }
}
