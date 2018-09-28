//
//  CreateReminderViewController+Extension.swift
//  remindMe
//
//  Created by Medi Assumani on 9/24/18.
//  Copyright © 2018 Yves Songolo. All rights reserved.
//

import Foundation
import UIKit
import MapKit
import JLocationKit

extension CreateReminderViewController: UITextFieldDelegate {
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let segueIdentifier = segue.identifier, let destinationViewController = segue.destination as? ReminderListViewController else {return}
        
        switch segueIdentifier {
            
        case Constant.saveReminderSegueIdenfier where reminder == nil:
            
            guard let name = reminderNameTextField.text, let type = reminderTypeTextFiled.text, let time = reminderTimeTextField.text else {return}
            
            let createdReminder: Reminder = Reminder(name: name, type: type, time: time)
            Group.numberOfReminders += 1
            destinationViewController.userReminders.append(createdReminder)
            
        default:
            print("Unindentified Indentifier")
        }
        
    }
    
    
    
    // FUNCTION TO SELECT THE NEXT TEXTFIELD TO PROMPT FOR INPUT
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        switch textField {
            
        case reminderNameTextField:
            
            reminderTypeTextFiled.becomeFirstResponder()
            
        case reminderTypeTextFiled:
            
            reminderTimeTextField.becomeFirstResponder()
            
        default:
            
            reminderTimeTextField.resignFirstResponder()
        }
        
        return true
    }
    
}