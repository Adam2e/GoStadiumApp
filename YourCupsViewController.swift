//
//  YourCupsViewController.swift
//  NewSideProject
//
//  Created by  on 11/27/19.
//  Copyright © 2019 2EApps. All rights reserved.
//

import UIKit

class YourCupsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var myTableView: UITableView!
    
    var list: [Assignment] = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
        
    }
    override func viewWillAppear(_ animated: Bool)
    {
        loadListFromUserDefaults()
    }
    
    func loadListFromUserDefaults()
    {
        let defaults = UserDefaults.standard
        if let savedList = defaults.object(forKey: "SavedAssignment")
            as? Data{
            let decoder = JSONDecoder()
            if let loadedList = try? decoder.decode([Assignment].self,from: savedList)
            {
                list = loadedList
                myTableView.reloadData()
            }
        }
    }
    func saveListToUserDefaults()
    {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(list)
        {
            UserDefaults.standard.set(encoded, forKey: "SavedAssignment")
        }
    }
    
    
    
    @IBAction func addButtonTapped(_ sender: Any)
    {
        let alert = UIAlertController(title: "Add Cup", message: "Enter Data Below", preferredStyle: .alert)
        alert.addTextField(configurationHandler:
            {
            textField in
            textField.placeholder = "Enter Cup Here"
        })
        alert.addTextField(configurationHandler:
            {
            textField in
            textField.placeholder = "Enter Cup Date"
        })
        
        let addButton = UIAlertAction(title: "Add", style: .default, handler:
        {
            action in
            //Grab data from textfield
            let name = alert.textFields! [0].text!
            let dueDate = alert.textFields! [1].text!
            //Create new assignment
            let assignment = Assignment(theName: name, theDueDate: dueDate)
            //Add to list
            self.list.append(assignment)
            //Reload table view
            self.myTableView.reloadData()
            
            //save user defaults
            self.saveListToUserDefaults()
        })
        alert.addAction(addButton)

        let cancelButton = UIAlertAction(title: "Cancel", style: .destructive, handler:
        {
            action in
            
        })
        alert.addAction(cancelButton)
        
        present(alert, animated: true, completion: nil)
        
        }
    
        func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
                  if editingStyle == .delete
                  {
                      list.remove(at: indexPath.row)
                      myTableView.reloadData()
                      saveListToUserDefaults()
                  }
              }
             
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        let current = list[indexPath.row]
        cell.textLabel?.text = current.name
        cell.detailTextLabel?.text = current.dueDate
        if current.isCompleted == true
        {
            cell.accessoryType = .checkmark
        }
        else
        {
            cell.accessoryType = .none
        }
        return cell
    }
   func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
                    let picked = list[indexPath.row]
                    picked.isCompleted = !picked.isCompleted
                    myTableView.reloadData()
                    saveListToUserDefaults()
                }
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
   
    
    @IBAction func editButtonTapped(_ sender: Any)
    {
        myTableView.isEditing = !myTableView.isEditing
    }
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let temp = list[sourceIndexPath.row]
        list[sourceIndexPath.row] = list[destinationIndexPath.row]
        list[destinationIndexPath.row] = temp
        saveListToUserDefaults()
        myTableView.reloadData()
    }
    
    
    
    
}


