//
//  ViewController.swift
//  FavouriteButtonAnimation
//
//  Created by Mansi Mahajan on 8/8/18.
//  Copyright © 2018 Mansi Mahajan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var boolVariable: Bool = true
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let vc = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        //boolVariable == true ? false: true
        if indexPath.row % 2 == 0
        {
            vc.likeButton.isSelected = true
        }
        else{
            boolVariable = false
            vc.likeButton.isSelected = false
        }
        //vc.likeButton.isSelected = true
        return vc
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

}

