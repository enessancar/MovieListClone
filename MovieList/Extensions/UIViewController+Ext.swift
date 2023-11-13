//
//  UIViewController+Ext.swift
//  MovieList
//
//  Created by Enes Sancar on 13.11.2023.
//

import UIKit

extension UIKit.UIViewController {
    func configureNavigationBar(barTitle: String,
                                prefersLargeTitle: Bool = true,
                                barBackgroundColorString: String,
                                barTitleColorSring: String)
    {
        navigationController?.navigationBar.prefersLargeTitles = prefersLargeTitle
        title = barTitle
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithTransparentBackground()
        appearance.backgroundColor = UIColor(named: barBackgroundColorString)
        appearance.titleTextAttributes = [
            .foregroundColor: UIColor(named: barTitleColorSring)!
        ]
        navigationItem.standardAppearance = appearance
        navigationItem.scrollEdgeAppearance = appearance
    }
}
