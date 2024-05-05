//
//  Boardgame.swift
//  boardify
//
//  Created by Дмитро Павлов on 05.05.2024.
//

import Foundation

struct BFBoardgame: Codable {
    let gameId: String
    let yearPublished: String
    let minPlayers: String
    let maxPlayers: String
    let playingTime: String
    let minPlayTime: String
    let maxPlayTime: String
    let age: String
    let titles: [String]
    let description: String
    let thumbnail: String
    let image: String
    let boardgameAccessories: [BFAccessory]
    let boardgamePublishers: [BFPublisher]
    let cardset: [BFCardset]
    let designers: [BFDesigner]
    let artists: [BFArtist]
    let gameFamily: [BFGameFamily]
    let categories: [BFCategory]
    let mechanics: [BFMechanic]
    let gameTypes: [BFGameType]
    let implementations: [BFImplementation]
}

struct BFImplementation: Codable {
    let title: String
    let gameId: String
}

struct BFGameType: Codable {
    let title: String
    let gameTypeId: String
}

struct BFAccessory: Codable {
    let title: String
    let accessoryId: String
}

struct BFPublisher: Codable {
    let title: String
    let publisherId: String
}

struct BFCardset: Codable {
    let id: String
}

struct BFDesigner: Codable {
    let title: String
    let designerId: String
}

struct BFArtist: Codable {
    let title: String
    let artistId: String
}

struct BFGameFamily: Codable {
    let title: String
    let gameId: String
}

struct BFCategory: Codable {
    let title: String
    let categoryId: String
}

struct BFMechanic: Codable {
    let title: String
    let mechanicId: String
}
