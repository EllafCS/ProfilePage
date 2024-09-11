//
//  ProfileView.swift
//  FirstProject
//
//  Created by Elaf on 08/03/1446 AH.
//

import SwiftUI

struct ProfileView: View {
    @State private var user = UserModel(username: "", email: "",bio: "", education: "",skill: "",password: "")
    @State private var isEditing = false
    @State var contactVM = UserViewModel()
        @State private var isProfileUpdated: Bool = false


        var body: some View {
            NavigationView {
                Form {
                    Section(header: Text("Your Profile")) {

                        TextField("Name", text: $user.username)
                        TextField("Email", text:$user.email)
                        TextField("Bio", text: $user.bio)
                        TextField("Education", text: $user.education)
                        TextField("Skills", text: $user.skill)
                        TextField("Password", text: $user.password)
                        }
                    }
                    
                    Button("Update Profile") {
                        // Add action to update the profile
                        isProfileUpdated = true
                    }
                }
            .navigationBarTitle(" Profile", displayMode: .inline)
            }
           
}

   

        struct ProfileEditView_Previews: PreviewProvider {
            static var previews: some View {
                NavigationView {
                    ProfileView()
                }
            }
            
        }
