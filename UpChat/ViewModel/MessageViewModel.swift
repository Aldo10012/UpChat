//
//  MessageViewModel.swift
//  UpChat
//
//  Created by Alberto Dominguez on 10/20/21.
//

import UIKit

struct MessageViewModel {
    
    private let message: Message
    
    /// sets the message background color based on if is current user
    var messageBackgroundColor: UIColor {
        return message.isFromCurrentUser ? #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)  : .systemPurple
    }
    
    /// sets the message text color based on if is current user
    var messageTextColor: UIColor {
        return message.isFromCurrentUser ? .black : .white
    }
    
    /// set message to right if from current user
    var rightAnchorIsActive: Bool {
        return message.isFromCurrentUser
    }
    
    /// set message to left if NOT from current user
    var leftAnchorIsActive: Bool {
        return !message.isFromCurrentUser
    }
    
    /// if message is from current user, don't show profile image
    var shouldHideProfileImage: Bool {
        return message.isFromCurrentUser
    }
    
    
    init(message: Message) {
        self.message = message
    }
    
}
