//
//  LandmarkList.swift
//  WatchDemo
//
//  Created by Anh Lê on 30/03/2023.
//

import SwiftUI

struct LandmarkList: View {
  @EnvironmentObject var modelData: ModelData
  @State var showFavoritesOnly: Bool = false
  
  var filteredLandmarks: [Landmark] {
    modelData.landmarks.filter { landmark in
      (!showFavoritesOnly || landmark.isFavorite)
    }
  }
  
    var body: some View {
      NavigationView {
        List {
          Toggle(isOn: $showFavoritesOnly) {
            Text("Favorites only")
          }
          ForEach(filteredLandmarks) { landmark in
            NavigationLink {
              LandmarkDetail(landmark: landmark)
            } label: {
              LandmarkRow(landmark: landmark)
            }
          }
        }
      }
      .navigationTitle("Landmarks")
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
      LandmarkList()
        .environmentObject(ModelData())
    }
}
