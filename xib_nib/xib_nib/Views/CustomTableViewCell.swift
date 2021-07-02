//
//  CustomTableViewCell.swift
//  xib_nib
//
//  Created by Jervy Umandap on 7/2/21.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        userImage.layer.cornerRadius = 5.0
        
    }
    
//    func configure(image: String, name: String, message: String) {
//        userImage.image = UIImage(systemName: image)
//        nameLabel.text = name
//        messageLabel.text = message
//    }
    
//    override func prepareForReuse() {
//        super.prepareForReuse()
//        userImage.image = nil
//        nameLabel.text = nil
//        messageLabel.text = nil
//    }
    
}
