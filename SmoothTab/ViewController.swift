//
//  ViewController.swift
//  SmoothTab
//
//  Created by Yervand Saribekyan on 3/2/18.
//  Copyright © 2018 Yervand Saribekyan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SmoothTabDelegate {

    @IBOutlet weak var smoothTabView: SmoothTabView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let items =  OurTeams.allTeams.map { SmoothTabItem(
            title: $0.rawValue,
            image: $0.image,
            selectedImage: $0.selectedImage,
            tintColor: UIColor(red: 96/255, green: 197/255, blue: 227/255, alpha: 1)
            )
        }

        var options = SmoothTabOptions()
        options.titleColor = UIColor.white
        options.titleFont = .systemFont(ofSize: 16)
        options.shadow = .default
        options.align = .left
        smoothTabView.setup(with: items, options: options, delegate: self)
    }

    func smootItemSelected(at index: Int) {
        print(index)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

enum OurTeams: String {
    case management = "MANAGEMENT TEAM"
    case mobile = "MOBILE TEAM"
    case front = "FRONT END TEAM"
    case development = "DEVELOPMENT TEAM"
    case qa = "QA TEAM"
    case bid = "BUSINESS DEVELOPMENT TEAM"
    case hr = "HUMAN RESOURCES TEAM"

    var image: UIImage {
        return #imageLiteral(resourceName: "about us_ic")
    }

    var selectedImage: UIImage {
        return #imageLiteral(resourceName: "about-us_selected_")
    }

    static let allTeams: [OurTeams] = [
        .management,
        .mobile,
        .front,
        .development,
        .qa,
        .bid,
        .hr,
        ]
}

