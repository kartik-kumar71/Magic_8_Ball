//
//  ViewController.swift
//  Magic 8 ball
//
//  Created by Kartik Kumar on 26/08/19.
//  Copyright © 2019 Kartik Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randImage: Int = 0

    @IBOutlet weak var magicBall: UIImageView!
    
    
    @IBAction func askButtonPressed(_ sender: Any) {
        updateIamge()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateIamge()
    }
    
    func updateIamge() {
        randImage = Int.random(in: 1...5)
        magicBall.image = UIImage(named: "ball\(randImage)")
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateIamge()
    }


}

