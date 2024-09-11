//
//  UserModel.swift
//  FirstProject
//
//  Created by Elaf on 08/03/1446 AH.
//

import Foundation


struct UserModel: Identifiable{
    var id = UUID()
    var username : String
    var email : String
    var bio : String
    var education : String
    var skill : String
    var password : String
}
