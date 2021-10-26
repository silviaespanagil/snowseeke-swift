//
//  ResortExtraDetailsViewModel.swift
//  snowseek
//
//  Created by Silvia España on 26/10/21.
//

import Foundation
import SwiftUI

class ResortExtraDetailViewModel: ObservableObject {
    
    let resort: Resort
    
    var resortSize: String {
        switch resort.size {
        case 1:
            return "Small"
        case 2:
            return "Average"
        default:
            return "Large"
        }
    }
    
    var resortPrice: String {
        String(repeating: "$", count: resort.price)
    }
    
    init(){
        resort = Resort.example
    }
    
}
