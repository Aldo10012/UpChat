//
//  NewMessageController.swift
//  UpChat
//
//  Created by Alberto Dominguez on 10/6/21.
//

import UIKit

class NewMessageController: UITableViewController {
    
    //MARK: - Properties
    
    
    
    //MARK: - Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    
    //MARK: - Helpers
    func configureUI() {
        view.backgroundColor = .systemPink
    }
}
