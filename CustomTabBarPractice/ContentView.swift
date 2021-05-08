//
//  ContentView.swift
//  CustomTabBarPractice
//
//  Created by Сахар Кубический on 08.05.2021.
//

import SwiftUI

struct ContentView: View {
    @State var selected = 0
    var body: some View {
        VStack {
            Spacer()
            ZStack {
                HStack {
                    Button(action: {
                        self.selected = 0
                    }) {
                        Image(systemName: "house")
                    }.foregroundColor(self.selected == 0 ? .black : .white)
                    Spacer(minLength: 12)
                    Button(action: {
                        self.selected = 1
                    }) {
                        Image(systemName: "magnifyingglass")
                    }.foregroundColor(self.selected == 1 ? .black : .white)
                    
                    Spacer().frame(width: 120)
                    
                    Button(action: {
                        self.selected = 2
                    }) {
                        Image(systemName: "person")
                    }.foregroundColor(self.selected == 2 ? .black : .white)
                    
                    Spacer(minLength: 12)
                    
                    Button(action: {
                        self.selected = 3
                    }) {
                        Image(systemName: "list.bullet")
                    }.foregroundColor(self.selected == 3 ? .black : .white)
                }
                .padding()
                .padding(.horizontal, 22)
                .background(Color.pink)
                                
                Button(action: {
                    //
                }) {
                    Image(systemName: "heart")
                        .renderingMode(.original)
                        .padding(28)
                }.background(Color.yellow)
                .clipShape(Circle())
                .offset(y: -32)
                .shadow(color: Color.red,radius: 5)
                
            }
        }
        .background(Color.yellow.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/))
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
