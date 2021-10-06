//
//  UserCell.swift
//  UpChat
//
//  Created by Alberto Dominguez on 10/6/21.
//

import UIKit

class UserCell: UITableViewCell {
    
    // MARK: - Preoperties
    let profileImageView: UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = .systemPurple
        iv.contentMode = .scaleToFill
        iv.clipsToBounds = true
        return iv
    }()
    
    let usernameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.text = "Spider Man"
        return label
    }()
    
    let fullnameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .lightGray
        label.text = "Peter Parker"
        return label
    }()
    
    private lazy var stack = UIStackView(arrangedSubviews: [usernameLabel, fullnameLabel])
    
    
    // MARK: - Life Cycles
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        configureUI()
        
    }
    
    // MARK: - Helpers
    func configureUI() {
        addSubview(profileImageView)
        profileImageView.centerY(inView: self, leftAnchor: leftAnchor, paddingLeft: 12)
        profileImageView.setDimensions(height: 56, width: 56)
        profileImageView.layer.cornerRadius = 56/2
        
        stack.axis = .vertical
        stack.spacing = 2
        addSubview(stack)
        stack.centerY(inView: self, leftAnchor: profileImageView.rightAnchor, paddingLeft: 12)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
