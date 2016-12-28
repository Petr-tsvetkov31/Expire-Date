//
//  FoodItemDetailsViewController.swift
//  ExpireDate
//
//  Created by Петя Цветков  on 29/11/2016.
//  Copyright © 2016 Петя Цветков . All rights reserved.
//

import UIKit

class FoodItemDetailsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    
    static func storyboardInstanse() -> FoodItemDetailsViewController? {
        let storyboard = UIStoryboard(name: StoryboardsNames.foodStoryboard, bundle: nil)
        
        return storyboard.instantiateInitialViewController() as? FoodItemDetailsViewController
    }
}
