//
//  GozAtVC.swift
//  Odev6-TwitchApp
//
//  Created by Sinan Sezer on 12.10.2022.
//

import UIKit

class GozAtVC: UIViewController{
    
    @IBOutlet weak var kategorilerTableView: UITableView!
    
    var kategorilerListe = [Kategoriler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let k1 = Kategoriler(kategoriId: 1, kategoriResimAd: "Valorant", kategoriAd: "VALORANT", kategoriIzleyiciSayi: "57,1bin", kategoriTag1: "Nişancı Oyunu", kategoriTag2: "Birinci Şahıs Nişancı")
        let k2 = Kategoriler(kategoriId: 5, kategoriResimAd: "JustChatting", kategoriAd: "Just Chatting", kategoriIzleyiciSayi: "150,5bin", kategoriTag1: "IRL", kategoriTag2: "")
        let k3 = Kategoriler(kategoriId: 2, kategoriResimAd: "Overwatch2", kategoriAd: "Overwatch2", kategoriIzleyiciSayi: "163,8bin", kategoriTag1: "Nişancı Oyunu", kategoriTag2: "Birinci Şahıs Nişancı")
        let k4 = Kategoriler(kategoriId: 3, kategoriResimAd: "LeagueOfLegends", kategoriAd: "League of Legends", kategoriIzleyiciSayi: "81,2bin", kategoriTag1: "MOBA", kategoriTag2: "Aksiyon Oyunu")
        let k5 = Kategoriler(kategoriId: 4, kategoriResimAd: "TeamFightTactics", kategoriAd: "Teamfight Tactics", kategoriIzleyiciSayi: "19,1bin", kategoriTag1: "Strateji Oyunu", kategoriTag2: "Kağıt ve Masa Oyunu")
        let k6 = Kategoriler(kategoriId: 8, kategoriResimAd: "WorldOfWarcraft", kategoriAd: "World of Warcraft", kategoriIzleyiciSayi: "32,2bin", kategoriTag1: "MOBA", kategoriTag2: "Rol Yapma Oyunu")
        let k7 = Kategoriler(kategoriId: 6, kategoriResimAd: "ApexLegends", kategoriAd: "Apex Legends", kategoriIzleyiciSayi: "28bin", kategoriTag1: "Nişancı Oyunu", kategoriTag2: "Birinci Şahıs Nişancı")
        let k8 = Kategoriler(kategoriId: 7, kategoriResimAd: "LostArk", kategoriAd: "Lost Ark", kategoriIzleyiciSayi: "7,1bin", kategoriTag1: "MOBA", kategoriTag2: "Rol Yapma Oyunu")
        let k9 = Kategoriler(kategoriId: 9, kategoriResimAd: "PUBG", kategoriAd: "PUBG: BATTLEGROUNDS", kategoriIzleyiciSayi: "4,3bin", kategoriTag1: "Nişancı Oyunu", kategoriTag2: "Birinci Şahıs Nişancı")
        
        kategorilerListe.append(k1)
        kategorilerListe.append(k2)
        kategorilerListe.append(k3)
        kategorilerListe.append(k4)
        kategorilerListe.append(k5)
        kategorilerListe.append(k6)
        kategorilerListe.append(k7)
        kategorilerListe.append(k8)
        kategorilerListe.append(k9)
        
        kategorilerTableView.delegate = self
        kategorilerTableView.dataSource = self
        
        kategorilerTableView.separatorColor = UIColor.clear
    }
}

extension GozAtVC : UITableViewDelegate, UITableViewDataSource  {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kategorilerListe.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let kategori = kategorilerListe[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "kategoriHucre") as! KategoriTableViewCell
        
        cell.kategoriResimImageView.image = UIImage(named: kategori.kategoriResimAd!)
        cell.kategoriAdLabel.text = kategori.kategoriAd
        cell.kategoriIzleyiciLabel.text = "\(kategori.kategoriIzleyiciSayi!) izleyici"
        cell.kategoriTag1.text = "\(kategori.kategoriTag1!)"
        cell.kategoriTag2.text = "\(kategori.kategoriTag2!)"
        
        return cell
    }
    
}
