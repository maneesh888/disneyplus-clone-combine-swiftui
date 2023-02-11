//
//  HomeView.swift
//  DisneyPlusApp
//
//  Created by Maneesh M on 23/01/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            GradientBackgroundView()
            Text("Home View").foregroundColor(.white)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
