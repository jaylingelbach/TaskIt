//
//  Date.swift
//  TaskIt
//
//  Created by jerkface on 9/2/15.
//  Copyright (c) 2015 FoMo. All rights reserved.
//

import Foundation

class Date {
    
    //# is an identifier for year
    class func from(#year:Int, month: Int, day:Int)-> NSDate {
        
        //NSDate components instance
        var components = NSDateComponents()
        
        // all from function declaration
        components.year = year
        components.month = month
        components.day = day
        
        // the below NSCalendar instance can properly encapsulate the information from our var components (stuff passed into our var components from the function call)
        
        var gregorianCalendar = NSCalendar(identifier: NSGregorianCalendar)
        // first made the calendar instance and passed in components from .dateFromComponents (which uses everything above)
        var date = gregorianCalendar?.dateFromComponents(components)
        
        return date!
        
    }
    
    class func toString(#date: NSDate)-> String {
        
        let dateStringFormatter = NSDateFormatter()
        dateStringFormatter.dateFormat = "yyyy-MM-dd"
        let dateString = dateStringFormatter.stringFromDate(date)
        return dateString
    }
}