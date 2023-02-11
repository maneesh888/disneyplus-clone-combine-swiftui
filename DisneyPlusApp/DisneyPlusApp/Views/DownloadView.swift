//
//  DownloadView.swift
//  DisneyPlusApp
//
//  Created by Maneesh M on 23/01/23.
//

import SwiftUI

struct DownloadView: View {
    var body: some View {
        ZStack {
            GradientBackgroundView()
            Text("Download View").foregroundColor(.white)
        }
    }
}

struct DownloadView_Previews: PreviewProvider {
    static var previews: some View {
        DownloadView()
    }
}
