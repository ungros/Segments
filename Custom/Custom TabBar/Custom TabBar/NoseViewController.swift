//
//  NoseViewController.swift
//  Custom TabBar
//
//  Created by Roman on 01.07.2022.
//

import UIKit

class NoseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addGradient(topColor: #colorLiteral(red: 1, green: 0.2881356896, blue: 0.3973438852, alpha: 1), bottomColor: #colorLiteral(red: 1, green: 0.7767790158, blue: 0.7589845871, alpha: 1))

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
