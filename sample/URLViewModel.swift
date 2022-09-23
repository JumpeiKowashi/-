//
//  URLViewModel.swift
//  sample
//
//  Created by Jumpei Kowashi on 2022/09/23.
//

import Foundation

class URLViewModel: ObservableObject {
    
    @Published var sites = [
        Site(sitename: "google", url: "https://google.com"),
        Site(sitename: "Novelee", url: "https://novelee.app")
    ]
    
    func addSite(_ sitename: String ,_ url: String) {
        let site = Site(sitename: sitename, url: url)
        sites.append(site)
    }
}
