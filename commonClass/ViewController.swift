//
//  ViewController.swift
//  commonClass
//
//  Created by Premmac on 11/11/17.
//  Copyright © 2017 Premmac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fantasticView = FantasticView(frame: self.view.bounds)
        self.view.addSubview(fantasticView)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


import UIKit

class FantasticView : UIView {
    let colors : [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
    var colorCounter = 0
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let scheduledColorChanged = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { (timer) in  //1
            UIView.animate(withDuration: 2.0) {  //2
                self.layer.backgroundColor = self.colors[self.colorCounter % 6].cgColor  //3
                self.colorCounter+=1  //4
            }
        }
        
        scheduledColorChanged.fire()  //5
        // The Main Stuff
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        // You don't need to implement this
    }
}
