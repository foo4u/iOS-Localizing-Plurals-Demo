//
//  ViewController.swift
//  Geese
//
//  Created by Scott Rossillo on 11/12/14.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var label : UILabel?
    private let items : [Int] = [0, 1, 2, 3, 4, 5]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateLabel(0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: UIPickerViewDataSource

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.items.count
    }

    // MARK: UIPickerViewDelegate

    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let x = self.items[row]
        return "\(x)"
    }

    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.updateLabel(self.items[row])
    }

    private func updateLabel(x : (Int)) {
        let fmt = NSBundle.mainBundle().localizedStringForKey("geese.landed.ct", value:"\(x)", table: "Localizable")
        self.label?.text = String(format: fmt, x, x)
    }

}
