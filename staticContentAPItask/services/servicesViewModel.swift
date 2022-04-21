//
//  servicesViewModel.swift
//  staticContentAPItask
//
//  Created by Byot on 26/03/22.
//

import UIKit

class servicesViewModel: NSObject {
    
    
    func callserviceAPI(url:String, result: @escaping(Result<listing_Base?,ApiError>) -> Void){
        ApiManager.shared.fetch(baseUrl: url, methodType: .post, contentType: .applicationJson, param: "", completion: result)
    }
}
