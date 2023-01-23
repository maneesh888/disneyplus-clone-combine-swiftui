//
//  TabViewRouter.swift
//  DisneyPlusApp
//
//  Created by Maneesh M on 23/01/23.
//

import Foundation

final class TabViewRouter: ObservableObject {
    @Published var currentPage: Page = .home
    
}

enum Page {
    case home, search, downloads, profile
}
