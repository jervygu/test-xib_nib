//
//  ViewController.swift
//  xib_nib
//
//  Created by Jervy Umandap on 7/2/21.
//

import UIKit

struct Message {
    let name: String
    let text: String
    let userImage: String
}

class ViewController: UIViewController, UITableViewDataSource {
    
    
    private let tableview: UITableView = {
        let table = UITableView()
        table.register(CustomTableViewCell.self, forCellReuseIdentifier: "CustomTableViewCell")
        return table
    }()

    var data = [Message]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .systemBackground
        view.addSubview(tableview)
        tableview.dataSource = self
        
        configData()
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableview.frame = CGRect(
            x: 10,
            y: 10,
            width: view.frame.size.width,
            height: view.frame.size.height)
    }
    
    func configData() {
//        data.append("Jervy Umandap")
        data.append(Message(name: "Jervy Umandap", text: "Hey how are you men", userImage: "person.circle.fill"))
        data.append(Message(name: "Wanda", text: "Im good how about you?", userImage: "person"))
        data.append(Message(name: "Wanda", text: "Im good how about you?", userImage: "person.circle.fill"))
        data.append(Message(name: "Wanda", text: "Im good how about you?", userImage: "person"))
        data.append(Message(name: "Wanda", text: "Im good how about you?", userImage: "person.circle.fill"))
        data.append(Message(name: "Wanda", text: "Im good how about you?", userImage: "person"))
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = data[indexPath.row]
        
        guard let cell = tableview.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as? CustomTableViewCell else {
            return UITableViewCell()
        }
        
//        cell.configure(image: model.userImage, name: model.name, message: model.text)
        
        cell.userImage.image = UIImage(systemName: model.userImage)
        cell.nameLabel.text = model.name
        cell.messageLabel.text = model.text
//        cell.textLabel?.text = model.name
        
        
        return cell
    }

}

