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
    let country = [
        Country(id: 1, name: "中華人民共和国", number: 1412000000, article: "古代から続く中国の歴史は、中華人民共和国のあり方を文化面から規定している。このことは、中華人民共和国憲法前文でも言及されている。文化は生活を意味し、国民生活は経済的裏づけをもって成り立つ。憲法前文は「革命的伝統」も強調している。国共内戦もふくめ、革命は政治的断絶を意味する。中華民国からの連続は、経済を中心として理解される。1840年～1949年（清・中華民国時代）の中国では外資が中国の近代化を推進した。19世紀末には香港上海銀行（イギリス）や露清銀行（ロシア）、インドシナ銀行（フランス）といった欧州資本が進出してきたが、20世紀に入ると門戸開放政策によってアメリカ資本も参入してきた。このアメリカ資本とは、例えば第一次世界大戦中に来中してきたJPモルガンのフランク・ヴァンダーリップ（Frank A. Vanderlip）であり、または世界大戦直後に中国人向けの保険を初めて販売したAAU（American Asiatic Underwriters、後のAIU保険）である。一方の中国側も、蔣介石政権が対米関係を重視して四大家族がアメリカ政府へのロビー活動（チャイナ・ロビー）を働きかけ、米中関係は政治・経済面でより親密なものとなっていった。このようなアメリカとの経済的な結びつきは、米中国交樹立（1979年）[注 7] 後の改革開放政策で再び強まった。 国共内戦の結果にも触れておく。中華人民共和国が樹立された時点で、蔣介石率いる中華民国政府は未だ中国大陸の華南三省と西南部三省の多数の地域を統治していた。だが、中国人民解放軍の攻勢によって1949年12月に国民党は進駐中であった台湾に逃れ、人民解放軍は翌1950年5月までに福建省・浙江省[注 8] の一部島嶼を除く中国大陸と海南島を制圧した。ただし、台湾に政府機能を移転した中華民国政府は1950年以降も台湾国民政府として存続し、台湾とその他島嶼からなる地域（台湾地区）は2021年現在に至るまで中華民国政府の実効支配下にある。中華人民共和国とは政治が独立している。", image: "china", scale: "9,597,000 km²"),
        Country(id: 2, name: "大韓民国", number: 51740000, article: "大韓民国（だいかんみんこく、ハングル: 대한민국、英: Republic of Korea）、通称、韓国（かんこく、ハングル: 한국、英: South Korea）は、東アジアに位置する共和制国家。首都はソウル特別市[4]。G20、経済協力開発機構 (OECD) 、開発援助委員会、主要債権国からなるパリクラブのメンバー[5][6]。経済複雑性指標は日本、スイスに次ぐ世界3位。[7]、国際通貨基金における『先進国』である[8]。2020年における国内総生産 (GDP) は世界第10位[9]、貿易輸出額は世界6位[10]。主要産業はエレクトロニクス、IT、造船、鉄鋼、自動車など。サムスン電子、LGエレクトロニクス、現代自動車等多数の世界的大企業を輩出し、工業技術力指数は世界3位[11]、近年はスマートフォンとその関連部品の開発で知られる。2020年における平均賃金は4万2156ドル(USD)[12]、平均世帯所得は6125万ウォン（約634万円）[13]。世界銀行における『高所得国（一人当たりのGNIが1万2535ドル以上）』に分類される[14]。一方でOECD加盟国内で最も高い自殺率[15]と、世界2位の平均労働時間、最低級の合計特殊出生率[16]が国内の社会問題と化している。物価高騰や１億円を超える住宅平均価格による経済格差の拡大[17]、急激な経済成長がもたらした極端な世代間ギャップや知的格差も近年問題視されている[16]。教育に力を入れており、国際連合教育科学文化機関（UNESCO）によれば、2019年における19歳以上25歳未満の大学進学率は98.4％[18]、大学院進学率は44％[19]。国連人間開発指数は「非常に高い」を記録、経済平和研究所による人的資本評価は世界で2番目に高い[20]。支配領域には山地が多く森林と農地で国土の約81%を占め、平野部は少ない[21]。首都ソウルへの一極集中の傾向が強く、2021年における都市圏人口は国民の50%を超える2604万人であり[22]、都市圏内総生産は世界4位[23]で、これは日本の東京都の都内総生産と同規模を有する[24]。", image: "Korea", scale: "100,200 km²")
        
        
        
    ]
    var countryInt = 0
    @IBOutlet weak var selectButton: UIButton!
    let countrys = [
        "Asia","China","Korea"]
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
        images.layer.cornerRadius = 100
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
        } else {
            selectButton.isEnabled = true
            selecnumber = 2
           
            
        }
        
    }
        
        @IBAction func findButton(_ sender: Any) {
            let storyboard = UIStoryboard(name: "DetailCountryView", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "DetailCountryView") as! DetailCountryView
            //
            if selectCountry == countrys[0] {
                print("nothing")
            } else if selectCountry == countrys[1] {
                vc.selectedCountry = country[0].name
                print(countryInt)
                vc.selectedTips = country[countryInt].article
              //  vc.selectedImage = country[countryInt].image
                vc.selectedNumber = String(country[countryInt].number)
                vc.selectedSqure = country[countryInt].scale
                
                self.navigationController?.pushViewController(vc, animated: true)
                
            }  else if selectCountry == countrys[2]{
               
                vc.selectedCountry = country[1].name
                print(countryInt)
                vc.selectedTips = country[1].article
                //  vc.selectedImage = country[1].image
                vc.selectedNumber = String(country[1].number)
                vc.selectedSqure = country[1].scale
                
                self.navigationController?.pushViewController(vc, animated: true)
                
            }
        
    }
}
