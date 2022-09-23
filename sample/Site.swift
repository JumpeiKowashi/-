//
//  URL.swift
//  sample
//
//  Created by Jumpei Kowashi on 2022/09/23.
//

import Foundation


struct Site: Hashable {
    let sitename: String
    let url: String
    
    init(sitename: String, url: String) {
        self.sitename = sitename
        self.url = url
    }
}
