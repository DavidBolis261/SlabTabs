//
//  More.swift
//  SlabTabs
//
//  Created by David Bolis on 21/7/2022.
//

import SwiftUI

struct More: View {
    var body: some View {
        VStack{
            Text("More").font(.largeTitle)
            Spacer()
            VStack(alignment: .leading){
                HStack{
                    Image(systemName: "magnifyingglass").foregroundColor(Color.orange)
                    Spacer()
                    Text("Advanced Search ")
                }.frame(width: 350, height: 60).border(.black, width: 1)
                HStack{
                    Image(systemName: "person.fill")
                    Spacer()
                    Text("Contact Us ")
                }.frame(width: 350, height: 50).border(.black, width: 1)
                HStack{
                    Image(systemName: "simcard.2")
                    Spacer()
                    Text("Other Slab Tabs ")
                }.frame(width: 350, height: 50).border(.black, width: 1)
                HStack{
                    Image(systemName: "arrowshape.turn.up.backward.circle")
                    Spacer()
                    Text("Log Out ")
                }.frame(width: 350, height: 50).border(.black, width: 1)
            }

            Spacer()
        }.font(.title).padding()
    }
}

struct More_Previews: PreviewProvider {
    static var previews: some View {
        More()
    }
}
