//
//  ViewController.swift
//  bukuSaya
//
//  Created by Aisyah Shadrina on 04/07/19.
//  Copyright © 2019 Aisyah Shadrina. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath) as? CategoryTableViewCell else { return UITableViewCell() }
        
        cell.categoryLabel.text = "Kids"
        cell.bookTitleLabel.text = "The Sleeping Beauty"
        cell.bookAuthorLabel.text = "Lalala"
        cell.bookCoverImage.backgroundColor = .red
   
        return cell
    }
    

    @IBOutlet weak var bookTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
   
        bookTableView.delegate = self
        bookTableView.dataSource = self
        bookTableView.rowHeight = 313
        
    }
}

