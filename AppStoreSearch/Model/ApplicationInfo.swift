//
//  ApplicationInfo.swift
//  AppStoreSearch
//
//  Created by 김지우 on 2020/08/10.
//  Copyright © 2020 김지우. All rights reserved.
//

import UIKit

struct ApplicationInfo {
    // MARK: Base Info
    let appID: Int?
    let name: String?
    let category: String?
    let artist: String?
    let imgURLString: String?
    let link: String?

    // MARK: Detail Info
    var screenshotUrls: [String]?
    var description: String?
    var artworkUrl512: String?
    var fileSizeBytes: Int64?
    var genres: [String]?
    var supportedDevices: [String]?
    var languageCodes: [String]?
    var contentAdvisoryRating: String?
    var sellerName: String?
    var sellerUrl: String?
    var minimumOsVersion: String?
    var averageUserRating: CGFloat?

    // MARK: New Feature Info
    var releaseNote: String?
    var version: String?
    var releaseDate: String?
    var currentVersionReleaseDate: String?

    // MARK: Methods
    init(dic: [String: Any]) {
        let idDic = dic["id"] as? [String: Any]
        let idAttributes = idDic?["attributes"] as? [String: Any]
        let appIDString = idAttributes?["im:id"] as? String
        self.appID = Int(appIDString ?? "0")

        let imName = dic["im:name"] as? [String: Any]
        self.name = imName?["label"] as? String

        let imArtist = dic["im:artist"] as? [String: Any]
        self.artist = imArtist?["label"] as? String

        let categoryDic = dic["category"] as? [String: Any]
        let attributes = categoryDic?["attributes"] as? [String: Any]
        self.category = attributes?["label"] as? String

        let imImage = dic["im:image"] as? [[String: Any]]
        let imgHigh = imImage?.last?["label"] as? String
        self.imgURLString = imgHigh

        let link = dic["link"] as? [String: Any]
        let linkAttributes = link?["attributes"] as? [String: Any]
        let href = linkAttributes?["href"] as? String
        self.link = href
    }

    init(detailDic dic: [String: Any]) {
        self.appID = dic["trackId"] as? Int

        self.name = dic["trackName"] as? String

        self.artist = dic["artistName"] as? String

        let genres = dic["genres"] as? [String]
        self.category = genres?.joined(separator: ", ")

        self.imgURLString = dic["artworkUrl100"] as? String

        self.link = dic["trackViewUrl"] as? String

        self.updateInfo(dic: dic)
    }

    mutating func updateInfo(dic: [String: Any]) {
        self.screenshotUrls = dic["screenshotUrls"] as? [String]

        self.description = dic["description"] as? String

        self.artworkUrl512 = dic["artworkUrl512"] as? String

        let fileSizeString = dic["fileSizeBytes"] as? String
        self.fileSizeBytes = Int64(fileSizeString ?? "0")

        self.genres = dic["genres"] as? [String]

        self.supportedDevices = dic["supportedDevices"] as? [String]

        self.languageCodes = dic["languageCodesISO2A"] as? [String]

        self.contentAdvisoryRating = dic["contentAdvisoryRating"] as? String

        self.sellerName = dic["sellerName"] as? String

        self.sellerUrl = dic["sellerUrl"] as? String

        self.minimumOsVersion = dic["minimumOsVersion"] as? String

        self.releaseNote = dic["releaseNotes"] as? String

        self.version = dic["version"] as? String

        self.releaseDate = dic["releaseDate"] as? String

        self.currentVersionReleaseDate = dic["currentVersionReleaseDate"] as? String

        self.averageUserRating = dic["averageUserRating"] as? CGFloat
    }
}
