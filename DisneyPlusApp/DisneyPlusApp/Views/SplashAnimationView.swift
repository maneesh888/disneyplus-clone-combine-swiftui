//
//  SplashAnimationView.swift
//  DisneyPlusApp
//
//  Created by Maneesh M on 23/01/23.
//

import SwiftUI
import SwiftyGif

struct SplashAnimationView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> some UIView {
        
        let name = "disneyPlusAnimated"
        let view = UIView(frame: .zero)
        
        do{
            let gif = try UIImage(gifName: name)
            let imageView = UIImageView(gifImage: gif, loopCount: 1)
            imageView.translatesAutoresizingMaskIntoConstraints = false
            imageView.frame = view.bounds
            
            view.addSubview(imageView)
            
            imageView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            imageView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        } catch {
            print(error)
        }
        
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
}
