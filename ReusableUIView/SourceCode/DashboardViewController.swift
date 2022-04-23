//
//  DashboardViewController.swift
//  ReusableUIView
//
//  Created by Saanvi on 23/04/22.
//

import UIKit

class DashboardViewController: UIViewController {

    @IBOutlet weak var customView: CustomView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupVC()
    }
    
    private func setupVC() {
        setupCustomView()
    }
    
}

// MARK: Setup CustomView
extension DashboardViewController {
     
    private func setupCustomView() {
        updateCustomViewWithData()
        customViewCallBacks()
    }
    
    private func updateCustomViewWithData() {
        customView.updateUIViewWithData(WithTitleStr: self.identifier)
    }
    
    private func customViewCallBacks() {
        customView.backBtnClickedCallBack = {
            //Back btn logic you can implement here
            print("Back btn clicked")
        }
        
        customView.alertBtnClickedCallBack = {
            //alert btn logic you can implement here
            print("Alert btn clicked")
        }
        
        customView.sampleWithParamsCallBack = { str in
            //Sample callback with params
        }
    }
    
}
