//
//  CustomButton.swift
//  PoliciesTestApp
//
//  Created by MTPC-523 on 21/07/25.
//
import SwiftUI

struct CustomButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .frame(width: 200)
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .padding(.horizontal, 40)
                .padding(.vertical, 15)
                .background(Color.darkBlue)
                .cornerRadius(25)
                .shadow(color: Color.lightRed.opacity(0.2), radius: 5, x: 0, y: 3)
        }
    }
}

#Preview {
    CustomButton(title: "Save", action: {
        print("Save tapped")
    })
}
