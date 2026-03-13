//
//  ViewController.swift
//  Example-UIKit
//
//  Created by Macbook on 10/3/26.
//

import UIKit
import KinisBalanceAIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapSDK(_ sender: Any) {
        self.navigationController?.pushViewController(
            KinisBalanceViewController(
                config: .init(
                    apiKey: "yyy",
                    style: StyleConfig(
                        color: ColorConfig(),
                        cardStrokeStyle: AnyShapeStyle(.red)
                    ),
                    userInfo: .init(
                        id: "123",
                        yob: 1998,
                        name: "Marc",
                        gender: .male,
                        language: .vi
                    )
                )
            ), animated: true
        )
    }
}

