/* 
Copyright (c) 2022 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct AllCities : Codable {
	let id : Int?
	let country_id : Int?
	let state_id : Int?
	let city_type_id : Int?
	let city_name : String?
	let slug : String?
	let added_by : String?
	let status : String?
	let show_footer : Int?
	let created_at : String?
	let updated_at : String?
	let country_info : Country_info?
	let state_info : State_info?

	enum CodingKeys: String, CodingKey {

		case id = "id"
		case country_id = "country_id"
		case state_id = "state_id"
		case city_type_id = "city_type_id"
		case city_name = "city_name"
		case slug = "slug"
		case added_by = "added_by"
		case status = "status"
		case show_footer = "show_footer"
		case created_at = "created_at"
		case updated_at = "updated_at"
		case country_info = "country_info"
		case state_info = "state_info"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(Int.self, forKey: .id)
		country_id = try values.decodeIfPresent(Int.self, forKey: .country_id)
		state_id = try values.decodeIfPresent(Int.self, forKey: .state_id)
		city_type_id = try values.decodeIfPresent(Int.self, forKey: .city_type_id)
		city_name = try values.decodeIfPresent(String.self, forKey: .city_name)
		slug = try values.decodeIfPresent(String.self, forKey: .slug)
		added_by = try values.decodeIfPresent(String.self, forKey: .added_by)
		status = try values.decodeIfPresent(String.self, forKey: .status)
		show_footer = try values.decodeIfPresent(Int.self, forKey: .show_footer)
		created_at = try values.decodeIfPresent(String.self, forKey: .created_at)
		updated_at = try values.decodeIfPresent(String.self, forKey: .updated_at)
		country_info = try values.decodeIfPresent(Country_info.self, forKey: .country_info)
		state_info = try values.decodeIfPresent(State_info.self, forKey: .state_info)
	}

}