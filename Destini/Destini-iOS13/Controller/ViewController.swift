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
        let story0 = storyBrain.getStory()
        updateUI(story0)
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        if storyBrain.storyNumber < storyBrain.stories.count {
            updateUI(storyBrain.getStory())
        }
    }

    func updateUI(_ story: Story) {
        guard storyBrain.storyNumber < storyBrain.stories.count else { return }
        storyLabel.text = story.title
        choice1Button.setTitle(story.choice1, for: .normal)
        choice2Button.setTitle(story.choice2, for: .normal)
    }

}

