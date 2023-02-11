//
//  SearchView.swift
//  DisneyPlusApp
//
//  Created by Maneesh M on 23/01/23.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        ZStack {
            GradientBackgroundView()
            Text("Search View").foregroundColor(.white)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
