//
//  UnscramblingViewController.swift
//  Image-modification-toolkit
//
//  Created by Juncheng Yang on 11/7/23.
//

import UIKit

class UnscramblingViewController: UIViewController {

    @IBOutlet weak var uploadImage2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    var unscramblingPlaceholderBefore: UIImage = UIImage(named: "scrambledplaceholder")!

        var unscramblingPlaceholderAfter: UIImage = UIImage(named: "normalplaceholder")!
    
    
    @IBAction func chooseImage2(_ sender: Any) {
        let vc = UIImagePickerController()
        vc.sourceType = .photoLibrary
        vc.delegate = self
        vc.allowsEditing = true
        present(vc, animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension UnscramblingViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
//        if let image = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerEditedImage")]as? UIImage{
//            uploadImage2.image = image
//        }
        uploadImage2.image = unscramblingPlaceholderBefore
        picker.dismiss(animated: true, completion: nil)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        uploadImage2.image = unscramblingPlaceholderBefore
        picker.dismiss(animated: true, completion: nil)
    }
}
