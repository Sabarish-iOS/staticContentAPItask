//
//  API Manager.swift
//  staticContentAPItask
//
//  Created by Byot on 25/03/22.
//

import Foundation

enum MethodType : String {
    case get = "GET"
    case post = "POST"
}

enum ContentType : String {
    case applicationJson = "application/json"
}

enum ApiError : Error {
    case errorMsg(message:String)
    
    var errorDescription:String {
        switch self {
        case let .errorMsg(message): return message
        }
    }
}

class ApiManager {
    
    static let shared = ApiManager()
    
    fileprivate init() {}
    
    let session = URLSession.shared
    
    var baseUrl:URL?
    
    func fetch<T:Codable,R:Codable>(baseUrl:String, methodType:MethodType, contentType:ContentType, param: R? = nil,completion: @escaping(Result<T,ApiError>)->()){
        do {
            let url = URL(string: baseUrl)
            var urlRequest = URLRequest(url: url!)
            urlRequest.httpMethod = methodType.rawValue
            urlRequest.addValue("Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiNzhiNTIwNmIyOGIwMzQ4MDYzZjdhMDU1ZjhjNWQ2MmMxYzNkZjE3MTBjOTdkYmI3Y2FmYTgwNTJlOTFiN2NiMDNhYjVhNjIwMWVkM2MzOWQiLCJpYXQiOjE2NDgxOTQ5MDEsIm5iZiI6MTY0ODE5NDkwMSwiZXhwIjoxNjc5NzMwOTAxLCJzdWIiOiIzMzY4Iiwic2NvcGVzIjpbXX0.xue1n54Yt0WjMSaIJvI2w6xr_p49GCq2pDRv13nX_B-2FWXGEgAOGWz5ixxw9pqzwCfBHeAW54E6bl1FnHtU1G4G42hbrSshbNzMdk6_cEBtJJS-IxEcFhMfyTfefmd-Z8dth_oI7yzvG7pEbnnwlPOgWHjuKWl4N5ObgjLlUFFyiTvWqIhngWCMtDyhDSTUWvLqVNVc7lNmQM-pn2F8Wxk5aejf4WhgdOZc_hH8v5znlD6sQ_TKeDyMNYMx5Nh07ntE8ewyG2WjnGaY-afrTptOv0ntTRSL_WX2Angw8DJEJKLjxFIWy9BWKawlCNhbI1rHTU6P0Zk6TYJ61HpwkQUU1mMY2l49259N6KS1XWjqiByX8UONbcLnin4NvUyxA8q91_n9kRaSCHcRfssxDFw7QdZmuIolHIJMo1WnHFaP1PiRj8rBFWkD3QzDGEW0duR63AQ_wna88IBjpaNDgWqdY2TbF-VDwklBcfHTyE2zC43gMaCoWiyHzRWEAdO-oP_PJ4IfJdhUJHxB0zovaiIHeg9Frhj_gJnGHqWUlNROw7YUoz0DiIDuLDnwhpa4FKMFfxHxyp6-Yogxl3s3uHOeg0KcBhf4MnzsKgOebixcKAB_NVHzzzzRaJDVBfzXnRnjj-yDO1dRWsP6TJZOKqNUDZFDN8PnQj5lmGWuedo", forHTTPHeaderField: "Authorization")
            urlRequest.addValue("Content-Type", forHTTPHeaderField: "Application/json")
          
            if methodType == .post, (param != nil){
                if contentType == .applicationJson {
                    urlRequest.httpBody = try JSONEncoder().encode(param)
                }
            }
            self.session.dataTask(with: urlRequest) { data, response, error in
                if error == nil {
                    // stop loader here
                    //data check
                    guard let data = data else {
                        completion(.failure(.errorMsg(message: error!.localizedDescription)))
                        return
                    }
                    
                    do {
                        // stop loader here
                        let responseData = String(data: data, encoding: String.Encoding.utf8)
                        print(responseData)
                        let codableData = try JSONDecoder().decode(T.self, from: data)
                        completion(.success(codableData))
                    }catch (let error) {
                        // stop loader here
                        completion(.failure(.errorMsg(message: error.localizedDescription)))
                    }
                }else {
                    // stop loader here
                    completion(.failure(.errorMsg(message: error?.localizedDescription ?? "error")))
                }
            }.resume()
            
        }catch (let error) {
            // stop loader here
            completion(.failure(.errorMsg(message: error.localizedDescription)))
        }
    }
}
