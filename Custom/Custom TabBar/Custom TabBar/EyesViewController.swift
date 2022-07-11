//
//  EyesViewController.swift
//  Custom TabBar
//
//  Created by Roman on 01.07.2022.
//

import UIKit

class EyesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        addGradient(topColor: #colorLiteral(red: 0.7941879661, green: 0.3882216194, blue: 1, alpha: 1), bottomColor: #colorLiteral(red: 1, green: 0.6288804822, blue: 0.7329095074, alpha: 1))
       
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
