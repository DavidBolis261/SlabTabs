//
//  addslab.swift
//  SlabTabs
//
//  Created by David Bolis on 21/7/2022.
//

import SwiftUI

struct addslab: View {
    @State var playertextField = ""
    @State var GradedChoice = "Ungraded"
    @State var PSAGrade = "AA - Authentic Altered"
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
                HStack{
                    Text("Grading Co:").font(.title)
                    Spacer()
                    Menu{
                        Button(action:{GradedChoice = "Ungraded" }, label: {Text("Ungraded")})
                        Button(action:{GradedChoice = "PSA" }, label: {Text("PSA")})
                        Button(action:{GradedChoice = "BGS" }, label: {Text("BGS")})
                        Button(action:{GradedChoice = "SGC" }, label: {Text("SGC")})
                        Button(action:{GradedChoice = "CSG" }, label: {Text("CSG")})
                        Button(action:{GradedChoice = "KSA" }, label: {Text("KSA")})



                    } label: {
                        Label(
                            title: {Text("\(GradedChoice)")},
                            icon: { Image(systemName: "chevron.up.chevron.down")}
                        ).foregroundColor(Color.black)
                    }
                    Spacer()
                    }
                VStack{
                    if(GradedChoice == "Ungraded"){
                        Divider()
                    }
                    if(GradedChoice == "PSA"){
                        HStack{
                            Text("PSA Grade: ").font(.title)
                            Spacer()
                            Menu{
                                Button(action:{PSAGrade = "10 - GEM MT" }, label: {Text("10 - GEM MT")})
                                Button(action:{PSAGrade = "9 - MINT" }, label: {Text("9 - MINT")})
                                Button(action:{PSAGrade = "8.5 NM-MT+" }, label: {Text("8.5 NM-MT+")})
                                Button(action:{PSAGrade = "8 NM-MT" }, label: {Text("8 NM-MT")})
                                Button(action:{PSAGrade = "7.5 - NM+" }, label: {Text("7.5 - NM+")})
                                Button(action:{PSAGrade = "7 - NM" }, label: {Text("7 - NM")})
                                Button(action:{PSAGrade = "6.5 EX-MT+" }, label: {Text("6.5 EX-MT+")})
                                Button(action:{PSAGrade = "6 - EX-MT" }, label: {Text("6 - EX-MT")})
                                Button(action:{PSAGrade = "5.5 - EX+" }, label: {Text("5.5 - EX+")})
                                VStack{
                                    Button(action:{PSAGrade = "5 - EX" }, label: {Text("5 - EX")})
                                    Button(action:{PSAGrade = "4.5 - VG-EX+" }, label: {Text("4.5 - VG-EX+")})
                                    Button(action:{PSAGrade = "4 - VG-EX" }, label: {Text("4 - VG-EX")})
                                    Button(action:{PSAGrade = "3.5 - VG+" }, label: {Text("3.5 - VG+")})
                                    Button(action:{PSAGrade = "3 - VG" }, label: {Text("3 - VG")})
                                    Button(action:{PSAGrade = "2.5 - GOOD+" }, label: {Text("2.5 - GOOD+")})
                                    Button(action:{PSAGrade = "2 - GOOD" }, label: {Text("2 - GOOD")})
                                    Button(action:{PSAGrade = "1.5 - FR" }, label: {Text("1.5 - FR")})
                                    Button(action:{PSAGrade = "1 - PR" }, label: {Text("1 - PR")})
                                    VStack{
                                        Button(action:{PSAGrade = "A - AUTHENTIC" }, label: {Text("A - AUTHENTIC")})
                                        Button(action:{PSAGrade = "AA - AUTHENTIC ALTERED" }, label: {Text("AA - AUTHENTIC ALTERED")})
                                        Button(action:{PSAGrade = "AUTHENTIC AUTO" }, label: {Text("AUTHENTIC AUTO")})
                                    }
                                }
                            } label: {
                                Label(
                                    title: {Text("\(PSAGrade)")},
                                    icon: { Image(systemName: "chevron.up.chevron.down")}
                                ).foregroundColor(Color.black)
                            }
                            Spacer()
                        }
                        Text("Does your slab include Qualifier?")
                        
                    }
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
