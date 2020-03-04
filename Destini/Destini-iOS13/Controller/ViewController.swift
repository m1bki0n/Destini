//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Update the label and button labels every time when the user tapped on a button:
        updateUI()
        
        //Applying shadow for the label:
        storyLabel.layer.shadowColor = UIColor.black.cgColor
        storyLabel.layer.shadowRadius = 5
        storyLabel.layer.shadowOpacity = 10
        storyLabel.layer.shadowOffset = CGSize(width: 1, height: 1)

        //Background color and corner radius for the first button:
        choice1Button.backgroundColor = .systemPink
        choice1Button.layer.cornerRadius = 12
        
        //Background color and corner radius for the second button:
        choice2Button.backgroundColor = .systemOrange
        choice2Button.layer.cornerRadius = 12
        
    }

    @IBAction func chosenButtonTapped(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        storyBrain.nextStory(userAnswer)
        
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.story[storyBrain.numOfStory].title
        
        choice1Button.setTitle(storyBrain.story[storyBrain.numOfStory].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.story[storyBrain.numOfStory].choice2, for: .normal)
        
    }

}

