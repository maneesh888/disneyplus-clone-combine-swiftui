//
//  CarouselView.swift
//  DisneyPlusApp
//
//  Created by Maneesh M on 12/03/23.
//

import SwiftUI

struct CarouselView: View {
    var promos: [Movie] = Movie.promos
    @State private var selectedMovie: Movie?
    
    var body: some View {
        HStack (alignment: .center) {
            ForEach(promos) { promo in
                ZStack(alignment: .bottom) {
                    Image(promo.promoImage)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(10)
                    Button {
                        self.selectedMovie = promo
                    } label: {
                        Text(promo.title)
                            .foregroundColor(.white)
                            .padding(.vertical, 5)
                            .frame(maxWidth:.infinity)
                            .background(Color.black.opacity(0.6).blur(radius: 3.0))
                        
                    }
                    .sheet(item: self.$selectedMovie) { movie in
                        // movie detail here
                    }

                }.frame(width:400)
            }
        }.modifier(ScrollingHStackViewModifier(items: promos.count, itemWidth: UIScreen.main.bounds.width * 0.93, itemSpacing: 30))
    }
}

struct CarouselView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselView()
    }
}
