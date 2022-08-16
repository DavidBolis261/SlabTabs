//
//  Signup.swift
//  SlabTabs
//
//  Created by David Bolis on 27/7/22.
//

import SwiftUI

struct Signup: View {
    @State var us = ""
    var body: some View {
        VStack{
            Image("AppIcon").resizable().frame(width: 200, height: 100)
            Text("Welcome Back").bold().font(.title)
            Text("Log In To Your Account").font(.footnote)
            Spacer()
            VStack{
                TextField("Full Name", text: $us).modifier(customViewModifier(roundedCornes: 6, startColor: .gray, endColor: .gray, textColor: .white))
                Text("")
                TextField("Email Address", text: $us).modifier(customViewModifier(roundedCornes: 6, startColor: .gray, endColor: .gray, textColor: .white))
                SecureField("Password", text: $us).modifier(customViewModifier(roundedCornes: 6, startColor: .gray, endColor: .gray, textColor: .white))
                SecureField("Repeat Password", text: $us).modifier(customViewModifier(roundedCornes: 6, startColor: .gray, endColor: .gray, textColor: .white))
            }.padding()
            Spacer()
            Button(action:{ }){
                Text("Sign Up").frame(width: 230, height: 80).background(Color.blue).foregroundColor(Color.white).cornerRadius(10).font(.largeTitle)
            }
            Spacer()
        
        }
    }
}

struct Signup_Previews: PreviewProvider {
    static var previews: some View {
        Signup()
    }
}
