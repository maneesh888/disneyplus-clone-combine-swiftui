//
//  GradientBackgroundView.swift
//  DisneyPlusApp
//
//  Created by Maneesh M on 11/02/23.
//

import SwiftUI

struct GradientBackgroundView: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [ColorContant.darkGrayColor, ColorContant.darkBluishGrayColor]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
        
    }
}

struct GradientBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        GradientBackgroundView()
    }
}
