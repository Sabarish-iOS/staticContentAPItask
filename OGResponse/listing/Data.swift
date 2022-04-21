/* 
Copyright (c) 2022 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Data : Codable {
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

	enum CodingKeys: String, CodingKey {

		case id = "id"
		case parent_category_id = "parent_category_id"
		case title = "title"
		case slug = "slug"
		case summary = "summary"
		case photo = "photo"
		case is_parent = "is_parent"
		case parent_id = "parent_id"
		case added_by = "added_by"
		case status = "status"
		case created_at = "created_at"
		case updated_at = "updated_at"
		case is_deleted = "is_deleted"
		case deleted_at = "deleted_at"
		case deleted_by = "deleted_by"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(Int.self, forKey: .id)
		parent_category_id = try values.decodeIfPresent(Int.self, forKey: .parent_category_id)
		title = try values.decodeIfPresent(String.self, forKey: .title)
		slug = try values.decodeIfPresent(String.self, forKey: .slug)
		summary = try values.decodeIfPresent(String.self, forKey: .summary)
		photo = try values.decodeIfPresent(String.self, forKey: .photo)
		is_parent = try values.decodeIfPresent(Int.self, forKey: .is_parent)
		parent_id = try values.decodeIfPresent(Int.self, forKey: .parent_id)
		added_by = try values.decodeIfPresent(String.self, forKey: .added_by)
		status = try values.decodeIfPresent(String.self, forKey: .status)
		created_at = try values.decodeIfPresent(String.self, forKey: .created_at)
		updated_at = try values.decodeIfPresent(String.self, forKey: .updated_at)
		is_deleted = try values.decodeIfPresent(String.self, forKey: .is_deleted)
		deleted_at = try values.decodeIfPresent(String.self, forKey: .deleted_at)
		deleted_by = try values.decodeIfPresent(Int.self, forKey: .deleted_by)
	}

}