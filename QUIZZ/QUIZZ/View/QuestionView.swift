//
//  QuestionView.swift
//  QUIZZ
//
//  Created by Mathieu Janneau on 13/11/2017.
//  Copyright © 2017 Mathieu Janneau. All rights reserved.
//

import UIKit

class QuestionView: UIView {

  @IBOutlet private var label:UILabel!
  @IBOutlet private var icon:UIImageView!
  enum Style {
    case correct, incorrect, standard
  }
  
  
  var title = "" {
    didSet {
      label.text = title
    }
  }
  var style:Style = .standard {
    didSet{
      setStyle(style)
    }
  }
  
  private func setStyle(_ style:Style) {
    switch style {
    case .correct:
      backgroundColor = UIColor(red: 200/255.0, green: 236/255.0, blue: 160/255.0, alpha: 1)
      icon.image = #imageLiteral(resourceName: "Icon Correct")
      icon.isHidden = false
    case .incorrect:
      backgroundColor = #colorLiteral(red: 0.9528643489, green: 0.5298117995, blue: 0.5795843601, alpha: 1)
      icon.image = #imageLiteral(resourceName: "Icon Error")
      icon.isHidden = false
    case.standard:
      backgroundColor = #colorLiteral(red: 0.7444207668, green: 0.7644611001, blue: 0.7852322459, alpha: 1)
      icon.isHidden = true
    }
    
  }
}
