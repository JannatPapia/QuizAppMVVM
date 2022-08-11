//
//  QuestionVM.swift
//  QuizApp
//
//  Created by Jannatun Nahar Papia on 22/7/22.
//
import SwiftUI


//struct HMView: View {
//    @StateObject var viewModel = fireQuestionViewModel()
//    @State var set = "Round_1"
//    var quizItem : [Qustion]
//    //For analytic
//    @State var correct = 0
//    @State var wrong = 0
//    @State var answered = 0
//    @State var show = false
//
//    func getDestination(itemText: String) -> AnyView {
//
//
//        let currentRound =   HomeGrid.eachRoundQuiz * Int(viewModel.selectedIndexOfItem)!
//
//        if viewModel.set.isQuiz{
//            return AnyView(QA(correct: $correct, wrong: $wrong, answered: $answered, set: viewModel.selectedIndexOfItem, quizItem: Array(viewModel.questions[(currentRound - HomeGrid.eachRoundQuiz)..<currentRound])))
////            return AnyView(QA(set: viewModel.selectedIndexOfItem,correct: $correct, quizItem: Array( viewModel.questions[(currentRound - HomeGrid.eachRoundQuiz)..<currentRound])))
//        }else{
//            return AnyView(getDestination(itemText: "nazmul"))
//
//       //     return AnyView(LearingView(isAnxiety: $viewModel.set.show, trival: Array( viewModel.itemOpinions[(currentRound - HomeGrid.eachRoundQuiz)..<currentRound]), set: viewModel.selectedIndexOfItem, bg: [QUIZConfig.mainBackgroundImage]))
//        }
//    }
//    
//    var body: some View {
//ScrollView{
//    ZStack{
//        VStack{
//            
//       //     Spacer(minLength: 10)
//            firebaseHome()
//                .sheet(isPresented: $show, content: {
//             
//                         QA(correct: $correct, wrong: $wrong, answered: $answered, set: set, quizItem: [])
//                     })
            
          //  firebaseHome(show: $show, viewModel: viewModel, set: <#T##String#>, correct: <#T##Int#>, wrong: <#T##Int#>, answered: <#T##Int#>)
            
            
//            Spacer(minLength: 0)
//                .padding()
//        }
//                .onAppear(perform: {
//                    viewModel.loadData(set :  "")
//
//
////                })
//        .onLoad(perform: {  // swift life cycle
//            viewModel.set.isQuiz = true //
//            viewModel.loadData(set :  "")
//        })
//
//        .fullScreenCover(isPresented: $viewModel.set.show, content:{
//            getDestination(itemText: viewModel.selectedIndexOfItem)
////        })
////    }
//}
//}
//}

//
////
////  HelperDelegate.swift
////  WordForLearn
////
////  Created by MacBook Air M1 on 23/7/21.
////
//
//import SwiftUI
//import AVFoundation
//import MobileCoreServices
//
//
//class DelegetStorage : ObservableObject {
//
//    var resut = 0
//
//
//    @Published var wish : Bool = false
//
//    var sound: AVAudioPlayer!
//
//
//    @Published var questions : [FirebaseQuestion] = []
//
//    func getQuestions(set : [QuizModelfire], gameLavel : String){
//
//        for item in set {
//            //swape= ...
//            var postions = [item.optionA ?? "",item.optionB ?? "",item.optionC ?? ""]
//
//            print("postion \(postions)")
//
//            postions.shuffle()
//
//            questions.append(FirebaseQuestion(question: item.question ?? "" , optionA: postions[0], optionB:  postions[1], optionC:  postions[2], optionD:  item.optionD ?? "", answer:  item.answer ?? ""))
//        }
//
//
//        questions.reverse()
//    }
//
//
//    func progress(answered : Int) -> CGFloat {
//        let fraction = CGFloat(answered) /  CGFloat(questions.count)
//        let width = UIScreen.main.bounds.width - 30
//        return fraction * width
//    }
    
//  func  getImage()->String{
//
//      if correct <= 2 {
//          return "cry"
//      }else if correct <= 4 {
//          return "worried"
//      }else if correct <= 6 {
//          return "angry"
//      }else if correct <= 8  {
//          return "cool"
//      }else{
//
//          return "amazed"
//      }
//
//
//    }


//    func playSound(filename :String ) {
//
//            if let path = Bundle.main.path(forResource: filename, ofType: "wav") {
//                do {
//                    sound = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
//                    print("Playing sound")
//
//                    sound.play()
//                } catch {
//                    print( "Could not find file")
//                }
//            }
//        }
    
    
//    func saveItem(tite: String,subtitle : String ,content : String , wordFocus : String ){
//
////        let scene = UIApplication.shared.connectedScenes.first
////        if let sd : SceneDelegate = (scene?.delegate as? SceneDelegate) {
////           var viewContext = sd.persistenceController.container.viewContext
////
////            let newItem = Favourite(context: viewContext)
////        newItem.title = tite
////        newItem.chipTitle = wordFocus //modelProcess.footnote
////        newItem.id = UUID()
////        newItem.subTitle = subtitle
////        newItem.referenceId = ""
////        newItem.datetime = Date()
////        newItem.content = content
////          //  TStorageAlex.wordFocus = wordFocus
////           do {
////                try viewContext.save()
////                print("Order saved.")
////           // isPresented = false
////            } catch {
////                print(error.localizedDescription)
////            }
////        }
//
//
//    }
//
//    func delyLife(isCorrect : Bool = false , level : String,mood:String) {
//      //  counter = 30
//        if isCorrect {
////            correct += 1
//
//        }else{
////            wrong += 1
////            self.isCorrect = false
//            playSound(filename:"correct" )
//        }

        
      //  if correct + wrong == 10 {
            
           
//            if correct > 6 {
//                var star = "⭐"
//
//                for _ in 7...correct {
//                    star.append("⭐")
//                }
//
//              //  setMathLavel  (value: 1)
//                saveItem(tite: "▲ Level Progress \(star)", subtitle: "✔️\(correct) ❌\(wrong)", content: "Round \(level)", wordFocus: mood)
//
//                playSound(filename:"correct2" )
//
//            }else{
//                //setMathLavel(value: 0)
//                saveItem(tite: "Keep focus", subtitle: "✔️ \(correct) correct  ❌ \(wrong) wrong", content: "Round \(level)", wordFocus: mood)
//                self.correct = 0
//                self.wrong = 0
//            }
               // lavel =  getMathLavel()
         
//    }
    
   


    
   
//
//    @Published var counter = 30
//    @Published var timer = Timer()
//
//    @Published var isCorrect : Bool = true
////    @Published var selectedImages : [Img] = []
//
//    @Published var mathFunction :Int  = 0
//
//    @Published var value1 : Int = 0
//
//    @Published var value2 :Int  = 0
//
//    @Published var correct : Int = 0
//
//    @Published var wrong :Int  = 0
//
//   // @Published var lavel :Int  = getMathLavel()
//
//    @Published var result :String  = "?"
//    @Published var countDonwResult :String  = "00"
    
//    func functionSimble()->String{
//
//        return "?"
//    }
    
 

    
//    func RelaodMath(){
//
//    }
    
//    // called every time interval from the timer
//      @objc  func timerAction() {
//            counter -= 1
//            if counter == 0 {
//                counter = 30
//               /// self.delyLife()
//            }
//
//          countDonwResult = "\(String(format: "%02d", counter))"
//        }




//struct Img : Identifiable {
//    var id : Int
//    var image : String
//}
