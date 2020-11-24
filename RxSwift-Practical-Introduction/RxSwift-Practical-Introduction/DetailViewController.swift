//
//  DetailViewController.swift
//  RxSwift-Practical-Introduction
//
//  Created by Victor Hugo Benitez Bosques on 24/11/20.
//

import UIKit


protocol CharacterDelegate {
  func didSelectCharacter (_ name:String)
}
class DetailViewController: UIViewController {
  
  var delegate:CharacterDelegate?
  
  override func viewDidLoad() {
      super.viewDidLoad()
  }

  @IBAction func characterSelected(_ sender: UIButton) {
      guard let characterName = sender.titleLabel?.text else {return}
      
      if let delegateObject = delegate {
          delegateObject.didSelectCharacter(characterName)
      }
      
  }
  
  
}
