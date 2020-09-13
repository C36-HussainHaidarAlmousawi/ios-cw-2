//
//  ViewController.swift
//  iOSClasswork2
//
//  Created by Bodour Alrashidi on 6/3/20.
//  Copyright © 2020 Bodour Alrashidi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    /// 👀 **NOTE** هذه المصفوفة التي ستقوم بالإضافة إليها `emojiArray`
    var emojiArray : [String] = []
    
    @IBOutlet weak var animalTextField: UITextField!
    @IBOutlet weak var animalEmojiLabel: UILabel!
    
    
    @IBAction func AddAnimalToArray(_ sender: Any) {
        var animal = animalTextField.text!
        
        
        
        // MARK: - 1️⃣ emojiArray  الي  animal قم باضافه متغير
        
        if animal == "قطة"{
            emojiArray.append("🐱")
        }
        else if animal == "كلب"{
            emojiArray.append("🐶")
        }
        else if animal == "فار"{
            emojiArray.append("🐭")
        }
        else if animal == "ارنب"{
            emojiArray.append("🐰")
        }
        else if animal == "هامستر"{
            emojiArray.append("🐹")
        }
        else if animal == "ثعلب"{
            emojiArray.append("🦊")
        }
        else if animal == "باندا"{
            emojiArray.append("🐼")
        }
        else if animal == "أسد"{
            emojiArray.append("🦁")
        }
        else if animal == "بقرة"{
            emojiArray.append("🐮")
        }
        else if animal == "حصان"{
            emojiArray.append("🐴")
        }
            else if animal == "خروف"{
                emojiArray.append("🐑")
            }
            else if animal == "زرافة"{
                           emojiArray.append("🦒")
                       }
            else if animal == "ثعبان"{
                emojiArray.append("🐍")
            }
        else if animal == "سمكة"{
            emojiArray.append("🐟")
        }
            else if animal == "دب"{
                emojiArray.append("🐻")
            }
            else if animal == "ضفدع"{
                emojiArray.append("🐸")
            }
            
        else{
            emojiArray.append("?")
        }
        
        
        
        // MARK: - لا تقم بتغيير هذا السطر⚠️⚠️
        animalTextField.text = ""
        animalEmojiLabel.text = ""
        // MARK:  تقوم هذه الدالة بعرض الإيموجيز للحيوانات في الأسفل باستعمال `for in`
        for label in emojiArray
        {
            animalEmojiLabel.text! += label
        }
        /// **BONUS**: 🎁 قم بمسح مكونات المصفوفة بعد عرضها
        
        emojiArray.removeAll()
        
        
        
        hidekeyboard()
    }
    
    func hidekeyboard()  {
        animalTextField.resignFirstResponder()
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        hidekeyboard()
        return true
    }
    
    override func viewDidLoad() {
        animalTextField.delegate = self
    }
}


