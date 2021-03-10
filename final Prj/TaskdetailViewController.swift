//
//  TaskdetailViewController.swift
//  segueApp
//
//  Created by Manjinder Aulakh on 2019-11-04.
//  Copyright © 2019 Manjinder kaur. All rights reserved.
//

import UIKit


//class TaskdetailViewController: UIViewController {
//    //for recording
////   @IBOutlet var recordButton: UIButton!
    
  class TaskdetailViewController: UIViewController {
      
      
  var textString: String?
      weak var tasktable : notesTableViewController?
      
     
      @IBOutlet weak var taskView: UITextView!
      
      
      override func viewDidLoad() {
          super.viewDidLoad()

          // Do any additional setup after loading the view.
          
         taskView.text = textString ?? ""
      }
      
  //    override func viewWillDisappear(_ animated: Bool) {
  //        tasktable?.updateText(text: taskView.text)
  //    }
      override func viewWillDisappear(_ animated: Bool) {
          tasktable?.updateText(text: taskView.text)
      }
   
      /*
      // MARK: - Navigation

      // In a storyboard-based application, you will often want to do a little preparation before navigation*/
  //    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
          // Pass the selected object to the new view controller.
          
         
          
          
      }
      


