//
//  SkiDetailsView.swift
//  snowseek
//
//  Created by Silvia España on 26/10/21.
//

import SwiftUI

struct SkiDetailsView: View {

    let resort: Resort

    var body: some View {
        VStack {
            Text("Elevation: \(resort.elevation)m")
            Text("Snow: \(resort.snowDepth)cm")
        }
    }
}

struct SkiDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        SkiDetailsView(resort: Resort.example)
    }
}
