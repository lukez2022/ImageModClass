import Foundation

import UIKit

class UnscramblingFinishedViewController: UIViewController {
    var unscramblingPlaceholderAfter: UIImage = UIImage(named: "normalplaceholder")!
    @IBOutlet weak var editedImage: UIImageView!
    var unscrambledResult: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        editedImage.image = unscrambledResult
       
    }
   
}
