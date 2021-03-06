//
//  Reminder.swift
//  remindMe
//
//  Created by Medi Assumani on 9/25/18.
//  Copyright © 2018 Yves Songolo. All rights reserved.
//

import Foundation

struct Reminder: Codable{
    
    var id: String
    var groupId: String
    var name: String?
    var type: EventType?
    var day: String?
    var longitude: Double
    var latitude : Double
    static var totalAmountOfReminders: Int = 0
    var timeFrom: String?
    var timeTo: String?
    var description: String?
    
    init(groupId: String, id: String, name: String, type: EventType, day: String, longitude: Double, latitude: Double, timeFrom: String, timeTo: String) {
        
        self.groupId = groupId
        self.id = id
        self.name = name
        self.type = type
        self.day = day
        self.longitude = longitude
        self.latitude = latitude
        self.timeFrom = timeFrom
        self.timeTo = timeTo
    }

    // Function convert data  to be sent to the server into a json encoded format
    func toDictionary() -> [String: Any]{
        let data = try! JSONEncoder().encode(self)
        let json = try! JSONSerialization.jsonObject(with: data, options: [])
        
        return json as! [String: Any]
    }
    
    
}
