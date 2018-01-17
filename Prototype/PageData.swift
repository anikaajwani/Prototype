//
//  PageData.swift
//  Prototype
//
//  Created by Anika Ajwani on 12/4/17.
//  Copyright © 2017 Anika Ajwani. All rights reserved.
//

import Foundation

struct PropertyKey {
    static let pageType = "pageType"
    static let question = "question"
    static let answer = "answer"
}

class PageData: NSObject, NSCoding {
    
    //MARK: Properties
    
    var pageType : String
    var question : String
    var answer : String
    
    //MARK: Archiving Paths
    
    static let DocumentsDirectory = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("dataModel")
    
    required init(pageType : String, question : String, answer : String) {
        self.pageType = pageType
        self.question = question
        self.answer = answer
    }
    
    //MARK: NSCoding
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(pageType, forKey: PropertyKey.pageType)
        aCoder.encode(question, forKey: PropertyKey.question)
        aCoder.encode(answer, forKey: PropertyKey.answer)
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        let pageType = aDecoder.decodeObject(forKey: PropertyKey.pageType) as! String
        let question = aDecoder.decodeObject(forKey: PropertyKey.question) as! String
        let answer = aDecoder.decodeObject(forKey: PropertyKey.answer) as! String
        
        self.init(pageType: pageType, question: question, answer: answer)
    }
}

