//
//  ResortExtraDetails.swift
//  snowseek
//
//  Created by Silvia España on 26/10/21.
//

import SwiftUI

struct ResortExtraDetails: View {
    
    @StateObject var viewModel: ResortExtraDetailViewModel
    
    var body: some View {
        
        VStack {
            
            Text("Size: \(viewModel.resortSize)")
            Text("Price: \(viewModel.resortPrice)")
            
        }
    }
}

struct ResortExtraDetails_Previews: PreviewProvider {
    static var previews: some View {
        ResortExtraDetails(viewModel: ResortExtraDetailViewModel())
    }
}
