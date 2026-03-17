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
                    style: .init(
                        color: .init(
                            bgScreenHighlight: Color(hex: "511D27"), bgHeader: Color(hex: "141011"),
                            textPrimary: .white,
                            textSecondary: Color(hex: "909090"),
                            bgScreen: Color(hex: "141011"),
                            bgScreenGradient: Color(hex: "241C1E"),
                            branding: Color(hex: "F03457"),
                            brandingSecondary: Color(hex: "FF577B")
                        ),
                        shapes: ShapeConfig(
                            cardStroke: AnyShapeStyle(
                                LinearGradient(
                                    colors: [Color(hex: "F03457"), .clear],
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                        )
                    ),
                    userInfo: .init(
                        id: "123",
                        yob: 1998,
                        name: "Marc",
                        gender: .male,
                        language: .en
                    )
                )
            ), animated: true
        )
    }
}

