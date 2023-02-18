

import UIKit

class DetailCountryView: UIViewController {
    
    @IBOutlet weak var countryLabel: UILabel!
    var selectedCountry = "Country"
    
    @IBOutlet weak var countryImage: UIImageView!
    var selectedImage = ""
    @IBOutlet weak var historyTextView: UITextView!
    var selectedHistory = ""
    @IBOutlet weak var citizenNumberLabel: UILabel!
    var selectedNumber = ""
    @IBOutlet weak var squeraLabel: UILabel!
    var selectedSqure = ""
    @IBOutlet weak var tipTextView: UITextView!
    var selectedTips = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = ""
        countryLabel.text = selectedCountry
        navigationItem.title = selectedCountry
        historyTextView.text = selectedHistory
        tipTextView.text = selectedTips
       // countryImage.image = UIImage(named: "selectedImage")
        citizenNumberLabel.text = String(selectedNumber)
        squeraLabel.text = selectedSqure

        
        
    }
    
    
}
