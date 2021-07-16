//
//  ConversationsController.swift
//  UpChat
//
//  Created by Alberto Dominguez on 7/16/21.
//

import UIKit

class ConversationsController: UIViewController {
    
    // MARK: - Properties
    
    // MARK: - Life Cycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configueUI()
    }
    
    // MARK: - Selectors
    
    @objc func showProfile() {
        print("hi")
    }
    
    // MARK: - Helpers
    
    func configueUI() {
        view.backgroundColor = .white
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Messages"
        let image = UIImage(systemName: "person.circle.fill")
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: image, style: .plain, target: self, action: #selector(showProfile))
    }
    
}
