//
//  GetNetworkStatistics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.2-ff014add
//  https://github.com/tdlib/td/tree/ff014add
//

import Foundation


/// Returns network data usage statistics. Can be called before authorization
public struct GetNetworkStatistics: Codable, Equatable {

    /// Pass true to get statistics only for the current library launch
    public let onlyCurrent: Bool?


    public init(onlyCurrent: Bool?) {
        self.onlyCurrent = onlyCurrent
    }
}

