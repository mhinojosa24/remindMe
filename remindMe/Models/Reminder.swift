//
//  Reminder.swift
//  remindMe
//
//  Created by Medi Assumani on 9/25/18.
//  Copyright © 2018 Yves Songolo. All rights reserved.
//

import Foundation

struct Reminder: Codable{
    
    var groupId: String
    var name: String?
    var type: EventType?
    var time: String
    
    
    init(groupId: String, name: String, type: EventType, time: String) {
        
        self.groupId = groupId
        self.name = name
        self.type = type
        self.time = time
    }

    // Function convert data  to be sent to the server into a json encoded format
    func toDictionary() -> [String: Any]{
        let data = try! JSONEncoder().encode(self)
        let json = try! JSONSerialization.jsonObject(with: data, options: [])
        
        return json as! [String: Any]
    }
    
}
