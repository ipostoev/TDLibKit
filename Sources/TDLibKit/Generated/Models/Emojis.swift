//
//  Emojis.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-047246f3
//  https://github.com/tdlib/td/tree/047246f3
//

import Foundation


/// Represents a list of emoji
public struct Emojis: Codable, Equatable {

    /// List of emojis
    public let emojis: [String]


    public init(emojis: [String]) {
        self.emojis = emojis
    }
}

