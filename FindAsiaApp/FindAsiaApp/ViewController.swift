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
        Country(id: 1, name: "中華人民共和国", number: 1412000000, article: "古代から続く中国の歴史は、中華人民共和国のあり方を文化面から規定している。このことは、中華人民共和国憲法前文でも言及されている。文化は生活を意味し、国民生活は経済的裏づけをもって成り立つ。憲法前文は「革命的伝統」も強調している。国共内戦もふくめ、革命は政治的断絶を意味する。中華民国からの連続は、経済を中心として理解される。1840年～1949年（清・中華民国時代）の中国では外資が中国の近代化を推進した。19世紀末には香港上海銀行（イギリス）や露清銀行（ロシア）、インドシナ銀行（フランス）といった欧州資本が進出してきたが、20世紀に入ると門戸開放政策によってアメリカ資本も参入してきた。このアメリカ資本とは、例えば第一次世界大戦中に来中してきたJPモルガンのフランク・ヴァンダーリップ（Frank A. Vanderlip）であり、または世界大戦直後に中国人向けの保険を初めて販売したAAU（American Asiatic Underwriters、後のAIU保険）である。一方の中国側も、蔣介石政権が対米関係を重視して四大家族がアメリカ政府へのロビー活動（チャイナ・ロビー）を働きかけ、米中関係は政治・経済面でより親密なものとなっていった。このようなアメリカとの経済的な結びつきは、米中国交樹立（1979年）[注 7] 後の改革開放政策で再び強まった。 国共内戦の結果にも触れておく。中華人民共和国が樹立された時点で、蔣介石率いる中華民国政府は未だ中国大陸の華南三省と西南部三省の多数の地域を統治していた。だが、中国人民解放軍の攻勢によって1949年12月に国民党は進駐中であった台湾に逃れ、人民解放軍は翌1950年5月までに福建省・浙江省[注 8] の一部島嶼を除く中国大陸と海南島を制圧した。ただし、台湾に政府機能を移転した中華民国政府は1950年以降も台湾国民政府として存続し、台湾とその他島嶼からなる地域（台湾地区）は2021年現在に至るまで中華民国政府の実効支配下にある。中華人民共和国とは政治が独立している。", image: "china", scale: "9,597,000 km²", history: "ちゅうかじんみんきょうわこく、簡体字中国語: 中华人民共和国、繁体字中国語: 中華人民共和國、拼音: Zhōnghuá Rénmín GònghéguóPronunciation of Zhonghuarenmingongheguo.ogg 聞く）、通称中国（ちゅうごく、拼音: Zhōngguó）は、東アジアに位置する社会主義共和制国家。首都は北京市。"),
        Country(id: 2, name: "大韓民国", number: 51740000, article: "大韓民国（だいかんみんこく、ハングル: 대한민국、英: Republic of Korea）、通称、韓国（かんこく、ハングル: 한국、英: South Korea）は、東アジアに位置する共和制国家。首都はソウル特別市[4]。G20、経済協力開発機構 (OECD) 、開発援助委員会、主要債権国からなるパリクラブのメンバー[5][6]。経済複雑性指標は日本、スイスに次ぐ世界3位。[7]、国際通貨基金における『先進国』である[8]。2020年における国内総生産 (GDP) は世界第10位[9]、貿易輸出額は世界6位[10]。主要産業はエレクトロニクス、IT、造船、鉄鋼、自動車など。サムスン電子、LGエレクトロニクス、現代自動車等多数の世界的大企業を輩出し、工業技術力指数は世界3位[11]、近年はスマートフォンとその関連部品の開発で知られる。2020年における平均賃金は4万2156ドル(USD)[12]、平均世帯所得は6125万ウォン（約634万円）[13]。世界銀行における『高所得国（一人当たりのGNIが1万2535ドル以上）』に分類される[14]。一方でOECD加盟国内で最も高い自殺率[15]と、世界2位の平均労働時間、最低級の合計特殊出生率[16]が国内の社会問題と化している。物価高騰や１億円を超える住宅平均価格による経済格差の拡大[17]、急激な経済成長がもたらした極端な世代間ギャップや知的格差も近年問題視されている[16]。教育に力を入れており、国際連合教育科学文化機関（UNESCO）によれば、2019年における19歳以上25歳未満の大学進学率は98.4％[18]、大学院進学率は44％[19]。国連人間開発指数は「非常に高い」を記録、経済平和研究所による人的資本評価は世界で2番目に高い[20]。支配領域には山地が多く森林と農地で国土の約81%を占め、平野部は少ない[21]。首都ソウルへの一極集中の傾向が強く、2021年における都市圏人口は国民の50%を超える2604万人であり[22]、都市圏内総生産は世界4位[23]で、これは日本の東京都の都内総生産と同規模を有する[24]。", image: "korea", scale: "100,200 km²", history: "だいかんみんこく、ハングル: 대한민국、英: Republic of Korea）、通称、韓国（かんこく、ハングル: 한국、英: South Korea）は、東アジアに位置する共和制国家。首都はソウル特別市[4]。"),  Country(id: 3, name: "日本国", number: 125700000, article: "日本語を母語とする大和民族が国民の大半を占める。自然地理的には、ユーラシア大陸の東に位置しており、環太平洋火山帯を構成する[2]。島嶼国であり、領土が海に囲まれているため地続きの国境は存在しない。日本列島は本州、北海道、九州、四国、沖縄島（以上本土）も含めて1万4125の島を有する[注 8]。気候区分は、北は亜寒帯から南は亜熱帯まで様々な気候区分に属している[8]。様々な自然災害に見舞われやすい環境にあり、地震発生数や災害被害額は世界有数である[9]。日本は古くから中国大陸、朝鮮半島との関係が深く、飛鳥時代・奈良時代には遣隋使、遣唐使といった交易を通して法制度・仏教・儒教・漢文等を輸入し、国家体制の構築に役立てている。また、正倉院にペルシア・インドを由来とする文化財が複数含まれることを例に取れるように、唐や朝鮮に限らず交易を通じてアジア・シルクロード文化も流入している。律令体制樹立後の平安時代末期より武家政権が成立し、幾度も交替する。江戸時代に至って交際国を限定する「鎖国」を行ったが、外圧を受けて開国し、明治維新の過程で王政復古の大号令で武家政権が終焉した。版籍奉還や廃藩置県などを経て中央集権化を完了した後、自由民権運動を受けて大日本帝国憲法が制定され、国会が開設された[10]。同時に西洋の資本主義を参考にして日本初の銀行や東京株式取引所および銀行と取引を行う会社が次々と創業された。並行して工業化も進展し、ここに西洋化・近代化が果たされ、日本は近代国家・立憲君主制国家へ移行する。日清戦争、日露戦争、第一次世界大戦に勝利した日本は、開国時に欧米諸国と結んだ不平等条約を撤廃させ、領土を拡張した。国際連盟発足にあたっては、日本は国際連盟規約への人種差別撤廃明記を呼びかけたが（人種的差別撤廃提案）、実現には至らなかった[11][12]。アメリカ不在の国際連盟において常任理事国の地位を確保した日本は、大正デモクラシーを受けて政治的・文化的発展が進み、政党政治の慣例の確立や普通選挙法成立など民主主義の発展が見られた。しかし、世界恐慌とそれに続くブロック経済化の中で日本は五・一五事件や二・二六事件、政党の汚職事件などに揺れて政党政治が後退[13]、軍の影響の強い挙国一致内閣が常態化した[14]。満州事変に続き日中戦争に向かい、第二次世界大戦に枢軸国として参戦、連合国軍と対戦したが太平洋戦争に敗れた。占領下では連合国軍総司令部（GHQ）の指示を受けて国民主権、基本的人権の尊重、平和主義を謳う[15]日本国憲法が制定され、日本は再び政党政治を基調とした民主主義となる。戦後復興ののち、冷戦の中で自衛隊と日米安保条約を軸とした国防を維持しながら、1960年代から高度経済成長期に入り、工業化が加速し科学技術立国が推進された結果経済大国になったが、プラザ合意を経てバブル経済に突入し、1990年代初頭にバブル経済が崩壊すると以後は経済停滞期に入った[2]。その後は世界最大の対外純資産国となっているが[16]、格差は拡大している[17][18]。環太平洋パートナーシップに関する包括的及び先進的な協定を推進するなど、概ね自由貿易体制を支持している。人口は江戸末期まで概ね3000万人台で安定していたが、明治以降は人口急増期に入り、1967年（昭和42年）に初めて1億人を突破した。その後出生率の低下に伴い21世紀初頭にピークを迎え、人口減少が始まった[19]。現代日本社会は少子化が進んでおり、世界トップクラスの平均寿命の長さと移民流入の少なさも相まって、超高齢社会に突入している。21世紀に入ってからは、中国やアメリカ、インドの企業群との競争が激しい状況下であるが、自動車産業やエレクトロニクス産業、重化学工業の中心地であり[20][21]、科学技術のリーダーとされる[22]。トヨタ自動車、パナソニック、東京エレクトロン、任天堂、日立製作所、三菱重工業、日本製鉄、三菱ケミカル、東レ、武田薬品工業、ENEOS、INPEX、三菱商事、ソニー、セブン＆アイ、三井不動産、日本電信電話、三菱UFJフィナンシャル・グループなど多数の大企業を輩出し、また、経済複雑性指標において日本は1984年（昭和59年）以降、一貫して世界首位を維持している。このような理由から、列強の一国とみなされる[23][24]。人間開発指数は高く先進国のひとつに数えられており[25]、経済協力開発機構、G7、G8およびG20の参加国である。名目GDPは世界第3位かつ購買力平価は世界第4位である[26]。経済平和研究所による2022年（令和4年）の健全なビジネス環境ランキングでは、日本はオーストラリア、スイス、カナダ、英国に次いで世界第5位となっている[27]。また、2020年（令和2年）の国際労働組合総連合（ITUC）の労働権ランキングでは、世界で6段階中の2番手のグループに属し、台湾やシンガポールとともにアジアで独歩的な位置を占め、世界的にもドイツやイタリアには及ばないものの、フランスやカナダと同格、アメリカ合衆国やイギリスよりも高く、上位レベルとみなされる[28]。文化面では日本庭園、日本建築、和食、着物や宗教（神道・日本仏教）などの伝統文化を保持し、複数の世界遺産を保有している。また漫画、アニメ、ゲームを始めとするポップカルチャーの中心地である。これらの文化は、欧米圏の文化と比べ特異な文化として海外から注目されている[注 9]。家庭用ゲーム機のハードウェアでは、1990年代までに任天堂・ソニー・セガの3社が世界的シェアの大部分を獲得したが、2001年（平成13年）3月にはセガが撤退した。政府はクールジャパン戦略を実行するなど、観光立国を推進している。2021年（令和3年）には東京オリンピック[注 10]が開催され、2025年（令和7年）には大阪万博も予定されるなど、国際的イベントの招致にも力を入れる。2021年、USニューズ&ワールド・レポートの2021 Best Countries ランキングで第2位となった[29]。2020年、日本は国際送金サービスを扱うremitlyで調査した最も移住したい国ランキングで、カナダに次いで2位を占めた [6]。", image: "japan", scale: "378,000 km²", history:"にほんこく、にっぽんこく、英:Japan）、または日本（にほん、にっぽん）は、東アジアに位置する民主制国家[1]。首都は東京都[注 2][2][3]。")
        
        
        
    ]
    var countryInt = 0
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
            vc.selectedCountry = country[countryInt].name
            print(countryInt)
            vc.selectedTips = country[countryInt].article
            vc.selectedImage = UIImage(named: String(country[countryInt].image))
            vc.selectedNumber = String(country[countryInt].number)
            vc.selectedSqure = country[countryInt].scale
            vc.selectedHistory = country[countryInt].history
            self.navigationController?.pushViewController(vc, animated: true)
            
        }  else if selectCountry == countrys[2]{
            
            vc.selectedCountry = country[1].name
            print(countryInt)
            vc.selectedTips = country[1].article
            vc.selectedImage = UIImage(named: String(country[1].image))
            vc.selectedNumber = String(country[1].number)
            vc.selectedSqure = country[1].scale
            vc.selectedHistory = country[1].history
            self.navigationController?.pushViewController(vc, animated: true)
            
        }  else if selectCountry == countrys[3]{
            
            vc.selectedCountry = country[2].name
            print(countryInt)
            vc.selectedTips = country[2].article
            vc.selectedImage = UIImage(named: String(country[2].image))
            vc.selectedNumber = String(country[2].number)
            vc.selectedSqure = country[2].scale
            vc.selectedHistory = country[2].history
            self.navigationController?.pushViewController(vc, animated: true)
            
            
        }
    }
}
