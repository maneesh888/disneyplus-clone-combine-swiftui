//
//  ProfileView.swift
//  DisneyPlusApp
//
//  Created by Maneesh M on 23/01/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack {
            GradientBackgroundView()
            Text("Profile View").foregroundColor(.white)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
