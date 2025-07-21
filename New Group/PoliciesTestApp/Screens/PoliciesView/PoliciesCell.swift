//
//  PoliciesCell.swift
//  PoliciesTestApp
//
//  Created by MTPC-523 on 17/07/25.
//

import SwiftUI

struct PoliciesCell: View {
    
    let policie: Policies
    let isExpanded: Bool
    let onToggleExpand: () -> Void
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 6) {
            
            Group {
                
                Text("Policy Number: ")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                
                +  Text("\(policie.policyNumber ?? 0)                                            ")
                    .font(.body)
                    .foregroundColor(.primary)
                
                Text("Policy Name: ")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                
                +  Text(policie.policyName ?? "")
                    .font(.body)
                    .foregroundColor(.primary)
                
                Text("Status: ")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                
                +  Text(policie.policyStatus ?? "")
                    .font(.body)
                    .foregroundColor(policie.policyStatus == "Active" ? .green : Color.clightRed)
                
                Text("Next Due: ")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                
                +  Text(policie.nextPremiumDue ?? "")
                    .font(.body)
                    .foregroundColor(.primary)
                
            }
            .padding(.leading)
            
            Button(action: onToggleExpand) {
                Text(isExpanded ? "Read Less" : "Read More")
                    .font(.footnote)
                    .foregroundColor(.blue)
            }
            .padding(.leading)
            
            if isExpanded {
                Divider().padding(.vertical, 4)
                
                Group {
                    Text("Start Date: ")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                    
                    +  Text(policie.startDate ?? "")
                        .font(.body)
                        .foregroundColor(.primary)
                    
                    Text("Maturity: ")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                    
                    +  Text(policie.maturityDate ?? "")
                        .font(.body)
                        .foregroundColor(.primary)
                    
                    Text("Premium Frequenc: ")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                    
                    +  Text(policie.premiumFrequency ?? "")
                        .font(.body)
                        .foregroundColor(.primary)
                    
                    Text("Last Premium: ")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                    
                    +  Text(policie.lastPremiumPaid ?? "")
                        .font(.body)
                        .foregroundColor(policie.lastPremiumPaid == "Paid" ? .green : Color.clightRed)
                    
                    Text("Next Amount: ")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                    
                    +  Text("₹\(policie.nextPremiumAmount ?? 0)")
                        .font(.body)
                        .foregroundColor(.primary)
                    
                    Text("Sum Assured: ")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                    
                    +  Text("₹\(policie.sumAssured ?? 0)")
                        .font(.body)
                        .foregroundColor(.primary)
                }
                .padding(.leading)
                .font(.caption)
                .foregroundColor(.secondary)
                .transition(.opacity.combined(with: .move(edge: .top)))
            }
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(12)
        .shadow(radius: 2)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.cdarkBlue, lineWidth: 1) // Change color and width as needed
        )
    }
}

struct PoliciesCell_Previews: PreviewProvider {
    static var previews: some View {
        PoliciesCell(policie: MockData.samplePolicies,isExpanded: true, onToggleExpand: {})
    }
}
