/* 
Copyright (c) 2022 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct staticContent_Base : Codable {
	let success : Bool?
	let status : Int?
	let footerContent : [FooterContent]?
	let parentCategories : [ParentCategories]?
	let footerSocialMediaLinks : [FooterSocialMediaLinks]?
	let footerContactData : [FooterContactData]?
	let footerAboutUsData : [FooterAboutUsData]?
	let footerDownloadAppData : [FooterDownloadAppData]?
	let allCities : [AllCities]?
	let message : String?
	let response_type : String?
	let name : String?
	let version : Int?
	let services : [Services]?
	let topServices : [TopServices]?
	let home_page_banners : [Home_page_banners]?
	let top_category_banners : [Top_category_banners]?
	let top_product_banner : [Top_product_banner]?
	let footer_app_banner : [Footer_app_banner]?
	let allservices : [Allservices]?
	let topCategories : [TopCategories]?
	let ourValuableCompanies : [OurValuableCompanies]?
	let topProductCategories : [TopProductCategories]?
	let locations : [Locations]?
	let service_cancel_reason : [String]?
	let product_cancel_reason : [String]?

	enum CodingKeys: String, CodingKey {

		case success = "success"
		case status = "status"
		case footerContent = "footerContent"
		case parentCategories = "parentCategories"
		case footerSocialMediaLinks = "footerSocialMediaLinks"
		case footerContactData = "footerContactData"
		case footerAboutUsData = "footerAboutUsData"
		case footerDownloadAppData = "footerDownloadAppData"
		case allCities = "allCities"
		case message = "message"
		case response_type = "response_type"
		case name = "name"
		case version = "version"
		case services = "services"
		case topServices = "topServices"
		case home_page_banners = "home_page_banners"
		case top_category_banners = "top_category_banners"
		case top_product_banner = "top_product_banner"
		case footer_app_banner = "footer_app_banner"
		case allservices = "allservices"
		case topCategories = "topCategories"
		case ourValuableCompanies = "OurValuableCompanies"
		case topProductCategories = "topProductCategories"
		case locations = "locations"
		case service_cancel_reason = "service_cancel_reason"
		case product_cancel_reason = "product_cancel_reason"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		success = try values.decodeIfPresent(Bool.self, forKey: .success)
		status = try values.decodeIfPresent(Int.self, forKey: .status)
		footerContent = try values.decodeIfPresent([FooterContent].self, forKey: .footerContent)
		parentCategories = try values.decodeIfPresent([ParentCategories].self, forKey: .parentCategories)
		footerSocialMediaLinks = try values.decodeIfPresent([FooterSocialMediaLinks].self, forKey: .footerSocialMediaLinks)
		footerContactData = try values.decodeIfPresent([FooterContactData].self, forKey: .footerContactData)
		footerAboutUsData = try values.decodeIfPresent([FooterAboutUsData].self, forKey: .footerAboutUsData)
		footerDownloadAppData = try values.decodeIfPresent([FooterDownloadAppData].self, forKey: .footerDownloadAppData)
		allCities = try values.decodeIfPresent([AllCities].self, forKey: .allCities)
		message = try values.decodeIfPresent(String.self, forKey: .message)
		response_type = try values.decodeIfPresent(String.self, forKey: .response_type)
		name = try values.decodeIfPresent(String.self, forKey: .name)
		version = try values.decodeIfPresent(Int.self, forKey: .version)
		services = try values.decodeIfPresent([Services].self, forKey: .services)
		topServices = try values.decodeIfPresent([TopServices].self, forKey: .topServices)
		home_page_banners = try values.decodeIfPresent([Home_page_banners].self, forKey: .home_page_banners)
		top_category_banners = try values.decodeIfPresent([Top_category_banners].self, forKey: .top_category_banners)
		top_product_banner = try values.decodeIfPresent([Top_product_banner].self, forKey: .top_product_banner)
		footer_app_banner = try values.decodeIfPresent([Footer_app_banner].self, forKey: .footer_app_banner)
		allservices = try values.decodeIfPresent([Allservices].self, forKey: .allservices)
		topCategories = try values.decodeIfPresent([TopCategories].self, forKey: .topCategories)
		ourValuableCompanies = try values.decodeIfPresent([OurValuableCompanies].self, forKey: .ourValuableCompanies)
		topProductCategories = try values.decodeIfPresent([TopProductCategories].self, forKey: .topProductCategories)
		locations = try values.decodeIfPresent([Locations].self, forKey: .locations)
		service_cancel_reason = try values.decodeIfPresent([String].self, forKey: .service_cancel_reason)
		product_cancel_reason = try values.decodeIfPresent([String].self, forKey: .product_cancel_reason)
	}

}
