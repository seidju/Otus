//
//  AppState.swift
//  OtusLesson1
//
//  Created by Pavel Shatalov on 04.03.2020.
//  Copyright © 2020 Pavel Shatalov. All rights reserved.
//

import SwiftUI

final class AppState: ObservableObject {
    @Published var selectedTab: Tab = .feed
    @Published var shouldShowSupportChat: Bool = false
}

extension AppState {
    enum Tab: Hashable {
        case feed
        case chats
        case profile
    }
}

