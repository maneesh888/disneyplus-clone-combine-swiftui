//
//  MovieSectionView.swift
//  DisneyPlusApp
//
//  Created by Maneesh M on 11/02/23.
//

import SwiftUI

struct MovieSectionView: View {
    
    var movieSection: MovieSection
    @State private var selectedMovie: Movie?
    
    var body: some View {
        VStack(alignment: .leading){
            Text(movieSection.sectionName)
                .font(.title3)
                .bold()
                .foregroundColor(.gray)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 10) {
                    ForEach(movieSection.movies) { movie in
                        Button(action: {
                            self.selectedMovie = movie
                        }) {
                            Image(movie.posterImage)
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(10)
                                .frame(width:150)
                        }
                        .sheet(item: $selectedMovie) { movie in
                            //
                        }
                    }
                }
            }
        }.padding()
            
        
    }
}

struct MovieSectionView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            GradientBackgroundView()
            MovieSectionView(movieSection: .recommended)
        }
        
    }
}
