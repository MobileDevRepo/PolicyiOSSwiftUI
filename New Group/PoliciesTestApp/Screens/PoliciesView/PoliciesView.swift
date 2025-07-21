//
//  PoliciesView.swift
//  PoliciesTestApp
//
//  Created by MTPC-523 on 17/07/25.
//

import SwiftUI

struct PoliciesView: View {
    
    @StateObject var viewModel = PoliciesViewModel()
    @State private var expandedPolicyID: Int?
    
    var body: some View {
        NavigationView {
            List(viewModel.policies) { policies in
                PoliciesCell(policie: policies, isExpanded: expandedPolicyID == policies.id, onToggleExpand: {
                    withAnimation {
                        expandedPolicyID = (expandedPolicyID == policies.id) ? nil : policies.id
                    }
                    
                })
               .listRowSeparator(.hidden)
            }
            .navigationTitle("Policies")
        }
        .task {
            viewModel.getPolicies()
        }
    }
}

#Preview {
    PoliciesView()
}


