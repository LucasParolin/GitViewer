//
//  BaseView.swift
//  GithubViewer
//
//  Created by Lucas Parolin on 01/02/23.
//

import UIKit

class BaseView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addsubViews()
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addsubViews(){
        
    }
    
    func addConstraints(){
        
    }
}
