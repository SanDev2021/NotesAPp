//
//  moveTofloderViewController.swift
//  manjinder_c0762203_note_P1
//
//  Created by Manjinder Aulakh on 2019-11-14.
//  Copyright © 2019 Manjinder kaur. All rights reserved.
//

import UIKit

class moveTofloderViewController: UIViewController ,UITableViewDelegate , UITableViewDataSource{
    
    
    
    var notesdelegate : notesTableViewController?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        FolderofNotes.folders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard FolderofNotes.folders.count != 0  else{
            return UITableViewCell()
        }
        
        let cell = UITableViewCell(style: .value1, reuseIdentifier: "")
        cell.textLabel?.text = FolderofNotes.folders[indexPath.row].FolderName
        cell.backgroundColor = .lightGray
        return cell
//        tableView.reloadData()
        
    }
    
    
    @IBAction func CancelBtn(_ sender: UIButton) {
        
        self.presentingViewController?.dismiss(animated: true, completion: nil)
        
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alert = UIAlertController(title: " move to \(FolderofNotes.folders[indexPath.row].FolderName)", message: "Are  you sure", preferredStyle: .alert)
                                       let cancelAction = UIAlertAction(title: "No", style: .default, handler: nil)
        let okAction = UIAlertAction(title: "Move", style: .default)
        { (action) in
        self.notesdelegate?.notestobemoved(index : indexPath.row)
         self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
        
                                           alert.addAction(okAction)
                                            alert.addAction(cancelAction)
                                           self.present(alert, animated: true, completion:  nil)
                       
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
