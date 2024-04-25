//
//  RegisterView.swift
//  learningSwiftUI
//
//  Created by Oğuzhan Abuhanoğlu on 25.04.2024.
//

import SwiftUI

struct RegisterView: View {
    
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        
        NavigationStack{
            VStack{
                //Header
                HeaderView()
                    .padding(.top, 80)
                
                //Register form
                Form{
                    Section(header: Text("Register Form")) {
                        TextField("Enter Your Full Name", text: $name)
                        TextField("Email", text: $email)
                        TextField("Password", text: $password)
                    }
                }.frame(height: 200)
                
                //Button
                BigButton(title: "Sign Up", action: {})
                
                Spacer()
                
            }
        }
    }
}

#Preview {
    RegisterView()
}
