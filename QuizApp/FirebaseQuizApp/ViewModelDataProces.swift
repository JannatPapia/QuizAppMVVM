//
//  ViewModelDataProces.swift
//  QuizApp
//
//  Created by Jannatun Nahar Papia on 22/7/22.
//

//import Foundation


//struct BIoMenViewModel {
//
//     var set = Int()
//     var rewardDOnem = Bool()
//     var title = String()
//     var subtitle = String()
//     var isQuiz = Bool()
//     var optionChosed = 0
//     var storeManager = Bool()
//     var showingActionSheet = Bool()
//     var show = Bool()
//     var showOnbrodingScreen = Bool()
//   }

//class ViewModelDateProcess: ObservableObject {
//
//
//
//    @Published var selectedIndexOfItem = String()
//
// //   @Published var set = BIoMenViewModel()
//
// //   @Published var itemOpinions = [OpinionModelfire]()
//    @Published var itemQuizs = [QuizModelfire]()
  
    
//    func addAnxietyDepration(){
//
//        if  !AppAPI.margelearingView {
//             ApiTrival().loadData(fileName: "citizenshiptestUSLearn") { [self] (items) in  //TStorage.wordFocus
//                itemOpinions = items
//             }
//        }
//    }

//    func addItem(){
//        fireQuestionViewModel().loadData(fileName: "data") { [self] (items) in  //TStorage.wordFocus
//          //  itemQuizs = items.sorted(by: { $0.sl! < $1.sl! })
//
//            if  AppAPI.margelearingView{
//
////                var quizToOpinion = []
////
//////                for item in itemQuizs{
//////
//////                    quizToOpinion.append(OpinionModelfire(kidsDid: item.question, opinion1Posivite100Parcent: item.answer, opinion2Posivite50Parcent: nil, opinion3Nagative50Parcent: nil, opinion4Nagative100Parcent: nil, opinion5Nagative150Parcent: nil, opinion5Nagative200Parcent: nil))
//////                }
////
////                self.itemOpinions = quizToOpinion
//
//            }
//        }
//
//    }
    
    

//    func getthetitle()->String{
//
//        if set.isQuiz {
//            return  "Alabama US State"
//        }else{
//
//            return "Alabama Permit Practice"
//        }
//    }
//    func gettheSubtile()->String{
//
//        if set.isQuiz {
//            return "DMV Permit Practice"
//        }else{
//            return "Learn DMV practice qustion"
//        }
//    }
//
//    func getthetitle(index : Int)->String{
//
//        var title = "Learn Q"
//
//        if set.isQuiz {
//            title = "Round"
//
//        }
//
//        if index == 0 {
//            return   "\(title)\n\(index + 1 ) - \((index + 1) * 10)"
//        }else{
//            return   "\(title)\n\(index * 10  + 1) - \((index + 1) * 10)"
//        }
//
//    }
//
//
//
//
//
//
//    func requestIDFA() {
//
//        //IMPORTANT: wait for 1 second to display another alert
//               DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//                //   if #available(iOS 14, *) {
//      ATTrackingManager.requestTrackingAuthorization(completionHandler: { status in
//        // Tracking authorization completed. Start loading ads here.
//        // loadAd()
//      })
//            //       }
//               }
//    }
//
//    func rateApp() {
//
//
//        if let scene = UIApplication.shared.connectedScenes.first(where: { $0.activationState == .foregroundActive }) as? UIWindowScene {
//                  SKStoreReviewController.requestReview(in: scene)
//              }
//    }
//
//}
//
//
//
//struct AppAPI {
//   static let margelearingView = true
//}



