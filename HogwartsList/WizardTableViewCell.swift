//
//  WizardTableViewCell.swift
//  HogwartsList
//
//  Created by Kamila Sultanova on 08.08.2023.
//

import UIKit
import SDWebImage

class WizardTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var patronusLabel: UILabel!
    @IBOutlet weak var typeOfPatronusLabel: UILabel!
    
    @IBOutlet weak var imageOfWizard: UIImageView!
    @IBOutlet weak var pictureOfHouse: UIImageView!
    @IBOutlet weak var nameOfHouse: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setData(wizard: Hogwarts){
        nameLabel.text = wizard.name
        typeOfPatronusLabel.text = wizard.patronus
        nameOfHouse.text = wizard.house
        patronusLabel.text = "Patronus:"
        pictureOfHouse.sd_setImage(with: URL(string: wizard.houseImage), completed: nil)
        imageOfWizard.sd_setImage(with: URL(string: wizard.image), completed: nil)
    }

}
