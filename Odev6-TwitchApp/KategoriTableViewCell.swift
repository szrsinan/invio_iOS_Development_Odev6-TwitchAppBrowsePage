//
//  KategoriTableViewCell.swift
//  Odev6-TwitchApp
//
//  Created by Sinan Sezer on 12.10.2022.
//

import UIKit

class KategoriTableViewCell: UITableViewCell {

    @IBOutlet weak var hucreArkaplan: UIView!
    @IBOutlet weak var kategoriResimImageView: UIImageView!
    @IBOutlet weak var kategoriAdLabel: UILabel!
    @IBOutlet weak var kategoriIzleyiciLabel: UILabel!
    @IBOutlet weak var kategoriTag1: UILabel!
    @IBOutlet weak var kategoriTag2: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
}
