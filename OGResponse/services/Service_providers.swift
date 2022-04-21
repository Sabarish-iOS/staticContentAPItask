/* 
Copyright (c) 2022 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Service_providers : Codable {
	let id : Int?
	let service_provider_id : Int?
	let service_id : Int?
	let status : String?
	let approval_status : String?
	let approval_comments : String?
	let is_deleted : String?
	let deleted_by : Int?
	let deleted_at : String?
	let created_at : String?
	let created_by : Int?
	let updated_at : String?
	let updated_by : Int?
	let service_provider_info : Service_provider_info?

	enum CodingKeys: String, CodingKey {

		case id = "id"
		case service_provider_id = "service_provider_id"
		case service_id = "service_id"
		case status = "status"
		case approval_status = "approval_status"
		case approval_comments = "approval_comments"
		case is_deleted = "is_deleted"
		case deleted_by = "deleted_by"
		case deleted_at = "deleted_at"
		case created_at = "created_at"
		case created_by = "created_by"
		case updated_at = "updated_at"
		case updated_by = "updated_by"
		case service_provider_info = "service_provider_info"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(Int.self, forKey: .id)
		service_provider_id = try values.decodeIfPresent(Int.self, forKey: .service_provider_id)
		service_id = try values.decodeIfPresent(Int.self, forKey: .service_id)
		status = try values.decodeIfPresent(String.self, forKey: .status)
		approval_status = try values.decodeIfPresent(String.self, forKey: .approval_status)
		approval_comments = try values.decodeIfPresent(String.self, forKey: .approval_comments)
		is_deleted = try values.decodeIfPresent(String.self, forKey: .is_deleted)
		deleted_by = try values.decodeIfPresent(Int.self, forKey: .deleted_by)
		deleted_at = try values.decodeIfPresent(String.self, forKey: .deleted_at)
		created_at = try values.decodeIfPresent(String.self, forKey: .created_at)
		created_by = try values.decodeIfPresent(Int.self, forKey: .created_by)
		updated_at = try values.decodeIfPresent(String.self, forKey: .updated_at)
		updated_by = try values.decodeIfPresent(Int.self, forKey: .updated_by)
		service_provider_info = try values.decodeIfPresent(Service_provider_info.self, forKey: .service_provider_info)
	}

}