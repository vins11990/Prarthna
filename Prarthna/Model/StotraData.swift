//
//  StotraData.swift
//  Prarthna
//
//  Created by viNs on 9/13/18.
//  Copyright © 2018 Vinay Soni. All rights reserved.
//

import Foundation

class StotraData {
    
    var list = [Stotra]()
    
    init() {
        
        list.append(Stotra(stotra: "Shree Krushnaashtakam", details: shreeKrushnashtakam))
        list.append(Stotra(stotra: "Shiva Mahimna Stotram", details: shivMahimna))
        list.append(Stotra(stotra: "Madhuraashtakam", details: madhurashtakam))
        
    }
}

let shreeKrushnashtakam = ["a","b","c"]
let shivMahimna = ["a","b","c"]
let madhurashtakam = ["a","b","c"]
