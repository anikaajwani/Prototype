//
//  DataViewController.swift
//  Prototype
//
//  Created by Anika Ajwani on 12/4/17.
//  Copyright © 2017 Anika Ajwani. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {

    @IBOutlet var answerTextField: UITextField!
    
    @IBOutlet weak var dataLabel: UILabel!
    var dataObject: PageData?


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let dataObject = dataObject{
            self.dataLabel!.text = dataObject.question
        }
    }


}

