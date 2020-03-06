//
//  TabView.swift
//  OtusLesson1
//
//  Created by Pavel Shatalov on 04.03.2020.
//  Copyright © 2020 Pavel Shatalov. All rights reserved.
//
import Combine
import SwiftUI

struct TabBarView: View {
    var body: some View {
        tabView
    }

    @EnvironmentObject var appState: AppState
    
    private var tabView: some View {
        TabView(selection: $appState.selectedTab) {
            FeedView().tabItem {
                Image(systemName: "person.3.fill")
                Text("Feed")
            }.tag(AppState.Tab.feed)
            .environmentObject(appState)

            ChatsView().tabItem {
                Image(systemName: "bubble.left.and.bubble.right")
                Text("Chats")
            }.tag(AppState.Tab.chats)

            ProfileView().tabItem {
                Image(systemName: "person.circle")
                Text("Profile")
            }.tag(AppState.Tab.profile)
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
