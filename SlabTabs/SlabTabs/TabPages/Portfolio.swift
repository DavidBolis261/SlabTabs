//
//  Portfolio.swift
//  SlabTabs
//
//  Created by David Bolis on 21/7/2022.
//

import SwiftUI

struct Portfolio: View {
    var body: some View {
        ZStack{
            VStack{
                Text("Portfolio").font(.largeTitle)
                Spacer()
                HStack{
                    Button(action:{ }){
                        VStack(alignment:.leading){
                            Text("12")
                            Text("Tracked Cards").foregroundColor(Color.black)
                        }
                        
                    }.frame(width: 150, height: 100).border(.black, width: 1)
                    Button(action:{ }){
                        VStack(alignment:.leading){
                            Text("$300")
                            Text("Estimated Value").foregroundColor(Color.black)
                        }
                        
                    }.frame(width: 150, height: 100).border(.black, width: 1)
                }
                HStack{
                    Button(action:{ }){
                        VStack(alignment:.leading){
                            Text("$250 ")
                            Text("Purchase Price").foregroundColor(Color.black)
                        }
                        
                    }.frame(width: 150, height: 100).border(.black, width: 1)
                    Button(action:{ }){
                        VStack(alignment:.leading){
                            Text("$50")
                            Text("Estimated Profit").foregroundColor(Color.black)
                        }
                        
                    }.frame(width: 150, height: 100).border(.black, width: 1)
                }
                Spacer()
            }
            
        }
    }
}

struct Portfolio_Previews: PreviewProvider {
    static var previews: some View {
        Portfolio()
    }
}
