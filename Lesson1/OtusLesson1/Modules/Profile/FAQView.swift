//
//  FAQView.swift
//  OtusLesson1
//
//  Created by Pavel Shatalov on 06.03.2020.
//  Copyright © 2020 Pavel Shatalov. All rights reserved.
//

import SwiftUI

struct FAQView: View {
    @Binding var isPresented: Bool

    var body: some View {
        Button(action: {
            self.isPresented = false
        }) {
            Text("CLOSE")
        }
    }
}
