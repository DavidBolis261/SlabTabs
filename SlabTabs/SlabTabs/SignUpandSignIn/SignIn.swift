//
//  SignIn.swift
//  SlabTabs
//
//  Created by David Bolis on 19/7/2022.
//

import SwiftUI

struct SignIn: View {
    @State var emailAddress = ""
    @State var password = ""
    @EnvironmentObject var sharedClass : sharedclass
    var body: some View {
        VStack{
            Image("AppIcontt").resizable().frame(width: 200, height: 100)
            Text("Welcome Back").bold().font(.title)
            Text("Log In To Your Account").font(.footnote)
            Spacer()
            VStack{
                TextField("Email Address", text: $emailAddress).modifier(customViewModifier(roundedCornes: 6, startColor: .gray, endColor: .gray, textColor: .white))
                Text("")
                SecureField("sdfdsf", text: $password).modifier(customViewModifier(roundedCornes: 6, startColor: .gray, endColor: .gray, textColor: .white))
            }.padding()
            Spacer()
            Button(action:{sharedClass.navPage = 3 }){
                Text("Sign In").frame(width: 230, height: 80).background(Color.blue).foregroundColor(Color.white).cornerRadius(10).font(.largeTitle)
            }
            Spacer()
        
        }
    }
}

struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        SignIn()
    }
}
struct customViewModifier: ViewModifier {
    var roundedCornes: CGFloat
    var startColor: Color
    var endColor: Color
    var textColor: Color
    
    func body(content: Content) -> some View {
        content
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [startColor, endColor]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(roundedCornes)
            .padding(3)
            .foregroundColor(textColor)
            .overlay(RoundedRectangle(cornerRadius: roundedCornes)
                        .stroke(LinearGradient(gradient: Gradient(colors: [startColor, endColor]), startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2.5))
            .font(.custom("Open Sans", size: 18))
            
            .shadow(radius: 10)
    }
}
