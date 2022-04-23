//
//  CustomView.swift
//  ReusableUIView
//
//  Created by Saanvi on 23/04/22.
//

import UIKit

class CustomView: UIView {
    
    @IBOutlet weak var titleLbl: UILabel!
    
    var titleStr: String? {
        didSet {
            titleLbl.text = titleStr ?? ""
        }
    }
    
    var backBtnClickedCallBack:(()->())?
    var alertBtnClickedCallBack:(()->())?
    var sampleWithParamsCallBack:((_ str: String)->())?
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    func commonInit() {
        guard let view = loadViewFromNib() else { return }
        view.frame = bounds
        addSubview(view)
    }
    
    func loadViewFromNib() -> UIView? {
        let nib = UINib(nibName: self.identifier, bundle: nil)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }
    
    func updateUIViewWithData(WithTitleStr _titleStr: String) {
        titleStr = _titleStr
    }
        
    @IBAction func backBtnClicked(_ sender: Any) {
        self.backBtnClickedCallBack?()
    }
    
    @IBAction func alertBtnClicked(_ sender: Any) {
        self.alertBtnClickedCallBack?()
    }
    
}
