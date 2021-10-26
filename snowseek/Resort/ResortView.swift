//
//  ResortView.swift
//  snowseek
//
//  Created by Silvia España on 26/10/21.
//

import SwiftUI

struct ResortView: View {
    
    let resorts: [Resort] = Bundle.main.decode("resorts.json")
    
    var body: some View {
        
        NavigationView {
            List(resorts) { resort in
                NavigationLink(destination: Text(resort.name)) {
                    Image(resort.country)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 25)
                        .clipShape(
                            RoundedRectangle(cornerRadius: 5)
                        )
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.black, lineWidth: 1)
                        )

                    VStack(alignment: .leading) {
                        Text(resort.name)
                            .font(.headline)
                        Text("\(resort.runs) runs")
                            .foregroundColor(.secondary)
                    }
                }
            }
            .navigationBarTitle("Resorts")
        }
    }
}

struct ResortView_Previews: PreviewProvider {
    static var previews: some View {
        ResortView()
    }
}
