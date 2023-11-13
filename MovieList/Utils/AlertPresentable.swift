//
//  AlertPresentable.swift
//  MovieList
//
//  Created by Enes Sancar on 13.11.2023.
//

import UIKit

protocol AlertPresentable: UIViewController {
    func presentAlert(title: String?,
                      message: String?,
                      style: UIAlertController.Style?,
                      actions: [UIAlertAction]
    )
}

extension AlertPresentable {
    func presentAlert(title: String? = "Error!",
                      message: String? = "Something went wrong.",
                      style: UIAlertController.Style? = .alert,
                      actions: [UIAlertAction]) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        for action in actions {
            alert.addAction(action)
        }
        if actions.isEmpty {
            alert.addAction(UIAlertAction(title: "OK", style: .cancel))
        }
        present(alert, animated: true)
    }
}
