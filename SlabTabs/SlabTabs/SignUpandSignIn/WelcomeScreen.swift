//
//  WelcomeScreen.swift
//  SlabTabs
//
//  Created by David Bolis on 19/7/2022.
//

import SwiftUI

struct WelcomeScreen: View {
    @EnvironmentObject var sharedClass: sharedclass

    var body: some View {
        VStack{
            Spacer()
            Image("AppIcontt").resizable().frame(width: 200, height: 100)
            Text("Keeping \(sharedClass.navPage) tabs on your slabs...").bold()
            Spacer()
            Button(action:{sharedClass.navPage = 1 }){
                Text("Sign In").frame(width: 230, height: 80).background(Color.blue).foregroundColor(Color.white).cornerRadius(10).font(.largeTitle)
            }
            Text("")
            Button(action:{ sharedClass.navPage = 2}){
                Text("Sign Up").frame(width: 230, height: 80).foregroundColor(Color.black).font(.largeTitle).border(.black)
            }
            Spacer()
        }
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}
