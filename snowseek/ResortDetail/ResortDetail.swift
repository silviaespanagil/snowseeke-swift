//
//  ResortDetail.swift
//  snowseek
//
//  Created by Silvia España on 26/10/21.
//

import SwiftUI

struct ResortDetail: View {
    
    let resort: Resort
    
    //Will tell if we are ina regular or compact size device
    
    @Environment(\.horizontalSizeClass) var sizeClass
    
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
                        
                        if sizeClass == .compact {
                            Spacer()
                            VStack { ResortExtraDetails(viewModel: ResortExtraDetailViewModel())}
                            VStack { SkiDetailsView(resort: resort) }
                            Spacer()
                        } else {
                            ResortExtraDetails(viewModel: ResortExtraDetailViewModel())
                            Spacer()
                            SkiDetailsView(resort: resort)
                        }
                    }
                    .font(.headline)
                    .foregroundColor(.secondary)
                    .padding(.top)
                    
                    Spacer()
                    Text("Facilities")
                        .font(.headline)
                    
                    //Stringify the facilities array
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
