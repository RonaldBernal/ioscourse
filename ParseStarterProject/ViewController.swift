/**
* Copyright (c) 2015-present, Parse, LLC.
* All rights reserved.
*
* This source code is licensed under the BSD-style license found in the
* LICENSE file in the root directory of this source tree. An additional grant
* of patent rights can be found in the PATENTS file in the same directory.
*/

import UIKit
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let testObject = PFObject(className: "Restaurant")
        
        testObject["username"] = "Rum4Every1"
        testObject["email"] = "ronald.abernal@gmail.com"
        testObject["password"] = "password"

        testObject.saveInBackgroundWithBlock { (success: Bool, error: NSError?) -> Void in
            if error == nil{
                print("Everything ok")
            }
            else{
                print(error)
            }
        }

    }
}
