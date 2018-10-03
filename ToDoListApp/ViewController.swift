//
//  ViewController.swift
//  ToDoListApp
//
//  Created by Mac on 03/10/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
var itemArray = ["To buy Book","Buy Notebook","Go To market"]
    @IBOutlet weak var toDoListTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return  itemArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier:"cell" , for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        
       
        if (cell?.accessoryType == UITableViewCellAccessoryType.none)
        {
            cell?.accessoryType = .checkmark
        }
        else{
            cell?.accessoryType = .none
        }
//        let selectedcell = cell?.textLabel?.text
//        print("You selected : \(selectedcell!)")
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        
        
        
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

