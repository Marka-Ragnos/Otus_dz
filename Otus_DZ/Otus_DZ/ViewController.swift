//
//  ViewController.swift
//  Otus_DZ
//
//  Created by Alexander Sukhodolov on 21.10.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet private weak var avatarImageView: UIImageView!
    @IBOutlet private weak var cameraButton: UIButton!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var fullNameLabel: UILabel!
    @IBOutlet private weak var postLabel: UILabel!
    @IBOutlet private weak var adressLabel: UILabel!
    @IBOutlet weak var copyClipboard: UIButton!
    
    var isFullNameDisplayed = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        avatarImageView.image = UIImage(named: "image")
        avatarImageView.layer.cornerRadius = 40
        avatarImageView.clipsToBounds = true
        avatarImageView.layer.borderColor = UIColor.black.cgColor
        avatarImageView.layer.borderWidth = 3.0
        
        cameraButton.layer.cornerRadius = 40
        cameraButton.setImage(UIImage(systemName: "camera.fill"), for: .normal)
        cameraButton.tintColor = .white
        
        postLabel.text = "Должность 👨🏻‍💻: iOS-разработчик"
        
        adressLabel.text = "Адрес: г. Санкт-Петербург"
    }
    
    @IBAction private func didTapCameraButton(_ sender: UIButton) {
        if isFullNameDisplayed {
            fullNameLabel.text = "Суходолов"
        } else {
            fullNameLabel.text = ""
        }
        isFullNameDisplayed.toggle()
    }
    
    @IBAction func copyAddressToClipboard(_ sender: UIButton) {
        UIPasteboard.general.string = adressLabel.text
    }
    
}

