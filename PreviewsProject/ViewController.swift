//
//  ViewController.swift
//  PreviewsProject
//
//  Created by Vasichko Anna on 13.10.2022.
//

import SwiftUI

class ViewController: UIViewController {
    
    let helloLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello, World!"
        label.textColor = .white
        label.font = .systemFont(ofSize: 30, weight: .semibold)
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBlue
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        view.addSubview(helloLabel)
        helloLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            helloLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            helloLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }


}

struct ViewControllerProvider: PreviewProvider {
    static var previews: some View {
        ViewController().showPreview()
    }
}
