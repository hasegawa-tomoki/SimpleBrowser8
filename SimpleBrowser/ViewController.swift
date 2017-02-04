import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var webView: UIWebView!
  @IBOutlet weak var searchBar: UISearchBar!
  @IBOutlet weak var backButton: UIBarButtonItem!
  @IBOutlet weak var reloadButton: UIBarButtonItem!
  @IBOutlet weak var stopButton: UIBarButtonItem!
  
  // ホームページのURL。起動時にこのページを開く。
  let homeUrlString = "http://www.yahoo.co.jp"

  override func viewDidLoad() {
    super.viewDidLoad()
    // ホームページを開く。
    open(urlString: homeUrlString)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
  // 文字列で指定されたURLをWeb Viewで開く。
  func open(urlString: String){
    let url = URL(string: urlString)
    let urlRequest = URLRequest(url: url!)
    webView.loadRequest(urlRequest)
  }
  
  @IBAction func backButtonTapped(_ sender: UIBarButtonItem) {
    webView.goBack()
  }
  @IBAction func reloadButtonTapped(_ sender: UIBarButtonItem) {
    webView.reload()
  }
  @IBAction func stopButtonTapped(_ sender: UIBarButtonItem) {
    webView.stopLoading()
  }
}

