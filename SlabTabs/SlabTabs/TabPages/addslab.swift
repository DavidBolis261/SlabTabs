//
//  addslab.swift
//  SlabTabs
//
//  Created by David Bolis on 21/7/2022.
//

import SwiftUI

struct addslab: View {
    @State var playertextField = ""
    var body: some View {
        VStack{
            Text("Adding Slab").font(.largeTitle)
            ScrollView{
                HStack{
                    Text("Player:").font(.title)
                    Spacer()
                    TextField("", text: $playertextField).underlineTextField().frame(width: 200)
                }
                HStack{
                    Text("Set:").font(.title)
                    Spacer()
                    TextField("", text: $playertextField).underlineTextField().frame(width: 200)
                }
                HStack{
                    Text("Card:").font(.title)
                    Spacer()
                    TextField("", text: $playertextField).underlineTextField().frame(width: 200)
                }
                HStack{
                    Text("Card No:").font(.title)
                    Spacer()
                    TextField("", text: $playertextField).underlineTextField().frame(width: 200)
                }
                
            }
            
            
        }.padding()
    }
}

struct addslab_Previews: PreviewProvider {
    static var previews: some View {
        addslab()
    }
}
extension Color {
    static let darkPink = Color(red: 208 / 255, green: 45 / 255, blue: 208 / 255)
}
extension View {
    func underlineTextField() -> some View {
        self
            .padding(.vertical, 10)
            .overlay(Rectangle().frame(height: 2).padding(.top, 35))
            .foregroundColor(.black)
            .padding(10)
    }
}
