//
//  TabView.swift
//  PoliciesTestApp
//
//  Created by MTPC-523 on 17/07/25.
//

import SwiftUI

struct BottomTabView: View {
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem { Label("Home", systemImage: "house") }
            PoliciesView()
                .tabItem { Label("Policies", systemImage: "list.clipboard") }
            ClaimsView()
                .tabItem { Label("Claims", systemImage: "bag") }
            ProfileView()
                .tabItem { Label("Profile", systemImage: "person") }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTabView()
    }
}
