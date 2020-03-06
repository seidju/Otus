//
//  ChatView.swift
//  OtusLesson1
//
//  Created by Pavel Shatalov on 04.03.2020.
//  Copyright © 2020 Pavel Shatalov. All rights reserved.
//

import SwiftUI

struct ChatView: View {
    @EnvironmentObject var appState: AppState
    var chatId: String

    var body: some View {
        VStack { Text(chatId) }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView(chatId: "Preview")
    }
}
