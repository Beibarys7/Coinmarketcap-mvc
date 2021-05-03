//
//  QuoteDetailViewController.swift
//  Quote-mvc
//
//  Created by Бейбарыс Шагай on 10/23/20.
//

import UIKit

class QuoteDetailViewController: UIViewController {

//    @IBOutlet weak var iconImageView: UIImageView!
//    @IBOutlet weak var nameLabel: UILabel!
//    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var highLabel: UILabel!
    @IBOutlet weak var averageLabel: UILabel!
    @IBOutlet weak var closeLabel: UILabel!
    @IBOutlet weak var lowLabel: UILabel!
    @IBOutlet weak var changeLabel: UILabel!
    @IBOutlet weak var marketLabel: UILabel!
    @IBOutlet weak var openLabel: UILabel!
    
    @IBOutlet weak var circulatingLabel: UILabel!
    @IBOutlet weak var volumeLabel: UILabel!
    
    @IBOutlet weak var maxSupplyLabel: UILabel!
    @IBOutlet weak var rankLabel: UILabel!
    
    
    var quote: Quote?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = quote?.name
        if let quote = quote {
            self.title = quote.name
//            nameLabel.text = quote.name
//            priceLabel.text = String(format: "%.4f", quote.price)
//
//            iconImageView.image = UIImage(named: quote.imageName)
            marketLabel.text = "\(quote.marketCap.description) $ Bn"
            circulatingLabel.text = "\(quote.circulatingSupply.description) M BTC"
            rankLabel.text = quote.rank.description
            highLabel.text = "\(quote.high.description) $"
            averageLabel.text = "\(quote.average.description) $"
            closeLabel.text = "\(quote.close.description) $"
            lowLabel.text = "\(quote.low.description) $"
            changeLabel.text = "\(quote.change.description) $"
            volumeLabel.text = "\(quote.volume.description) $ Bn"
            maxSupplyLabel.text = "\(quote.volume.description) M BTC"
            openLabel.text = "\(quote.open.description) $"
            
        }
    }
}
