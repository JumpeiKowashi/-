//
//  ContentView.swift
//  sample
//
//  Created by Jumpei Kowashi on 2022/09/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingSheet = false
    @ObservedObject var viewmodel = URLViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewmodel.sites, id: \.self) { site in
                    HStack {
                        Text(site.sitename)
                        Spacer()
                    }
                    .contentShape(Rectangle())
                    .onTapGesture {
                        UIApplication.shared.open(URL(string: site.url)!)
                    }
                }
            }.navigationTitle(Text("行きたいところリスト"))
                .navigationBarItems(trailing: Button(action: {
                    showingSheet.toggle()
                }, label: {
                    Image(systemName: "plus.circle")
                }))
                .sheet(isPresented: $showingSheet) {AddVIew(viewmodel: viewmodel)}
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
