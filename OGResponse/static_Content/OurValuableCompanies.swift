/* 
Copyright (c) 2022 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct OurValuableCompanies : Codable {
	let id : Int?
	let service_provider_name : String?
	let photos : String?
	let slug : String?
	let business_information : String?
	let created_at : String?
	let available_services : [String]?

	enum CodingKeys: String, CodingKey {

		case id = "id"
		case service_provider_name = "service_provider_name"
		case photos = "photos"
		case slug = "slug"
		case business_information = "business_information"
		case created_at = "created_at"
		case available_services = "available_services"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(Int.self, forKey: .id)
		service_provider_name = try values.decodeIfPresent(String.self, forKey: .service_provider_name)
		photos = try values.decodeIfPresent(String.self, forKey: .photos)
		slug = try values.decodeIfPresent(String.self, forKey: .slug)
		business_information = try values.decodeIfPresent(String.self, forKey: .business_information)
		created_at = try values.decodeIfPresent(String.self, forKey: .created_at)
		available_services = try values.decodeIfPresent([String].self, forKey: .available_services)
	}

}