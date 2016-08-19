//
//  ViewController.swift
//  LocalizationTest2
//
//  Created by Brad Woodard on 8/19/16.
//  Copyright © 2016 Brad Woodard. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelSubtitle: UILabel!

    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = NSLocalizedString("nav_bar_title", comment: "Navigation Bar Title")
        labelTitle.text = NSLocalizedString("label_title", comment: "Label Title")
        labelSubtitle.text = NSLocalizedString("label_subtitle", comment: "Label Subtitle")
    }

    //MARK: - Cleanup
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}