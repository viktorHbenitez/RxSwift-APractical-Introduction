//
//  DetailViewController.swift
//  RxSwift-Practical-Introduction
//
//  Created by Victor Hugo Benitez Bosques on 24/11/20.
//

import UIKit
import RxSwift

class DetailViewController: UIViewController {
  // 1.
  private let selectedCharacterVariable = Variable("User") // Subject: BehaviourSubject
  
  // 2. Createing an Observable Sequence that emits a String value, produce data
  var selectedCharacter: Observable<String>{
    return selectedCharacterVariable.asObservable()
  }
  
  override func viewDidLoad() {
      super.viewDidLoad()
  }

  @IBAction func characterSelected(_ sender: UIButton) {
      guard let characterName = sender.titleLabel?.text else {return}
    
    //observers are notified of the changes
    selectedCharacterVariable.value = characterName

  }
}
