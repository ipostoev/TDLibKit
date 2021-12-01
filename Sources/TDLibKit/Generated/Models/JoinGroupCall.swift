//
//  JoinGroupCall.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-5dc5b473
//  https://github.com/tdlib/td/tree/5dc5b473
//

import Foundation


/// Joins an active group call. Returns join response payload for tgcalls
public struct JoinGroupCall: Codable, Equatable {

    /// Caller audio channel synchronization source identifier; received from tgcalls
    public let audioSourceId: Int?

    /// Group call identifier
    public let groupCallId: Int?

    /// If non-empty, invite hash to be used to join the group call without being muted by administrators
    public let inviteHash: String?

    /// True, if the user's microphone is muted
    public let isMuted: Bool?

    /// True, if the user's video is enabled
    public let isMyVideoEnabled: Bool?

    /// Identifier of a group call participant, which will be used to join the call; pass null to join as self; video chats only
    public let participantId: MessageSender?

    /// Group call join payload; received from tgcalls
    public let payload: String?


    public init(
        audioSourceId: Int?,
        groupCallId: Int?,
        inviteHash: String?,
        isMuted: Bool?,
        isMyVideoEnabled: Bool?,
        participantId: MessageSender?,
        payload: String?
    ) {
        self.audioSourceId = audioSourceId
        self.groupCallId = groupCallId
        self.inviteHash = inviteHash
        self.isMuted = isMuted
        self.isMyVideoEnabled = isMyVideoEnabled
        self.participantId = participantId
        self.payload = payload
    }
}

