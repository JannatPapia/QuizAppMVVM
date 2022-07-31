//
//  Configfire.swift
//  QuizApp
//
//  Created by Jannatun Nahar Papia on 29/7/22.
//

import Foundation


//MARK: Percentage rule explation

/*
 If you have to turn a percentage into a decimal, just divide by 100. For example, 25% = 25/100 = 0.25.
 To change a decimal into a percentage, multiply by 100. So 0.3 = 0.3 × 100 =30%
 */


//MARK: in App Purchease
struct AppConfig {
   static let appisDevelopment = false
}

//MARK: QA turn to Learing
struct AppAPI {
   static let margelearingView = true
}


//MARK: Home Grid Round setup
struct HomeGrid {
    
    //each round number quiz qustion appear
    static let eachRoundQuiz = 10
    
  // it's based eachRoundQuiz quiz. so if you set eachRoundQuiz 10 and round 10  then your json file minimum 100 items present. it it's less then 100 then app will crush out of index. my suggestion at fast count your json file located item then set it. good luck .okay koliza
    static let round = 6
    
    static func getImageRound(index : Int, isQuiz : Bool) -> String {
        if isQuiz {
            return "home_sign\(index + 1)"
        }else{
            return "home_sign\(index + 6)"
        }
    }
}

//MARK: QUIZ background Image
//struct QUIZConfig {
//  static let mainBackgroundImage = "bg_text_to_die"
//}



//MARK: Admob config
//public final class SwiftUIMobileAds {
//    //Warning: plist appid should be updated before production
//    //plist test GADApplicationIdentifier id : ca-app-pub-3940256099942544~1458002511
//    //test reword id: ca-app-pub-3940256099942544/1712485313
//    public static let testBannerId = "" //"ca-app-pub-3940256099942544/2435281174"
//    public static let testInterstitialId = "" //"ca-app-pub-3940256099942544/4411468910"
//    public static let testRewardedId = "ca-app-pub-2306555329039690/7456116670"
//}


//MARK: Onbroding Data
//extension OnbrodingModel {
//
//    static   func items()->[OnbrodingModel]{
//        var items = [OnbrodingModel]()
//
//        items.append(OnbrodingModel(title: "Assesses your ability",caption: "To safely and confidently operate a vehicle",image: "OnboardingImage4"))
//        items.append(OnbrodingModel(title: "Do you have Ability? ", caption: "to drive a motor vehicle with maintain DMV guidline", image: "OnboardingImage2"))
//        items.append(OnbrodingModel(title: "Road sign you must know", caption: "Learn  and practice DMV road signs to pass your DMV written Test", image: "OnboardingImage3"))
//        items.append(OnbrodingModel(title: "30 Q. DMV permit test", caption: "You need to answer 24 of them to reach the 80% passing score.", image: "OnboardingImage1"))
//        return items
//    }
//}
