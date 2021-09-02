//
//  WeatherCell_UI.swift
//  WoWonderiOS
//
//  Created by Abdul Moid on 18/06/2021.
//  Copyright © 2021 clines329. All rights reserved.
//

import UIKit

class WeatherCell_UI: UITableViewCell {

    @IBOutlet weak var tempImageView:UIImageView!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var weatherConditionLabel: UILabel!
    @IBOutlet weak var windLabel: UILabel!
    @IBOutlet weak var rainLabel: UILabel!
    @IBOutlet weak var humidityLAbel: UILabel!
    
    var vc:TrendingVC_UI?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupUI(){
//        tempImageView.image = UIImage(named: "weather template")
//        tempImageView.contentMode = .scaleToFill
//        tempImageView.clipsToBounds = true
        
//        locationLabel.text = "\(vc?.weatherLocation?["name"] ?? ""), \(vc?.weatherLocation?["country"] ?? "") \(vc?.weatherLocation?["localtime"] ?? "")"
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
