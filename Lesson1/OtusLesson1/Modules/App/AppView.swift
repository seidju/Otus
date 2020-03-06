//
//  AppView.swift
//  OtusLesson1
//
//  Created by Pavel Shatalov on 04.03.2020.
//  Copyright © 2020 Pavel Shatalov. All rights reserved.
//

import SwiftUI

struct AppView: View {
    @EnvironmentObject var appState: AppState
    var body: some View {
        TabBarView()
        .environmentObject(appState)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
