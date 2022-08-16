//
//  myslabs.swift
//  SlabTabs
//
//  Created by David Bolis on 21/7/2022.
//

import SwiftUI

struct myslabs: View {
    @State var searchTerm = ""
    var body: some View {
        VStack{
            Text("My Slabs").font(.title)
            HStack{
                TextField("Search", text: $searchTerm)
                Image(systemName: "magnifyingglass.circle").font(.title).foregroundColor(Color.blue)
            }.modifier(customViewModifier(roundedCornes: 6, startColor: .white, endColor: .white, textColor: .black))
            Spacer()
            HStack{
                Text("Collection (12)")
                Spacer()
                Image(systemName: "arrow.up.arrow.down.square").foregroundColor(Color.blue).font(.title)
            }
            
            ScrollView(){
                ForEach(0..<7, id: \.self){ i in
                    slabView().padding().border(.gray, width: 1)
                }
            }
                
            
            
            
            Spacer()
        }.padding()
    }
}

struct myslabs_Previews: PreviewProvider {
    static var previews: some View {
        myslabs()
    }
}

struct slabView: View {
    var body: some View{
        VStack{
            HStack{
                VStack{
                    HStack{
                        Text("PLAYER")
                        Spacer()
                        Text("David Bolis")
                    }
                    Divider()
                    HStack{
                        Text("SET")
                        Spacer()
                        Text("1995-93 Tops Gold")
                    }
                    Divider()
                    HStack{
                        Text("CARD")
                        Spacer()
                        Text("Rookie Card")
                    }
                    VStack{
                        HStack{
                            Text("NO.")
                            Spacer()
                            Text("392")
                        }
                        Divider()
                        HStack{
                            Text("POP.")
                            Spacer()
                            Text("352-0-48")
                        }
                        Divider()
                        HStack{
                            Text("GRADE")
                            Spacer()
                            Text("PSA 9")
                        }
                        Divider()
                        HStack{
                            Text("PRICE")
                            Spacer()
                            Text("$23.44")
                        }
                        Divider()
                        HStack{
                            Text("NOTES")
                            Spacer()
                            Text("Some notes here")
                        }
                    }
                    
                }//.offset(y: -25)
                Image("testImage").resizable().frame(width: 100, height: 200)
            }
            
        }
    }
}
