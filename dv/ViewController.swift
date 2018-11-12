//
//  ViewController.swift
//  dv
//
//  Created by Apple on 12/11/18.
//  Copyright © 2018 RoxAI. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var tsbl1: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tsbl1.delegate = self
        tsbl1.dataSource = self
   }
    
    let arr = ["a","b","c","d","e","f","g","h"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell1", for: indexPath) as? TableViewCell1
        cell?.textLabel?.text = arr[indexPath.row]
        return cell!
    }

}
