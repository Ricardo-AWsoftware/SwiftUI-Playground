//
//  ViewController.swift
//  Playground test
//
//  Created by Ricardo on 5/25/22.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    
    fileprivate let contentViewInHC = UIHostingController(rootView: SurveyViewSwiftUI())
    
    override func viewDidLoad() {
        super.viewDidLoad()
       setupHC()
       setupConstraints()
        
        
    }
    
    fileprivate func setupConstraints(){
        contentViewInHC.view.translatesAutoresizingMaskIntoConstraints = false
        contentViewInHC.view.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        contentViewInHC.view.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        contentViewInHC.view.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        contentViewInHC.view.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    }
    
    fileprivate func setupHC(){
        addChild(contentViewInHC)
        view.addSubview(contentViewInHC.view)
        contentViewInHC.didMove(toParent: self)
    }


}

