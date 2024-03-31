//
//  ViewController.swift
//  QuizApp
//
//  Created by user238852 on 3/20/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        titleLabel.text = "Quiz"
    }

    
    @IBAction func buildQuestionBankTapped(_ sender: UIButton) {
       // performSegue(withIdentifier: "toQuestionBank", sender: self)
    }
    
    @IBAction func startQuizTapped(_ sender: Any) {
        if QuestionBank.shared.questions.isEmpty {
                   showAlert(message: "No questions in the question bank.")
               } else {
                 //  performSegue(withIdentifier: "toQuiz", sender: self)
               }
        
    }
    
    func showAlert(message: String) {
            let alertController = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alertController, animated: true, completion: nil)
        }
    }
    


