//
//  LoginView.swift
//  learningSwiftUI
//
//  Created by Oğuzhan Abuhanoğlu on 25.04.2024.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        
        NavigationStack{
            VStack{
                
                //header
               HeaderView()
                    .padding(.top, 80)
                    
                //Form
                Form{
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundStyle(.red)
                    }else{
                        Text("Welcome")
                            .foregroundStyle(.secondary)
                    }
                    TextField("Email", text: $viewModel.email)
                    SecureField("Password", text: $viewModel.password)
                }.frame(height: 200)
                    .padding(.top, 70)
                
                //Button
                BigButton(title: "Log In", action: viewModel.LogIn)
                    
                //Footer
                VStack{
                    NavigationLink("Create new Account", destination: RegisterView())
                }.padding(.top, 10)
                Spacer()
                
                
                
            }
        }
    }
}

#Preview {
    LoginView()
}
