//
//  UserViewModel.swift
//  FirstProject
//
//  Created by Elaf on 08/03/1446 AH.
//

import Foundation

import SwiftUI

class UserViewModel: ObservableObject {
    @Published var userName = ""
    @Published var email = ""
    @Published var bio = ""
    @Published var education = ""
    @Published var skills = ""
    @Published var password = ""
    
    @Published var isSignedUp = false
    @Published var contacts = [UserModel]()
    
    // Function to handle user sign-up
    func addContact( userName : String , email: String, bio : String, education: String, skill: String , password: String){
        let newContact = UserModel(username: userName, email: email, bio: bio, education: education, skill: skill, password: password)
        contacts.append(newContact)
    }
    func saveContact( userName : String , email: String, bio : String, education: String, skill: String , password: String){
       
    }
}
