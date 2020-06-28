//
//  ViewController.swift
//  CustomCell
//
//  Created by Ali Al sharefi on 13/03/2020.
//  Copyright © 2020 Ali Al sharefi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var stories = [Story]()

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        stories.append(Story(txt: "hi there", img: "car0"))
        stories.append(Story(txt: "hello", img: "car1"))
        stories.append(Story(txt: "third test", img: "car2"))
        tableView.dataSource = self //assign this class to handle data for the tableView
        tableView.delegate = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if stories[indexPath.row].hasImage(){
            if let cell = tableView.dequeueReusableCell(withIdentifier: "cell2") as? TableViewCellTextAndImage{
            cell.myLabel.text = stories[indexPath.row].text
                cell.myImageView.image = UIImage(named: stories[indexPath.row].image)
                return cell
            }
            
        }else{
            if let cell = tableView.dequeueReusableCell(withIdentifier: "cell1") as? TableViewCellTextOnly{
                cell.myLabel.text = stories[indexPath.row].text
                return cell
            }
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return stories[indexPath.row].hasImage() ? 210 : 80 //ternary operator. if statement on one line
        //if the part before the question mark is true, then return the number just after the questionmark
        //else return the number after the colon
    }


}

