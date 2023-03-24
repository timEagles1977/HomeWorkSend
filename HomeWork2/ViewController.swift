//
//  ViewController.swift
//  HomeWork2
//
//  Created by Tamerlan MacBook Air  on 24.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IBOutlet's
    @IBOutlet var stelseView: UIView!
    
    @IBOutlet var firstSlider: UISlider!{
        didSet{
            firstSlider.tintColor = UIColor.red
        }
    }
    @IBOutlet var secondSlider: UISlider!{
        didSet{
            secondSlider.tintColor = UIColor.green
        }
    }
    @IBOutlet var thirdSlider: UISlider!{
        didSet{
            thirdSlider.tintColor = UIColor.blue
        }
    }
    
    @IBOutlet var firstSliderValue: UILabel!
    @IBOutlet var secondSliderValue: UILabel!
    @IBOutlet var thirdSliderValue: UILabel!
    
    // MARK: - viewDidLoad
    override func viewDidLoad() {
     super.viewDidLoad()
    }
// MARK: - IBAction's
    @IBAction func rgbSliderChanged() {
        changeColor()
        firstSliderIndex()
        secondSliderIndex()
        thirdSliderIndex()
    }
    // MARK: - Privates functions
private func changeColor () {
        stelseView.backgroundColor = UIColor(red: CGFloat(firstSlider.value), green: CGFloat(secondSlider.value), blue: CGFloat(thirdSlider.value), alpha: CGFloat(1))
    }
    private func firstSliderIndex () {
        firstSliderValue.text = firstSlider.value.formatted()
    }
    private func secondSliderIndex () {
        secondSliderValue.text = secondSlider.value.formatted()
    }
    private func thirdSliderIndex () {
        thirdSliderValue.text = thirdSlider.value.formatted()
    }
}

