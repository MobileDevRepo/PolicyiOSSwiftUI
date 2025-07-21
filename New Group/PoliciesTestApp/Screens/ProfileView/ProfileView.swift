//
//  Profile.swift
//  PoliciesTestApp
//
//  Created by MTPC-523 on 17/07/25.
//

import SwiftUI

struct ProfileView: View {
    
    @StateObject var viewModel = ProfileViewModel()
    @FocusState private var focusedTextField: FormTextField?
    
    enum FormTextField {
        case firstName, lastName, email
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Info").fontWeight(.semibold)) {
                    TextField("First Name", text: $viewModel.user.firstName)
                        .padding(12)
                        .frame(height: 50) // set frame size
                        .focused($focusedTextField, equals: .firstName)
                        .onSubmit { focusedTextField = .lastName }
                        .submitLabel(.next)
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.cdarkBlue, lineWidth: 2)
                        )
                    
                    TextField("Last Name", text: $viewModel.user.lastName)
                        .focused($focusedTextField, equals: .lastName)
                        .padding(12)
                        .frame(height: 50) // set frame size
                        .onSubmit { focusedTextField = .email }
                        .submitLabel(.next)
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.cdarkBlue, lineWidth: 2)
                        )
                    
                    TextField("Email", text: $viewModel.user.email)
                        .focused($focusedTextField, equals: .email)
                        .padding(12)
                        .frame(height: 50) // set frame size
                        .onSubmit { focusedTextField = nil }
                        .submitLabel(.continue)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.cdarkBlue, lineWidth: 2)
                        )
                    DatePicker("Birthday",
                               selection: $viewModel.user.birthdate,
                               in: Date().oneHundredTenYearsAgo...Date().eighteenYearsAgo,
                               displayedComponents: .date)
                    .padding(12)
                    .frame(maxWidth: .infinity, minHeight: 50)
                    .overlay(
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(Color.cdarkBlue, lineWidth: 2)
                    )
                    
                    CustomButton(title: "Save Changes", action: {
                        viewModel.saveChanges()
                    })
                    .padding()
                }
            }
            .navigationTitle("Profile")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Button("Dismiss") { focusedTextField = nil }
                }
            }
        }
        .onAppear {
            viewModel.retrieveUser()
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    ProfileView()
}
