/* 
Copyright (c) 2022 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct State_info : Codable {
	let id : Int?
	let country_id : Int?
	let state_name : String?
	let slug : String?
	let added_by : String?
	let status : String?
	let created_at : String?
	let updated_at : String?
	let order_progress_status : String?

	enum CodingKeys: String, CodingKey {

		case id = "id"
		case country_id = "country_id"
		case state_name = "state_name"
		case slug = "slug"
		case added_by = "added_by"
		case status = "status"
		case created_at = "created_at"
		case updated_at = "updated_at"
		case order_progress_status = "order_progress_status"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(Int.self, forKey: .id)
		country_id = try values.decodeIfPresent(Int.self, forKey: .country_id)
		state_name = try values.decodeIfPresent(String.self, forKey: .state_name)
		slug = try values.decodeIfPresent(String.self, forKey: .slug)
		added_by = try values.decodeIfPresent(String.self, forKey: .added_by)
		status = try values.decodeIfPresent(String.self, forKey: .status)
		created_at = try values.decodeIfPresent(String.self, forKey: .created_at)
		updated_at = try values.decodeIfPresent(String.self, forKey: .updated_at)
		order_progress_status = try values.decodeIfPresent(String.self, forKey: .order_progress_status)
	}

}