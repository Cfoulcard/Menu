//
//  ContentView.swift
//  Menu
//
//  Created by Christian Foulcard on 8/22/23.
//

import SwiftUI

struct MenuView: View {
    
    // UI depends on state of this property. This means it changes the UI when it changes
    @State var menuItems:[MenuItem] = [MenuItem]()
    var dataService = DataService()
        
    var body: some View {
                
        List(menuItems) { item in
            
            HStack {
                Image(item.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 50)
                    .cornerRadius(10)
                Text(item.name)
                    .bold()
                Spacer()
                Text("$" + item.price)
            }
            .listRowSeparator(.hidden)
            .listRowBackground(Color(.brown).opacity(0.1))
        }
        .listStyle(.plain)
        .onAppear {
            print("Wait for it... we're psudeo mocking gathering data from an external source")
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                menuItems = dataService.getData()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
