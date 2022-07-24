//
//  OptionModelfire.swift
//  QuizApp
//
//  Created by Jannatun Nahar Papia on 22/7/22.
//

//import Foundation
//
//struct OpinionModelfire : Codable {
//    
//    let kidsDid : String?
//    let opinion1Posivite100Parcent : String?
//    let opinion2Posivite50Parcent : String?
//    let opinion3Nagative50Parcent : String?
//    let opinion4Nagative100Parcent : String?
//    let opinion5Nagative150Parcent : String?
//    let opinion5Nagative200Parcent : String?
// //   let image : String?
// //   let sl : Int?
//    
//    
//    enum CodingKeys: String, CodingKey {
//        case kidsDid = "kids_did"
//        case opinion1Posivite100Parcent = "opinion1_posivite_100_parcent"
//        case opinion2Posivite50Parcent = "opinion2_posivite_50_parcent"
//        case opinion3Nagative50Parcent = "opinion3_nagative_50_parcent"
//        case opinion4Nagative100Parcent = "opinion4_nagative_100_parcent"
//        case opinion5Nagative150Parcent = "opinion5_nagative_150_parcent"
//        case opinion5Nagative200Parcent = "opinion5_nagative_200_parcent"
//    //    case image = "image"
//      //  case sl = "sl"
//    }
//    init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//
//    //    sl = try values.decodeIfPresent(Int.self, forKey: .sl)
//        
//        
//        do {
//            self.kidsDid = try values.decode(String.self, forKey: .kidsDid)
//        } catch DecodingError.typeMismatch {
//            let value = try values.decode(Int.self, forKey: .kidsDid)
//            self.kidsDid = "\(value)"
//        }
//        
//        
//        
//        do {
//            self.opinion1Posivite100Parcent = try values.decode(String.self, forKey: .opinion1Posivite100Parcent)
//        } catch DecodingError.typeMismatch {
//            let value = try values.decode(Int.self, forKey: .opinion1Posivite100Parcent)
//            self.opinion1Posivite100Parcent = "\(value)"
//        }
//        
//        
//        do {
//            self.opinion2Posivite50Parcent = try values.decode(String.self, forKey: .opinion2Posivite50Parcent)
//        } catch DecodingError.typeMismatch {
//            let value = try values.decode(Int.self, forKey: .opinion2Posivite50Parcent)
//            self.opinion2Posivite50Parcent = "\(value)"
//        }
//        
//        do {
//            self.opinion3Nagative50Parcent = try values.decode(String.self, forKey: .opinion3Nagative50Parcent)
//        } catch DecodingError.typeMismatch {
//            let value = try values.decode(Int.self, forKey: .opinion3Nagative50Parcent)
//            self.opinion3Nagative50Parcent = "\(value)"
//        }
//        
//        
//        do {
//            self.opinion4Nagative100Parcent = try values.decode(String.self, forKey: .opinion4Nagative100Parcent)
//        } catch DecodingError.typeMismatch {
//            let value = try values.decode(Int.self, forKey: .opinion4Nagative100Parcent)
//            self.opinion4Nagative100Parcent = "\(value)"
//        }
//        
//        
//        do {
//            self.opinion5Nagative150Parcent = try values.decode(String.self, forKey: .opinion5Nagative150Parcent)
//        } catch DecodingError.typeMismatch {
//            let value = try values.decode(Int.self, forKey: .opinion5Nagative150Parcent)
//            self.opinion5Nagative150Parcent = "\(value)"
//        }
//        
//        do {
//            self.opinion5Nagative200Parcent = try values.decode(String.self, forKey: .opinion5Nagative200Parcent)
//        } catch DecodingError.typeMismatch {
//            let value = try values.decode(Int.self, forKey: .opinion5Nagative200Parcent)
//            self.opinion5Nagative200Parcent = "\(value)"
//        }
//        
////        do {
////            self.image = try values.decode(String.self, forKey: .image)
////        } catch DecodingError.typeMismatch {
////            let value = try values.decode(Int.self, forKey: .image)
////            self.image = "\(value)"
////        }
//    }
// 
//    func getOptionArray()->[String]{
//        var array = [String]()
//      
//        if let item = opinion1Posivite100Parcent, !item.isEmpty {
//            array.append(item)
//        }
//        if let item = opinion2Posivite50Parcent, !item.isEmpty {
//            array.append(item)
//        }
//        if let item = opinion3Nagative50Parcent, !item.isEmpty {
//            array.append(item)
//        }
//        if let item = opinion4Nagative100Parcent, !item.isEmpty {
//            array.append(item)
//        }
//        if let item = opinion5Nagative150Parcent, !item.isEmpty {
//            array.append(item)
//        }
//        if let item = opinion5Nagative200Parcent, !item.isEmpty {
//            array.append(item)
//        }
//        
//        return array
//    }
//    
//}
//
//
//extension OpinionModelfire{
//    
//    init(kidsDid: String?, opinion1Posivite100Parcent: String?, opinion2Posivite50Parcent: String?, opinion3Nagative50Parcent: String?, opinion4Nagative100Parcent: String?, opinion5Nagative150Parcent: String?, opinion5Nagative200Parcent: String?, sl: Int?,image:String?){
//        
//        self.kidsDid = kidsDid
//        self.opinion1Posivite100Parcent = opinion1Posivite100Parcent
//        self.opinion2Posivite50Parcent =  opinion2Posivite50Parcent
//        self.opinion3Nagative50Parcent =  opinion3Nagative50Parcent
//        self.opinion4Nagative100Parcent =  opinion4Nagative100Parcent
//        self.opinion5Nagative150Parcent =  opinion5Nagative150Parcent
//        self.opinion5Nagative200Parcent = opinion5Nagative200Parcent
////        self.image = image
// //       self.sl = sl
//    }
//}
