//
//  ContentView.swift
//  FirstProject
//
//  Created by Elaf on 08/03/1446 AH.
//

import SwiftUI

struct ContentView: View {
    @State var userName = ""
    @State var email = ""
    @State var bio = ""
    @State var education = ""
    @State var skill = ""
    @State var password = ""
    @State var signUp = "Sign Up"
    @State var signIn = "Sign In"
    @StateObject var contactVM = UserViewModel()
    @State var nToProfile = false
    
    var body: some View {
        NavigationView{
            VStack(spacing : 8) {
                Text("Sign up")
                    .font(.system(size:35,weight: .bold,design: .default))
                    .foregroundColor(.black)
                    .padding()
                Text("Let's Creat Your Account")
                    .font(.system(size:15,weight: .medium,design: .default))
                    .foregroundColor(.gray)
                
                VStack(alignment: .center,spacing: 26){
                    HStack{
                        ZStack(alignment: .trailing){
                            Image(systemName: "person")
                                .resizable()
                                .frame(width:20, height:20)
                                .padding(.trailing,15)
                            TextField("User Nmae",text: $userName)
                        }
                    }
                    .frame(width: 288, height: 49)
                    .foregroundColor(.white)
                    .padding([.leading,.leading],15)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                        
                            .stroke(Color.black)
                    )
                    .background(Color("TextFieldColor"))
                    .cornerRadius(15)
                    
                    HStack{
                        ZStack(alignment: .trailing){
                            Image(systemName: "envelope")
                                .resizable()
                                .frame(width:25, height:20)
                                .padding(.trailing,15)
                            TextField("Email",text: $email)
                        }
                    }
                    .frame(width: 288, height: 49)
                    .foregroundColor(.white)
                    .padding([.leading,.leading],15)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                        
                            .stroke(Color.black)
                    )
                    .background(Color("TextFieldColor"))
                    .cornerRadius(15)
                    
                    HStack{
                        ZStack(alignment: .trailing){
                            Image(systemName: "eye")
                                .resizable()
                                .frame(width:25, height:20)
                                .padding(.trailing,15)
                            TextField("Bio",text: $bio)
                        }
                    }
                    .frame(width: 288, height: 48)
                    .foregroundColor(.white)
                    .padding([.leading,.leading],15)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                        
                            .stroke(Color.black)
                    )
                    .background(Color("TextFieldColor"))
                    .cornerRadius(15)
                    
                    HStack{
                        ZStack(alignment: .trailing){
                            Image(systemName: "eye")
                                .resizable()
                                .frame(width:25, height:20)
                                .padding(.trailing,15)
                            TextField("Education",text: $education)
                        }
                    }
                    .frame(width: 288, height: 48)
                    .foregroundColor(.white)
                    .padding([.leading,.leading],15)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                        
                            .stroke(Color.black)
                    )
                    .background(Color("TextFieldColor"))
                    .cornerRadius(15)
                    HStack{
                        ZStack(alignment: .trailing){
                            Image(systemName: "eye")
                                .resizable()
                                .frame(width:25, height:20)
                                .padding(.trailing,15)
                            TextField("Skills",text: $skill)
                        }
                    }
                    .frame(width: 288, height: 48)
                    .foregroundColor(.white)
                    .padding([.leading,.leading],15)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                        
                            .stroke(Color.black)
                    )
                    .background(Color("TextFieldColor"))
                    .cornerRadius(15)
                    HStack{
                        ZStack(alignment: .trailing){
                            Image(systemName: "eye")
                                .resizable()
                                .frame(width:25, height:20)
                                .padding(.trailing,15)
                            TextField("Password",text: $password)
                        }
                    }
                    .frame(width: 288, height: 48)
                    .foregroundColor(.white)
                    .padding([.leading,.leading],15)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                        
                            .stroke(Color.black)
                    )
                    .background(Color("TextFieldColor"))
                    .cornerRadius(15)
                    
                    VStack(){
                        Button(signUp){
                            signUp = "Sign Up Successfuly"
                            contactVM.addContact(userName: userName, email: email, bio: bio, education: education, skill: skill, password: password)
                            nToProfile = true
                        }
                        
                        
                        .frame(width: 215, height: 25)
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .padding(.horizontal,30)
                        .background(Color("ButtonColor"))
                        .cornerRadius(15)
                        .shadow(radius: 10)
                        
                        NavigationLink(destination: ProfileView(),isActive: $nToProfile){
                            EmptyView()
                        }
                        .hidden()
                        
                    }
                    
                    HStack{
                        Text (" Already You Have Account ? ")
                        
                        Button (signIn){
                            signUp = "Sign Up Successfuly"
                        }
                        .font(.headline)
                        .foregroundColor(.blue)
                        .padding()
                        
                        
                    }
                }
                Spacer()
            }
            .padding()
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
