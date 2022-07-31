//
//  QuizModelfire.swift
//  QuizApp
//
//  Created by Jannatun Nahar Papia on 22/7/22.
//
//
import Foundation
import SwiftUI
//
//
//struct QuizModelfire : Codable {
//
////    let answer : String?
////    let optionsA : String?
////    let optionsB : String?
////    let optionsC : String?
////    let optionsD : String?
////    let qustion : String?
//
//    let question : String?
//     let optionA : String?
//     let optionB : String?
//     let optionC : String?
//     let optionD : String?
//     let answer : String?
////    let category : String?
////    let image: String?
////    let sl : Int?
////
////
////    enum CodingKeys: String, CodingKey {
////        case answer = "answer"
////        case optionA = "optionA"
////        case optionB = "optionB"
////        case optionC = "optionC"
////        case optionD = "optionD"
////        case question = "qustion"
////      //  case category = "category"
////     //   case image = "image"
////        case sl = "sl"
////    }
//    
//
//
//
////    import Foundation
//
//    // MARK: - QuestionModelElement
//    struct QuestionModelElement:  Codable {
//      //  var id: String { UUID().uuidString }
//        let sl: Int
//        let optionA, optionB, optionC, optionD: String
//        let answer: String
//        let question: String?
//
////        enum CodingKeys: String, CodingKey {
////               case question = "question"
////               case optionA = "optionA"
////               case optionB = "optionB"
////               case optionC = "optionC"
////               case optionD  = "optionD"
////               case answer = "answer"
////           }
//
//
//    enum Category: String, Codable {
//        case alabamaDmv = "Alabama dmv"
//    }
//
////        var isSubmitted = false
////        var completed = false
//}


struct Qustion2:Identifiable {
    var id: String { UUID().uuidString }
    var question : String = ""
    var optoinA : String  = ""
    var optoinB : String  = ""
    var optoinC : String  = ""
    var optoinD : String  = ""
    var answer  : String  = ""
    var image  : String = ""
    //for checking
    var isSubmitted = false
    var completed = false
}


struct Qustion: Codable {
  //  let id: String { UUID().uuidString }
    let question : String?
    let optionA : String?
    let optionB : String?
    let optionC : String?
    let optionD : String?
    let answer: String?
    let sl: Int?
    
    enum CodingKeys: String, CodingKey {
         case question = "question"
         case optionA = "optionA"
         case optionB = "optionB"
         case optionC = "optionC"
         case optionD  = "optionD"
         case answer = "answer"
        case sl = "sl"
        
     }
    
  //  var image  : String = ""
    //for checking
    var isSubmitted = false
    var completed = false
    
    
    
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        sl = try values.decodeIfPresent(Int.self, forKey: .sl)
        
        
        do {
            self.question = try values.decode(String.self, forKey: .question)
        } catch DecodingError.typeMismatch {
            let value = try values.decode(Int.self, forKey: .question)
            self.question = "\(value)"
        }
        
        
        
        do {
            self.optionA = try values.decode(String.self, forKey: .optionA)
        } catch DecodingError.typeMismatch {
            let value = try values.decode(Int.self, forKey: .optionA)
            self.optionA = "\(value)"
        }
        
        
        do {
            self.optionB = try values.decode(String.self, forKey: .optionB)
        } catch DecodingError.typeMismatch {
            let value = try values.decode(Int.self, forKey: .optionB)
            self.optionB = "\(value)"
        }
        
        do {
            self.optionC = try values.decode(String.self, forKey: .optionC)
        } catch DecodingError.typeMismatch {
            let value = try values.decode(Int.self, forKey: .optionC)
            self.optionC = "\(value)"
        }
        
        
        do {
            self.optionD = try values.decode(String.self, forKey: .optionD)
        } catch DecodingError.typeMismatch {
            let value = try values.decode(Int.self, forKey: .optionD)
            self.optionD = "\(value)"
        }
        
        
        do {
            self.answer = try values.decode(String.self, forKey: .answer)
        } catch DecodingError.typeMismatch {
            let value = try values.decode(Int.self, forKey: .answer)
            self.answer = "\(value)"
        }
        
//        do {
//            self.image = try values.decode(String.self, forKey: .image)
//        } catch DecodingError.typeMismatch {
//            let value = try values.decode(Int.self, forKey: .image)
//            self.image = "\(value)"
//        }
//
//        category = try values.decodeIfPresent(String.self, forKey: .category)
    }
    
    
    
}



//struct nazmul: Codable {
//  //  @DocumentID var id: String?
// //   var id: String { UUID().uuidString }
//    let question : String?
//    let optionA : String
//    let optionB : String
//    let optionC : String
//    let optionD : String
//    let answer: String
//
//    //for checking
//    var isSubmitted = false
//    var completed = false
//
////    enum Category: String, Codable {
////        case alabamaDmv = "Alabama dmv"
////    }
//
//    enum CodingKeys: String, CodingKey {
//        case question = "question"
//        case optionA = "optionA"
//        case optionB = "optionB"
//        case optionC = "optionC"
//        case optionD  = "optionD"
//        case answer = "answer"
//    }
//
//}


//func getOptionArray()->[String]{
//    var array = [String]()
//
//    if let item = o, !item.isEmpty {
//        array.append(item)
//    }
//    if let item = opinion2Posivite50Parcent, !item.isEmpty {
//        array.append(item)
//    }
//    if let item = opinion3Nagative50Parcent, !item.isEmpty {
//        array.append(item)
//    }
//    if let item = opinion4Nagative100Parcent, !item.isEmpty {
//        array.append(item)
//    }
//    if let item = opinion5Nagative150Parcent, !item.isEmpty {
//        array.append(item)
//    }
//    if let item = opinion5Nagative200Parcent, !item.isEmpty {
//        array.append(item)
//    }
//
//    return array
//}

//}


extension Qustion{

init(question: String?, optionA: String?, optionB: String?, optionC: String?, optionD: String?, answer: String?, sl: Int?){
    
    self.question = question
    self.optionA = optionB
    self.optionB =  optionB
    self.optionC =  optionC
    self.optionD =  optionD
    self.answer =  answer
    
    self.sl = sl
}
}
