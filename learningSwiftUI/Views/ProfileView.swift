//
//  ProfileView.swift
//  learningSwiftUI
//
//  Created by Oğuzhan Abuhanoğlu on 25.04.2024.
//

import SwiftUI

struct ProfileView: View {
    
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationStack{
            VStack{
                
                if let user = viewModel.user {
                    Image(systemName: "person.circle")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .foregroundStyle(.blue)
                        .aspectRatio(contentMode: .fit)
                        .padding(.bottom)
                    
                    VStack{
                        HStack{
                            Text("Name: ")
                                .bold()
                            Text(user.name)
                        }
                        
                        HStack{
                            Text("Email: ")
                                .bold()
                            Text(user.email)
                        }
                    }
                    
                }else {
                    Text("Profile yükleniyor..")
                }
                
                
                BigButton(title: "Log Out") {
                    viewModel.logOut()
                }
                
            }
            .navigationTitle("Profile")
        }
        .onAppear(perform: {
            viewModel.fetchUser()
        })
    }
}

#Preview {
    ProfileView()
}
