//
//  LoginView.swift
//  learningSwiftUI
//
//  Created by Oğuzhan Abuhanoğlu on 25.04.2024.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        
        NavigationStack{
            VStack{
                
                //header
               HeaderView()
                    .padding(.top, 80)
                    
                //Form
                Form{
                    TextField("Email", text: $email)
                    SecureField("Password", text: $password)
                }.frame(height: 150)
                    .padding(.top, 70)
                
                //Button
                BigButton(title: "Log In", action: {})
                    
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
