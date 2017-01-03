//
//  ViewController.swift
//  pass data
//
//  Created by Parth Changela on 01/01/17.
//  Copyright © 2017 Parth Changela. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtEnterName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnPassData(_ sender: Any) {

        let MainStory:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let desVC = MainStory.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController

        desVC.getName = txtEnterName.text!
        desVC.getImage = UIImage(named: "1")!
        self.navigationController?.pushViewController(desVC, animated: true)
        
    }

}

