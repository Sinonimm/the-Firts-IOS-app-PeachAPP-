//
//  ViewController.swift
//  Peach 2.0
//
//  Created by SHCH on 05.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var btmNameChange: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        btmNameChange.layer.cornerRadius = 17.5
    }

    @IBAction func btnChageNamePress(_ sender: UIButton) {
        lblTitle.text = "BARABARA"
    }

    @IBAction func btnGoNext(_ sender: UIButton) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
}

