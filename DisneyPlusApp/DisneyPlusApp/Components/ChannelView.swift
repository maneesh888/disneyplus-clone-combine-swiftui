//
//  ChannelView.swift
//  DisneyPlusApp
//
//  Created by Maneesh M on 11/02/23.
//

import SwiftUI

struct ChannelView: View {
    
    private var channels = Channel.allCases
    
    var body: some View {
        HStack {
            ForEach(channels, id:\.self) {
                channel in
                Button(action: {}) {
                    Image(channel.rawValue)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }.background(
                    LinearGradient(gradient: Gradient(colors: [ColorContant.darkBluishGrayColor,ColorContant.darkGrayColor]), startPoint: .top, endPoint: .bottom)
                )
                .cornerRadius(5)
                .shadow(radius: 10)
            }
        }.padding()
    }
}

struct ChannelView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            GradientBackgroundView()
            ChannelView()
        }
    }
}
