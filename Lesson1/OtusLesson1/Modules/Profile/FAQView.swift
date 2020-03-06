//
//  FAQView.swift
//  OtusLesson1
//
//  Created by Pavel Shatalov on 06.03.2020.
//  Copyright © 2020 Pavel Shatalov. All rights reserved.
//

import SwiftUI

struct FAQView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var body: some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            Text("CLOSE")
        }
    }
}
