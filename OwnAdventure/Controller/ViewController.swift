//
//  ViewController.swift
//  OwnAdventure
//
//  Created by Varun Kumar on 11/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var storylabel: UILabel!
    
    @IBOutlet var choose1: UIButton!
    @IBOutlet var choose2: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        upDateUi()
        
    }

    
    @IBAction func chooseButton(_ sender: UIButton) {
        
        storyBrain.nextStory(userChoice: sender.currentTitle ?? "No Input")
        
        Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(upDateUi), userInfo: nil, repeats: false)
        
    }
    
    @objc func upDateUi() {
        
        storylabel.text = storyBrain.getTitle()
        choose1.setTitle(storyBrain.getchoice1(), for: .normal)
        choose2.setTitle(storyBrain.getChoice2(), for: .normal)
        
        storyBrain.restart()
    }
    
}

