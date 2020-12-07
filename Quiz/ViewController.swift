//
//  ViewController.swift
//  Quiz
//
//  Created by JustinJoe on 12/5/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let questions: [String] = [
        "1 + 1 = ?",
        "2 * 2 = ?",
        "9 * 9 = ?"
    ]
    let answers: [String] = [
        "2",
        "4",
        "81"
    ]
    let defaultText: String = "???"
    var currentQuestionIndex: Int = 0
    
    // load the first question through override
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showNextQuestion(sender: AnyObject) {
        currentQuestionIndex += 1
        if (currentQuestionIndex == questions.count) {
            currentQuestionIndex = 0
        }
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = defaultText
    }
    
    @IBAction func showAnswer(sender: AnyObject) {
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
}

