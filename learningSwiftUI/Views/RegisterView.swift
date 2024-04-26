//
//  RegisterView.swift
//  learningSwiftUI
//
//  Created by Oğuzhan Abuhanoğlu on 25.04.2024.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        
        NavigationStack{
            VStack{
                //Header
                HeaderView()
                    .padding(.top, 80)
                
                //Register form
                Form{
                    
                    
                    Section(header: Text("Register Form")) {
                        TextField("Enter Your Full Name", text: $viewModel.name)
                            .autocorrectionDisabled()
                            .autocapitalization(.none)
                        TextField("Email", text: $viewModel.email)
                            .autocorrectionDisabled()
                            .autocapitalization(.none)
                        SecureField("Password", text: $viewModel.password)
                            .autocorrectionDisabled()
                            .autocapitalization(.none)
                        if !viewModel.errorMessage.isEmpty {
                            Text(viewModel.errorMessage)
                                .foregroundStyle(.red)
                        }else{
                            Text("Welcome")
                                .foregroundStyle(.secondary)
                        }
                    }
                }.frame(height: 230)
                
                //Button
                BigButton(title: "Sign Up", action: viewModel.Register)
                    .padding(.top, 10)
                
                Spacer()
                
            }
        }
        
        
    }
}

#Preview {
    RegisterView()
}
