//
//  ContentView.swift
//  swiftUIFirebaseAuth
//
//  Created by Ashton Hess on 12/1/21.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var userAuth: UserAuth
    
    var body: some View {
        NavigationView{
            if !userAuth.isLoggedin{
                LoginView()
            }else{
                DashboardView_swift()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
