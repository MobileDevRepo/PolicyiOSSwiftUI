//
//  HomeView.swift
//  PoliciesTestApp
//
//  Created by MTPC-523 on 17/07/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Welcome")
        }
        .padding()
    }
}

#Preview {
    HomeView()
}
