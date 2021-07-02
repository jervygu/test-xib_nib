//
//  SecondViewController.swift
//  xib_nib
//
//  Created by Jervy Umandap on 7/2/21.
//

import UIKit

class SecondViewController: UIViewController {
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.numberOfLines = 0
        label.layer.masksToBounds = true
        return label
    }()
    
    private let messageLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 18, weight: .light)
        label.numberOfLines = 0
        label.layer.masksToBounds = true
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(nameLabel)
        view.addSubview(messageLabel)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        nameLabel.frame = CGRect(x: 10, y: 100, width: view.frame.size.width-20, height: 50)
        messageLabel.frame = CGRect(x: 10, y: nameLabel.frame.origin.y + 10, width: view.frame.size.width-20, height: 50)
        
    }
    
    func config(name: String, message: String) {
        nameLabel.text = name
        messageLabel.text = message
    }

}
