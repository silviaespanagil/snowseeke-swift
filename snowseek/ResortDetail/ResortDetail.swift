//
//  ResortDetail.swift
//  snowseek
//
//  Created by Silvia España on 26/10/21.
//

import SwiftUI

struct ResortDetail: View {
    
    let resort: Resort
    
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {
                Image(decorative: resort.id)
                    .resizable()
                    .scaledToFit()
                
                Group {
                    Text(resort.description)
                        .padding(.vertical)
                        .lineSpacing(10)
                    
                    HStack {
                        
                        Spacer()
                        
                        ResortExtraDetails(viewModel: ResortExtraDetailViewModel())
                        SkiDetailsView(resort: resort)
                        Spacer()
                    }
                    .font(.headline)
                    .foregroundColor(.secondary)
                    .padding(.top)
                    
                    Text("Facilities")
                        .font(.headline)
                    
                    Text(ListFormatter.localizedString(byJoining: resort.facilities))
                        .padding(.vertical)                }
                .padding(.horizontal)
            }
        }
        .navigationBarTitle(Text("\(resort.name), \(resort.country)"), displayMode: .inline)
    }
}

struct ResortDetail_Previews: PreviewProvider {
    static var previews: some View {
        ResortDetail(resort: Resort.example)
    }
}
