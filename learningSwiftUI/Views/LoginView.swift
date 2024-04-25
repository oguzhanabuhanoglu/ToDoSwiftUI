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
                VStack{
                    Image("nike")
                        .resizable()
                        .frame(width: 250,height: 80)
                       
                    
                    Text("Just Do It")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                }.padding(.top, 80)
                    
                
                    
                Form{
                    TextField("Email", text: $email)
                    SecureField("Password", text: $password)
                }.frame(height: 150)
                    .padding(.top, 70)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 5)
                            .foregroundStyle(.primary)
                        Text("Log In")
                            .foregroundStyle(.white)
                    }
                }).frame(height: 50)
                    .padding(.horizontal)
                    .padding(.top, 10)
                    
                
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
