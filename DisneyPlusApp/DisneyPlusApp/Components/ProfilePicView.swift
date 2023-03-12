//
//  ProfilePicView.swift
//  DisneyPlusApp
//
//  Created by Maneesh M on 12/03/23.
//

import SwiftUI

struct ProfilePicView: View {
    var profile: Profile
    
    var body: some View {
        VStack{
            Text(profile.avatar)
                .font(.system(size:80))
                .padding()
                .background(RadialGradient(gradient: Gradient(colors: [profile.backColor,.white]), center: .center, startRadius: 10, endRadius: 100).clipShape(Circle()))
                .shadow(color: ColorContant.darkGrayColor, radius: 5,x: 5,y:5)
                .shadow(color: ColorContant.darkGrayColor, radius: 5, x: -5,y:-5)
            Text(profile.name)
                .foregroundColor(.white)
                .bold()
            
        }
    }
}

struct ProfilePicView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            GradientBackgroundView()
            ProfilePicView(profile: Profile(name: "Tiger", avatar: "🐯", backColor: .purple))
        }
        
    }
}
