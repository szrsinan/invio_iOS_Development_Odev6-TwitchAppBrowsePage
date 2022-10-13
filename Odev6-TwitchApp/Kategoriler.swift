//
//  Kategoriler.swift
//  Odev6-TwitchApp
//
//  Created by Sinan Sezer on 12.10.2022.
//

import Foundation

class Kategoriler {
    var kategoriId:Int?
    var kategoriResimAd:String?
    var kategoriAd:String?
    var kategoriIzleyiciSayi:String?
    var kategoriTag1:String?
    var kategoriTag2:String?
    
    
    init(kategoriId: Int, kategoriResimAd: String, kategoriAd: String, kategoriIzleyiciSayi: String, kategoriTag1: String, kategoriTag2: String) {
        self.kategoriId = kategoriId
        self.kategoriResimAd = kategoriResimAd
        self.kategoriAd = kategoriAd
        self.kategoriIzleyiciSayi = kategoriIzleyiciSayi
        self.kategoriTag1 = kategoriTag1
        self.kategoriTag2 = kategoriTag2
        
    }
}
