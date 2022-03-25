//
//  staticViewModel.swift
//  staticContentAPItask
//
//  Created by Byot on 25/03/22.
//

import UIKit

class staticViewModel: NSObject {

    func callStaticContentAPI(url:String, result: @escaping(Result<staticContentBase?,ApiError>) -> Void){
        ApiManager.shared.fetch(baseUrl: url, methodType: .post, contentType: .applicationJson, param: "", completion: result)
    }
}
