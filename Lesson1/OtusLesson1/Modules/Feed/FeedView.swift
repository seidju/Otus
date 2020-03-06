//
//  FeedView.swift
//  OtusLesson1
//
//  Created by Pavel Shatalov on 04.03.2020.
//  Copyright © 2020 Pavel Shatalov. All rights reserved.
//

import SwiftUI

struct FeedView: View {
    @EnvironmentObject var appState: AppState
    var body: some View {
        NavigationView {
            Button("Open chat support") {
                self.appState.selectedTab = .chats
                self.appState.shouldShowSupportChat = true
            }
            .navigationBarTitle(Text("Feed"))
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
