//
//  staticContentBase.swift
//  staticContentAPItask
//
//  Created by Byot on 25/03/22.
//

import Foundation

class staticContent_Base : Codable {
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
}

class FooterContent : Codable {
    let links : [Links]?
    let locations : [Locations]?
    let sociallinks : [Sociallinks]?
    let applinks : [Applinks]?
}
class ParentCategories : Codable {
    let id : Int?
    let link : String?
    let name : String?
    let iconUrl : String?
}
class FooterSocialMediaLinks : Codable {
    let id : Int?
    let link : String?
    let name : String?
    let icon : String?
}
class FooterContactData : Codable {
    let id : Int?
    let type : String?
    let value : String?
    let icon : String?
}
class FooterAboutUsData : Codable {
    let id : Int?
    let page_name : String?
    let content : String?
}
class FooterDownloadAppData : Codable {
    let id : Int?
    let link : String?
    let name : String?
    let icon : String?
}
class AllCities : Codable {
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
}
class Services : Codable {
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
}
class TopServices : Codable {
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
}
class Home_page_banners : Codable {
    let title : String?
    let photo : String?
    let redirect_link : String?
}
class Top_category_banners : Codable {
    let title : String?
    let photo : String?
    let redirect_link : String?
}
class Top_product_banner : Codable {
    let title : String?
    let photo : String?
    let redirect_link : String?
}
class Footer_app_banner : Codable {
    let title : String?
    let photo : String?
    let redirect_link : String?
}
class Allservices : Codable {
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
}
class TopCategories : Codable {
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
}
class OurValuableCompanies : Codable {
    let id : Int?
    let service_provider_name : String?
    let photos : String?
    let slug : String?
    let business_information : String?
    let created_at : String?
    let available_services : [String]?
}
class TopProductCategories : Codable {
    let id : Int?
    let title : String?
    let slug : String?
    let photo : String?
    let status : String?
}
class Locations : Codable {
    let name : String?
    let city : [City]?
}
class Sociallinks : Codable {
    let link : String?
    let name : String?
}
class Links : Codable {
    let link : String?
    let title : String?
}
class Applinks : Codable {
    let link : String?
    let name : String?
    let iconUrl : String?
}
class Country_info : Codable {
    let id : Int?
    let country_name : String?
    let slug : String?
    let added_by : String?
    let status : String?
    let show_footer : Int?
    let created_at : String?
    let updated_at : String?
    let is_deleted : String?
}
class State_info : Codable {
    let id : Int?
    let country_id : Int?
    let state_name : String?
    let slug : String?
    let added_by : String?
    let status : String?
    let created_at : String?
    let updated_at : String?
    let order_progress_status : String?
}
class City : Codable {
    let id : Int?
    let name : String?
    let slug : String?
}
