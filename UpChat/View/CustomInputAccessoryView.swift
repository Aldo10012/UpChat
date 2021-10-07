//
//  CustomInputAccessoryView.swift
//  UpChat
//
//  Created by Alberto Dominguez on 10/7/21.
//

import UIKit

class CustomInputAccessoryView: UIView {
    // MARK: - Properties
    
    private lazy var messageInputTextView: UITextView = {
        let tv = UITextView()
        tv.font = UIFont.systemFont(ofSize: 16)
        tv.isScrollEnabled = false
        return tv
    }()
    
    private let sendButotn: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Send", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        button.setTitleColor(.purple, for: .normal)
        button.addTarget(self, action: #selector(handleSendMessage), for: .touchUpInside)
        return button
    }()
    
    private let placeholderLabel: UILabel = {
        let label = UILabel()
        label.text = "Enter message"
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .lightGray
        return label
    }()
    
    
    // MARK: - Life Cycles
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureUI()
        configureNotificationCenters()
    }
    
    
    // MARK: - Selectors
    
    @objc func handleSendMessage() {
        print("DEBUG: handle Send Message")
    }
    
    @objc func handleTextInputChange() {
        placeholderLabel.isHidden = !self.messageInputTextView.text.isEmpty
    }
    
    
    // MARK: - Helpers
    
    func configureUI() {
        layer.shadowOpacity = 0.25
        layer.shadowRadius = 10
        layer.shadowOffset = .init(width: 0, height: -8)
        layer.shadowColor = UIColor.lightGray.cgColor
        backgroundColor = .white
        autoresizingMask = .flexibleHeight
        
        addSubview(sendButotn)
        sendButotn.anchor(top: topAnchor, right: rightAnchor, paddingTop: 4, paddingRight: 8)
        sendButotn.setDimensions(height: 50, width: 50)
        
        addSubview(messageInputTextView)
        messageInputTextView.anchor(top: topAnchor, left: leftAnchor, bottom: safeAreaLayoutGuide.bottomAnchor, right: sendButotn.leftAnchor, paddingTop: 12, paddingLeft: 4, paddingBottom: 8, paddingRight: 8)
        
        addSubview(placeholderLabel)
        placeholderLabel.anchor(left: messageInputTextView.leftAnchor, paddingLeft: 4)
        placeholderLabel.centerY(inView: messageInputTextView)
    }
    
    func configureNotificationCenters() {
        NotificationCenter.default.addObserver(self, selector: #selector(handleTextInputChange), name: UITextView.textDidChangeNotification, object: nil)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var intrinsicContentSize: CGSize {
        return .zero
    }
    
    
}
