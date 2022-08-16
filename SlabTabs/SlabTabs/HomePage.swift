//
//  HomePage.swift
//  SlabTabs
//
//  Created by David Bolis on 21/7/2022.
//

import SwiftUI

struct HomePage: View {
    init(){
        UITabBar.appearance().backgroundColor = UIColor.orange
    }
    @State var tabSelected = 0
    var body: some View {
        TabView(selection: $tabSelected) {
            myslabs().tabItem { Image(systemName: "menucard")
                Text("My Slabs")
            }.tag(0)
            Portfolio().tabItem {  Image(systemName: "chart.bar.xaxis")
                Text("Portfolio")
            }.tag(1)
            addslab().tabItem {  Image(systemName: "plus.circle")
                Text("Add Slab")
            }.tag(2)
            More().tabItem {  Image(systemName: "circle.hexagongrid")
                Text("More")
            }.tag(3)
        }

    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
