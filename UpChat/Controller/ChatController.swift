//
//  ChatController.swift
//  UpChat
//
//  Created by Alberto Dominguez on 10/7/21.
//

import UIKit

class ChatController: UICollectionViewController {
    // MARK: - Properties
    
    private let user: User
    
    
    
    // MARK: - Life Cycles
    
    init(user: User) {
        self.user = user
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("DEBUG: User in chat controller is \(user.username)")
    }
    
    
    // MARK: - Helpers
    
    func configureUI() {
        collectionView.backgroundColor = .white
    }
}
