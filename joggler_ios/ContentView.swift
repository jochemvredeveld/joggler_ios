//
//  ContentView.swift
//  joggler_ios
//
//  Created by Jochem Vredeveld on 05/03/2023.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var authModel: AuthViewModel
    
    var body: some View {
        Group {
            if authModel.user != nil {
                MainView()
            } else {
                SignUpView()
            }
        }.onAppear {
            authModel.listenToAuthState()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
