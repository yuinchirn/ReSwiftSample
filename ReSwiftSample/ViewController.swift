//
//  ViewController.swift
//  ReSwiftSample
//
//  Created by Yuta Chiba on 2016/04/02.
//  Copyright © 2016年 yuinchirn. All rights reserved.
//

import UIKit
import ReSwift

class ViewController: UIViewController, StoreSubscriber {
    

    @IBOutlet weak var counterLabel: UILabel!
    
    override func viewWillAppear(animated: Bool) {
        mainStore.subscribe(self)
    }
    
    override func viewWillDisappear(animated: Bool) {
        mainStore.unsubscribe(self)
    }
    
    func newState(state: AppState) {
        counterLabel.text = "\(state.counter)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func increase(sender: AnyObject) {
        mainStore.dispatch(
            CounterActionIncrease()
        )
    }
    @IBAction func decrease(sender: AnyObject) {
        mainStore.dispatch(
            CounterActionDecrease()
        )
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

