//
//  MasterViewController.swift
//  RxSwift-Practical-Introduction
//
//  Created by Victor Hugo Benitez Bosques on 23/11/20.
//

import UIKit
import RxSwift
class MasterViewController: UIViewController {
  
  @IBOutlet weak var greetingsLabel: UILabel!
  
  // Manage the memory ARC or cancel a subscription you can do that by calling dispose on it
  let disposeBag = DisposeBag()
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  @IBAction func selectCharacter(_ sender: Any) {
    if let detailVC = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController{
      
      /*
       Everytime selectedCharacter changes I will be notifying and I can make some updates
       */
      detailVC.selectedCharacter
        .subscribe(onNext: { [weak self] strResult in
          self?.greetingsLabel.text = strResult
        })  // // Adding the Subscription to a Dispose Bag
        .disposed(by: disposeBag)
      
      
      navigationController?.pushViewController(detailVC,
                                               animated: true)
    }
  }
  
}
