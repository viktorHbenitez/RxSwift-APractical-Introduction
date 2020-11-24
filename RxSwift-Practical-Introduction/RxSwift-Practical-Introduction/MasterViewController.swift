//
//  MasterViewController.swift
//  RxSwift-Practical-Introduction
//
//  Created by Victor Hugo Benitez Bosques on 23/11/20.
//

import UIKit

class MasterViewController: UIViewController {
  
  @IBOutlet weak var greetingsLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  
  @IBAction func selectCharacter(_ sender: Any) {
    
    if let detailVC = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController{
      detailVC.delegate = self
      navigationController?.pushViewController(detailVC,
                                               animated: true)

    }
  }
  
}

extension MasterViewController: CharacterDelegate{
  func didSelectCharacter(_ name: String) {
    self.greetingsLabel.text = "Hello \(name)"
  }
}
