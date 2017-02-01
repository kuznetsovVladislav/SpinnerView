//
//  ViewController.swift
//  Example Project
//
//  Created by Владислав  on 01.02.17.
//  Copyright © 2017 Vladislav. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        KVSpinnerView.settings.backgroundRectColor = .lightGray
        KVSpinnerView.settings.tintColor = .black
        KVSpinnerView.settings.statusTextColor = .black
        KVSpinnerView.settings.animationStyle = .infinite
        KVSpinnerView.show(saying: "Downloading with long message")
        
    }

    @IBAction func showStandartSpinner(_ sender: Any) {
        KVSpinnerView.settings.animationStyle = .standart
        KVSpinnerView.show(saying: "Standart")
    }

    @IBAction func showInfiniteSpinner(_ sender: Any) {
        KVSpinnerView.settings.animationStyle = .infinite
        KVSpinnerView.show(saying: "Infinite")
    }
    
    @IBAction func addStandartOnVIew(_ sender: Any) {
        KVSpinnerView.settings.animationStyle = .standart
        KVSpinnerView.show(on: self.view)
    }
    
    @IBAction func addInfiniteOnView(_ sender: Any) {
        KVSpinnerView.settings.animationStyle = .infinite
        KVSpinnerView.show(on: self.view, saying: "Hello")
    }
    
    @IBAction func dismissSpinner(_ sender: Any) {
        KVSpinnerView.dismiss()
    }
}

