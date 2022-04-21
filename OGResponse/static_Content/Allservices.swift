/* 
Copyright (c) 2022 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Allservices : Codable {
	let id : Int?
	let service_category : Int?
	let parent_id : Int?
	let service_name : String?
	let is_household : String?
	let summary : String?
	let description : String?
	let service_icon : String?
	let service_videos : String?
	let service_imgs : String?
	let service_banner : String?
	let pricing_login : String?
	let base_price : Int?
	let unit_price : Int?
	let peak_price_percentage : Int?
	let sgst : Int?
	let cgst : Int?
	let slug : String?
	let is_add_on : String?
	let show_in_top_category : String?
	let peak_time_from : String?
	let peak_time_to : String?
	let status : String?
	let is_deleted : String?
	let deleted_by : Int?
	let deleted_at : String?
	let created_by : Int?
	let created_at : String?
	let updated_by : Int?
	let updated_at : String?
	let overall_rating : Int?
	let total_review : Int?
	let no_of_views : Int?
	let price_with_tax : Int?

	enum CodingKeys: String, CodingKey {

		case id = "id"
		case service_category = "service_category"
		case parent_id = "parent_id"
		case service_name = "service_name"
		case is_household = "is_household"
		case summary = "summary"
		case description = "description"
		case service_icon = "service_icon"
		case service_videos = "service_videos"
		case service_imgs = "service_imgs"
		case service_banner = "service_banner"
		case pricing_login = "pricing_login"
		case base_price = "base_price"
		case unit_price = "unit_price"
		case peak_price_percentage = "peak_price_percentage"
		case sgst = "sgst"
		case cgst = "cgst"
		case slug = "slug"
		case is_add_on = "is_add_on"
		case show_in_top_category = "show_in_top_category"
		case peak_time_from = "peak_time_from"
		case peak_time_to = "peak_time_to"
		case status = "status"
		case is_deleted = "is_deleted"
		case deleted_by = "deleted_by"
		case deleted_at = "deleted_at"
		case created_by = "created_by"
		case created_at = "created_at"
		case updated_by = "updated_by"
		case updated_at = "updated_at"
		case overall_rating = "overall_rating"
		case total_review = "total_review"
		case no_of_views = "no_of_views"
		case price_with_tax = "price_with_tax"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(Int.self, forKey: .id)
		service_category = try values.decodeIfPresent(Int.self, forKey: .service_category)
		parent_id = try values.decodeIfPresent(Int.self, forKey: .parent_id)
		service_name = try values.decodeIfPresent(String.self, forKey: .service_name)
		is_household = try values.decodeIfPresent(String.self, forKey: .is_household)
		summary = try values.decodeIfPresent(String.self, forKey: .summary)
		description = try values.decodeIfPresent(String.self, forKey: .description)
		service_icon = try values.decodeIfPresent(String.self, forKey: .service_icon)
		service_videos = try values.decodeIfPresent(String.self, forKey: .service_videos)
		service_imgs = try values.decodeIfPresent(String.self, forKey: .service_imgs)
		service_banner = try values.decodeIfPresent(String.self, forKey: .service_banner)
		pricing_login = try values.decodeIfPresent(String.self, forKey: .pricing_login)
		base_price = try values.decodeIfPresent(Int.self, forKey: .base_price)
		unit_price = try values.decodeIfPresent(Int.self, forKey: .unit_price)
		peak_price_percentage = try values.decodeIfPresent(Int.self, forKey: .peak_price_percentage)
		sgst = try values.decodeIfPresent(Int.self, forKey: .sgst)
		cgst = try values.decodeIfPresent(Int.self, forKey: .cgst)
		slug = try values.decodeIfPresent(String.self, forKey: .slug)
		is_add_on = try values.decodeIfPresent(String.self, forKey: .is_add_on)
		show_in_top_category = try values.decodeIfPresent(String.self, forKey: .show_in_top_category)
		peak_time_from = try values.decodeIfPresent(String.self, forKey: .peak_time_from)
		peak_time_to = try values.decodeIfPresent(String.self, forKey: .peak_time_to)
		status = try values.decodeIfPresent(String.self, forKey: .status)
		is_deleted = try values.decodeIfPresent(String.self, forKey: .is_deleted)
		deleted_by = try values.decodeIfPresent(Int.self, forKey: .deleted_by)
		deleted_at = try values.decodeIfPresent(String.self, forKey: .deleted_at)
		created_by = try values.decodeIfPresent(Int.self, forKey: .created_by)
		created_at = try values.decodeIfPresent(String.self, forKey: .created_at)
		updated_by = try values.decodeIfPresent(Int.self, forKey: .updated_by)
		updated_at = try values.decodeIfPresent(String.self, forKey: .updated_at)
		overall_rating = try values.decodeIfPresent(Int.self, forKey: .overall_rating)
		total_review = try values.decodeIfPresent(Int.self, forKey: .total_review)
		no_of_views = try values.decodeIfPresent(Int.self, forKey: .no_of_views)
		price_with_tax = try values.decodeIfPresent(Int.self, forKey: .price_with_tax)
	}

}