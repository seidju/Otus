//
//  Chat.swift
//  OtusLesson1
//
//  Created by Pavel Shatalov on 04.03.2020.
//  Copyright © 2020 Pavel Shatalov. All rights reserved.
//
import Foundation

struct Chat {
    let chatId: String

    var isSupport: Bool {
        return chatId == Chat.supportChatId
    }
}

extension Chat: Identifiable {
    var id: String {
        return chatId
    }
}

extension Chat {

    static let supportChatId: String = "Support"

    static func makeFakeChats() -> [Chat] {
        [Chat(chatId: Chat.supportChatId),
         Chat(chatId: UUID().uuidString),
         Chat(chatId: UUID().uuidString),
         Chat(chatId: UUID().uuidString),
         Chat(chatId: UUID().uuidString),
         Chat(chatId: UUID().uuidString),
         Chat(chatId: UUID().uuidString)]
    }
}
