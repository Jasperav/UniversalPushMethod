//
//  ViewController.swift
//  UniversalPush
//
//  Created by Admin on 07/10/2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pushView: UIView!
    var animator: UIDynamicAnimator!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.animator = UIDynamicAnimator(referenceView: self.view)
       let dynamic = UIDynamicItemBehavior()
        dynamic.resistance = 1
        self.animator.addBehavior(dynamic)
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
      let push = UIPushBehavior(items: [pushView], mode: .instantaneous)
        push.magnitude = 0.15
        
        animator.addBehavior(push)
    }
}

