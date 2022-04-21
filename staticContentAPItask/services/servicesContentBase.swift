//
//  servicesContentBase.swift
//  staticContentAPItask
//
//  Created by Byot on 26/03/22.
//

import Foundation

class listing_Base : Codable {
    let success : Bool?
    let status : Int?
    let data : [Data]?
    let message : String?
    let response_type : String?
    let name : String?
    let version : Int?
}
class  Data : Codable {
    let id : Int?
    let parent_category_id : Int?
    let title : String?
    let slug : String?
    let summary : String?
    let photo : String?
    let is_parent : Int?
    let parent_id : Int?
    let added_by : String?
    let status : String?
    let created_at : String?
    let updated_at : String?
    let is_deleted : String?
    let deleted_at : String?
    let deleted_by : Int?
}
