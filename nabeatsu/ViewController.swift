//
//  ViewController.swift
//  nabeatsu
//
//  Created by Yuto on 2020/04/09.
//  Copyright © 2020 Yuto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var count = 0
    var aho = false
    var norm = false
    
    let norm1 = UIImage(named: "norm1")!
    let norm2 = UIImage(named: "norm2")!
    let norm3 = UIImage(named: "norm3")!
    let norm4 = UIImage(named: "norm4")!
    let norm5 = UIImage(named: "norm5")!
    let norm6 = UIImage(named: "norm6")!
    let norm7 = UIImage(named: "norm7")!
    let norm8 = UIImage(named: "norm8")!
    let aho1 = UIImage(named: "aho1")!
    let aho2 = UIImage(named: "aho2")!
    
    var normArray = [UIImage]()
    var ahoArray = [UIImage]()
    
    
    @IBOutlet weak var countUp: UILabel!
    
    @IBOutlet weak var Nabe: UIImageView!
    
    @IBAction func countButton(_ sender: Any) {
        
        count += 1
        countUp.text = "count...\(count)"
        
        //normArray = [norm1, norm2, norm3, norm4, norm5, norm6, norm7, norm8]
        //ahoArray = [aho1, aho2]
        
        //let normRandom = Int(arc4random_uniform(8))
        //let ahoRandom = Int(arc4random_uniform(2))
        
        if (count % 3 == 0)||(count % 10 == 3)||(count / 10 == 3){
            aho = true
        } else {
            aho = false
        }
        
        if aho == true {
            Nabe.image = [aho1, aho2].randomElement()
        } else {
            Nabe.image = [norm1, norm2, norm3, norm4, norm5, norm6, norm7, norm8].randomElement()
        }
        
        if count >= 100 {
            count = 0
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

