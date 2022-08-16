//
//  ContentView.swift
//  SlabTabs
//
//  Created by David Bolis on 19/7/2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var sharedClass : sharedclass

    var body: some View {
        ZStack{
            if(sharedClass.navPage == 0){
                WelcomeScreen()
            }
            if(sharedClass.navPage == 1){
                SignIn()
            }
            if(sharedClass.navPage == 2){
                Signup()
            }
            if(sharedClass.navPage == 3){
                HomePage()
            }

        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
