//
//  ViewController.swift
//  Question Practice show answer only
//
//  Created by UFO Xcode on 2019/11/18.
//  Copyright © 2019 UFO Xcode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    
    @IBOutlet weak var LabelQuestion: UILabel!
    
    @IBOutlet weak var LabelAnswer: UILabel!
    
    @IBOutlet weak var Abutton: UIButton!
    
    var questionFormat = [QuestionFormat(question: "How Old?", answer: "8"),QuestionFormat(question: "Name", answer: "Andrew"), QuestionFormat(question: "How Tall?", answer: "140 CM"), QuestionFormat(question: "How Heavy?", answer: "40 kg")]
    
    var index = 0
        
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        LabelQuestion.text = questionFormat[index].question
        
        
    }

    @IBAction func showAnswerButton(_ sender: UIButton) {
        
        LabelAnswer.text = questionFormat[index].answer
        
        Abutton.isHidden = true
    }
   
    
    
          
    @IBAction func Next(_ sender: UIButton) {
        index += 1
        if index == questionFormat.count{
            index = 0
        }
        
        LabelAnswer.text = ""
        Abutton.isHidden = false
        LabelQuestion.text = questionFormat[index].question
        
    }
    
}

