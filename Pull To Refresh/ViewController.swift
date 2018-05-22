//
//  ViewController.swift
//  Pull To Refresh
//
//  Created by nguyễn hữu đạt on 5/14/18.
//  Copyright © 2018 nguyễn hữu đạt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var listFruit = ["apple", "tomato"]
    struct Hotels {
        let name: String
        let place: String
    }
    @IBOutlet weak var datasource : UITableViewDataSource?
    @IBOutlet weak var delegate : UITableViewDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection
        section: Int) -> Int {
        
        return listFruit.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath:
        IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        
        cell.textLabel?.text = String(listFruit[(indexPath as
            NSIndexPath).row])
        cell.detailTextLabel?.text = listFruit[(indexPath as
            NSIndexPath).row]
        
        return cell
    }
  

}

