//
//  ViewController.swift
//  dv
//
//  Created by Apple on 12/11/18.
//  Copyright © 2018 RoxAI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    let arr = ["a","b","c","d","e","f","g","h"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell1", for: indexPath) as? TableViewCell1
        cell?.lbl1.text = arr[indexPath.row]
        return cell!
    }

}
