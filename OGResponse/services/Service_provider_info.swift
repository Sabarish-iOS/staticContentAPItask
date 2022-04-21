/* 
Copyright (c) 2022 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Service_provider_info : Codable {
	let id : Int?
	let user_id : Int?
	let service_provider_name : String?
	let service_provider_logo : String?
	let short_about_service_provider : String?
	let about_service_provider : String?
	let phone_no : String?
	let whatsapp_no : String?
	let email_id : String?
	let website : String?
	let address : String?
	let latitude : Double?
	let longitude : Double?
	let gst_number : String?
	let gst_certificate : String?
	let bank_account_name : String?
	let bank_account_number : String?
	let bank_ifsc_code : String?
	let bank_branch : String?
	let pan_number : String?
	let payment_term : String?
	let area_id : Int?
	let city_id : Int?
	let package_id : Int?
	let package_payment_id : Int?
	let overall_rating : Int?
	let created_by : Int?
	let created_at : String?
	let updated_at : String?
	let updated_by : Int?
	let deleted_at : String?
	let is_deleted : String?
	let status : String?

	enum CodingKeys: String, CodingKey {

		case id = "id"
		case user_id = "user_id"
		case service_provider_name = "service_provider_name"
		case service_provider_logo = "service_provider_logo"
		case short_about_service_provider = "short_about_service_provider"
		case about_service_provider = "about_service_provider"
		case phone_no = "phone_no"
		case whatsapp_no = "whatsapp_no"
		case email_id = "email_id"
		case website = "website"
		case address = "address"
		case latitude = "latitude"
		case longitude = "longitude"
		case gst_number = "gst_number"
		case gst_certificate = "gst_certificate"
		case bank_account_name = "bank_account_name"
		case bank_account_number = "bank_account_number"
		case bank_ifsc_code = "bank_ifsc_code"
		case bank_branch = "bank_branch"
		case pan_number = "pan_number"
		case payment_term = "payment_term"
		case area_id = "area_id"
		case city_id = "city_id"
		case package_id = "package_id"
		case package_payment_id = "package_payment_id"
		case overall_rating = "overall_rating"
		case created_by = "created_by"
		case created_at = "created_at"
		case updated_at = "updated_at"
		case updated_by = "updated_by"
		case deleted_at = "deleted_at"
		case is_deleted = "is_deleted"
		case status = "status"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(Int.self, forKey: .id)
		user_id = try values.decodeIfPresent(Int.self, forKey: .user_id)
		service_provider_name = try values.decodeIfPresent(String.self, forKey: .service_provider_name)
		service_provider_logo = try values.decodeIfPresent(String.self, forKey: .service_provider_logo)
		short_about_service_provider = try values.decodeIfPresent(String.self, forKey: .short_about_service_provider)
		about_service_provider = try values.decodeIfPresent(String.self, forKey: .about_service_provider)
		phone_no = try values.decodeIfPresent(String.self, forKey: .phone_no)
		whatsapp_no = try values.decodeIfPresent(String.self, forKey: .whatsapp_no)
		email_id = try values.decodeIfPresent(String.self, forKey: .email_id)
		website = try values.decodeIfPresent(String.self, forKey: .website)
		address = try values.decodeIfPresent(String.self, forKey: .address)
		latitude = try values.decodeIfPresent(Double.self, forKey: .latitude)
		longitude = try values.decodeIfPresent(Double.self, forKey: .longitude)
		gst_number = try values.decodeIfPresent(String.self, forKey: .gst_number)
		gst_certificate = try values.decodeIfPresent(String.self, forKey: .gst_certificate)
		bank_account_name = try values.decodeIfPresent(String.self, forKey: .bank_account_name)
		bank_account_number = try values.decodeIfPresent(String.self, forKey: .bank_account_number)
		bank_ifsc_code = try values.decodeIfPresent(String.self, forKey: .bank_ifsc_code)
		bank_branch = try values.decodeIfPresent(String.self, forKey: .bank_branch)
		pan_number = try values.decodeIfPresent(String.self, forKey: .pan_number)
		payment_term = try values.decodeIfPresent(String.self, forKey: .payment_term)
		area_id = try values.decodeIfPresent(Int.self, forKey: .area_id)
		city_id = try values.decodeIfPresent(Int.self, forKey: .city_id)
		package_id = try values.decodeIfPresent(Int.self, forKey: .package_id)
		package_payment_id = try values.decodeIfPresent(Int.self, forKey: .package_payment_id)
		overall_rating = try values.decodeIfPresent(Int.self, forKey: .overall_rating)
		created_by = try values.decodeIfPresent(Int.self, forKey: .created_by)
		created_at = try values.decodeIfPresent(String.self, forKey: .created_at)
		updated_at = try values.decodeIfPresent(String.self, forKey: .updated_at)
		updated_by = try values.decodeIfPresent(Int.self, forKey: .updated_by)
		deleted_at = try values.decodeIfPresent(String.self, forKey: .deleted_at)
		is_deleted = try values.decodeIfPresent(String.self, forKey: .is_deleted)
		status = try values.decodeIfPresent(String.self, forKey: .status)
	}

}