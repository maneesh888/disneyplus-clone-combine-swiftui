//
//  SplashView.swift
//  DisneyPlusApp
//
//  Created by Maneesh M on 23/01/23.
//

import SwiftUI

struct SplashView: View {
    @State private var isActive = false
    var body: some View {
        ZStack {
            Color.black
            VStack {
                if isActive {
                    ContentView(tabViewRouter: TabViewRouter())
                }else{
                    SplashAnimationView().frame(width: 300,height: 300)
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5, execute: {
                    self.isActive.toggle()
                })
            }
        }
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
