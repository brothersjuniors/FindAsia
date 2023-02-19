//
//  ViewController.swift
//  FindAsiaApp
//
//  Created by 近江伸一 on 2023/02/18.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    var selectCountry = ""
    var selectedNum: [Int] = [0]
    var selecnumber = 0
    var article = Article()
    @IBOutlet weak var selectButton: UIButton!
    let countrys = [
        "Asia","China","Korea","Japan"]
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    let images = UIImageView()
    @IBOutlet weak var coutryPicker: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        coutryPicker.delegate = self
        navigationItem.title = "Asia"
        navigationItem.largeTitleDisplayMode = .automatic
        navigationController?.navigationBar.prefersLargeTitles = true
        images.image = UIImage(named: "1")
        images.layer.cornerRadius = 150
        images.clipsToBounds = true
        images.frame = CGRect(x:0, y:0, width:300, height:300)
        images.center = CGPoint(x:screenWidth/2, y:screenHeight * 6/15)
        self.view.addSubview(images)
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return countrys.count
    }
    func pickerView(_ pickerView: UIPickerView,
                    titleForRow row: Int,
                    forComponent component: Int) -> String? {
        return countrys[row]
    }
    func pickerView(_ pickerView: UIPickerView,
                    didSelectRow row: Int,
                    inComponent component: Int) {
        navigationItem.title = countrys[row]
        selectCountry = countrys[row]
        if selectCountry == countrys[0] {
            selectButton.isEnabled = false
        } else if selectCountry == countrys[1] {
            selectButton.isEnabled = true
            selecnumber = 1
        } else if selectCountry == countrys[2]{
            selectButton.isEnabled = true
            selecnumber = 2
        } else if selectCountry == countrys[3]{
            selectButton.isEnabled = true
            selecnumber = 3
        }
        
    }
    @IBAction func findButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "DetailCountryView", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "DetailCountryView") as! DetailCountryView
    
        if selectCountry == countrys[0] {
            print("nothing")
        } else if selectCountry == countrys[1] {
            vc.selectedCountry = article.country[selecnumber-1].name
            vc.selectedTips = article.country[selecnumber].article
            vc.selectedImage = UIImage(named: String(article.country[selecnumber-1].image))
            vc.selectedNumber = String(article.country[selecnumber-1].number)
            vc.selectedSqure = article.country[selecnumber-1].scale
            vc.selectedHistory = article.country[selecnumber-1].history
            self.navigationController?.pushViewController(vc, animated: true)
        }  else if selectCountry == countrys[2]{
            vc.selectedCountry = article.country[selecnumber-1].name
            vc.selectedTips = article.country[selecnumber].article
            vc.selectedImage = UIImage(named: String(article.country[selecnumber-1].image))
            vc.selectedNumber = String(article.country[selecnumber-1].number)
            vc.selectedSqure = article.country[selecnumber-1].scale
            vc.selectedHistory = article.country[selecnumber-1].history
            self.navigationController?.pushViewController(vc, animated: true)
        }  else if selectCountry == countrys[3]{
            vc.selectedCountry = article.country[selecnumber-1].name
            vc.selectedTips = article.country[selecnumber-1].article
            vc.selectedImage = UIImage(named: String(article.country[selecnumber-1].image))
            vc.selectedNumber = String(article.country[selecnumber-1].number)
            vc.selectedSqure = article.country[selecnumber-1].scale
            vc.selectedHistory = article.country[selecnumber-1].history
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}

