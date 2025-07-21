//
//  PoliciesViewModel.swift
//  PoliciesTestApp
//
//  Created by MTPC-523 on 17/07/25.
//

import SwiftUI

final class PoliciesViewModel: ObservableObject {
    
    @Published var policies: [Policies] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    @Published var isShowingDetail = false
    
    func getPolicies() {
        policies = NetworkManager.shared.loadJSON("Policies")
    }
}
