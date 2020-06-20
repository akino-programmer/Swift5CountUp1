//
//  ViewController.swift
//  Swift5CountUp1
//
//  Created by 野口晃 on 2020/06/20.
//  Copyright © 2020 Akira Noguchi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var countLabel: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        //ラベルの文字を0と表示したい
        countLabel.text = "0"
        
        
    }

    
    
    @IBAction func plus(_ sender: Any) {
          //カウントアップさせたい
        count = count + 1
        
        
        
        //ラベルに文字を反映（数字）
        countLabel.text = String(count)
        
        
        //色を10以上になったら黄色にしたい
        if count >= 10{
            changeTextColor()
        }
    }
    
    
    @IBAction func minus(_ sender: Any) {
           //カウントダウンさせたい
         count = count - 1
        
        
        //ラベルに文字を反映（数字）
        countLabel.text = String(count)
        
     
               
               
        //色を0以下になったら白にしたい
        if count <= 0{
                   resetColor()
               }
    }
    
    func changeTextColor(){
        
        countLabel.textColor = .yellow
        
    }
    
    
    func resetColor(){
        
        countLabel.textColor = .white
        
    }
    
    

}

