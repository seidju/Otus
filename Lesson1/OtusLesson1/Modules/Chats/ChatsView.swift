//
//  ChatsView.swift
//  OtusLesson1
//
//  Created by Pavel Shatalov on 04.03.2020.
//  Copyright © 2020 Pavel Shatalov. All rights reserved.
//

import SwiftUI

struct ChatsView: View {
    @EnvironmentObject var appState: AppState
    @State var chats: [Chat] = Chat.makeFakeChats()

    var body: some View {
        NavigationView {
            List {
                ForEach(chats) { chat in
                    if chat.chatId == Chat.supportChatId {
                        NavigationLink(destination: ChatView(chatId: chat.chatId),
                                       isActive: self.$appState.shouldShowSupportChat) {
                            Text(chat.chatId).foregroundColor(.red)
                        }
                    } else {
                        NavigationLink(destination: ChatView(chatId: chat.chatId)) {
                            Text(chat.chatId)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Chats"))
            
            Text("Please choose chat")
        }
    }
}

struct ChatsView_Previews: PreviewProvider {
    static var previews: some View {
        ChatsView()
    }
}
