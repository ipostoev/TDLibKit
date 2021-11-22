//
//  SetPassword.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-743a30d4
//  https://github.com/tdlib/td/tree/743a30d4
//

import Foundation


/// Changes the password for the current user. If a new recovery email address is specified, then the change will not be applied until the new recovery email address is confirmed
public struct SetPassword: Codable, Equatable {

    /// New password hint; may be empty
    public let newHint: String?

    /// New password of the user; may be empty to remove the password
    public let newPassword: String?

    /// New recovery email address; may be empty
    public let newRecoveryEmailAddress: String?

    /// Previous password of the user
    public let oldPassword: String?

    /// Pass true if the recovery email address must be changed
    public let setRecoveryEmailAddress: Bool?


    public init(
        newHint: String?,
        newPassword: String?,
        newRecoveryEmailAddress: String?,
        oldPassword: String?,
        setRecoveryEmailAddress: Bool?
    ) {
        self.newHint = newHint
        self.newPassword = newPassword
        self.newRecoveryEmailAddress = newRecoveryEmailAddress
        self.oldPassword = oldPassword
        self.setRecoveryEmailAddress = setRecoveryEmailAddress
    }
}

