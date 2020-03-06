//
//  ProfileView.swift
//  OtusLesson1
//
//  Created by Pavel Shatalov on 04.03.2020.
//  Copyright © 2020 Pavel Shatalov. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    @State var isPresented: Bool = false
    
    var body: some View {
        NavigationView {
            Button(action: {
                self.isPresented.toggle()
            }, label: {
                Text("Show FAQ")
            })
            .navigationBarTitle(Text("Profile"))
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .sheet(isPresented: $isPresented) { FAQView() }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
