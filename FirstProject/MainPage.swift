//
//  MainPage.swift
//  FirstProject
//
//  Created by Elaf on 08/03/1446 AH.
//

import SwiftUI

struct MainPage: View {
    var body: some View {
        TabView {
           ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                    ProfileView()
                }
            
           
        }
    }
}



struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
