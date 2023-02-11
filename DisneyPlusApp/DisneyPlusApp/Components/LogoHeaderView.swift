//
//  LogoHeaderView.swift
//  DisneyPlusApp
//
//  Created by Maneesh M on 11/02/23.
//

import SwiftUI

struct LogoHeaderView: View {
    var body: some View {
        Image("logo")
            .resizable()
            .scaledToFit()
    }
}

struct LogoHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            GradientBackgroundView()
            LogoHeaderView()
        }
        
    }
}
