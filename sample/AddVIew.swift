//
//  AddVIew.swift
//  sample
//
//  Created by Jumpei Kowashi on 2022/09/23.
//

import SwiftUI

struct AddVIew: View {
    
    @State private var sitename = ""
    @State private var url = ""
    
    @Environment(\.dismiss) private var dismiss
    var viewmodel: URLViewModel
    
    var body: some View {
        VStack {
            TextField("サイト名", text: $sitename)
            TextField("URL", text: $url)
            Button("追加") {
                viewmodel.addSite(sitename, url)
                url = ""
                dismiss()
            }
        }.padding()
    }
}

//struct AddVIew_Previews: PreviewProvider {
//    static var previews: some View {
//        AddVIew()
//    }
//}
