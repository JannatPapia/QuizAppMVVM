////
////  QuestionVM.swift
////  QuizApp
////
////  Created by Jannatun Nahar Papia on 22/7/22.
////
//import SwiftUI
//
//struct HomeView : View {
//    
//     @State var premiumPresent = false
//     @State var learnResurce = false
//     @State var lovePresent = false
//    @State var isShowQuiz : Bool = false
//    @State var correct = 0
//    @State var wrong = 0
//    @State var answered = 0
//    @StateObject var viewModel = fireQuestionViewModel()
//
//    func getDestination(itemText: String) -> AnyView {
//
//
//        let currentRound =   HomeGrid.eachRoundQuiz * Int(viewModel.selectedIndexOfItem)!
//
//        if viewModel.set.isQuiz{
//            return AnyView(QA(correct: $correct, wrong: $wrong, answered: $answered, set: viewModel.selectedIndexOfItem, quizItem: Array(viewModel.questions[(currentRound - HomeGrid.eachRoundQuiz)..<currentRound])))
//        }else{
//            return AnyView(getDestination(itemText: "nazmul"))
//        }
//    }
// 
//    var body: some View {
//        
//        VStack{
//            
//            
//            VStack{
//                FastingHeader(viewModel: self.viewModel, title: viewModel.getthetitle(), subTitle: viewModel.gettheSubtile())
//                    .onReceive(NotificationCenter.default.publisher(for: NSNotification.ImageClick))
//                { obj in
//                    // Change key as per your "userInfo"
//                    if let userInfo = obj.userInfo, let info = userInfo["info"] {
//                        print(info)
//                        
//                        viewModel.set.show = true
//                    }
//                }
//                .actionSheet(isPresented: $viewModel.set.showingActionSheet) {
//                    ActionSheet(title: Text("Premiume Access"), message: Text("Upgrade premium or Watch a Reward video to access premium items"), buttons: [
//                        
//                        .default(Text("Watch Video Ads")) {
//                            
//                            self.rewardAd.showAd(rewardFunction: { status in
//                                print("Give Reward \(status)")
//                                
//                                if status < 10 {
//                                    
//                                    alertItem = AlertContext.noAdsFound
//                                }
//                                
//                            })
//                            
//                        },
//                        .default(Text("Upgrade Premium")) {
//                 //           premiumPresent = true
//                            
//                        },
//                        .cancel()
//                    ])
//                }
//                //}.padding([.leading,.trailing,.bottom], 20)
//            }
//       //     .padding(.top, safearea?.top ?? 0 + 20)
//            
//            ScrollView{
//                ZStack{
//                    VStack{
//                        
//                        Spacer(minLength: 10)
//                        
//                        QuizHomeView(viewModel: viewModel, storeManager: self.storeManager)
//                        
//                        
//                        Spacer(minLength: 0)
//                            .padding()
//                    }
//                    .onLoad(perform: {  // swift life cycle
//                        viewModel.set.isQuiz = true //
//                        viewModel.addItem()
//                        viewModel.addAnxietyDepration()
//                        viewModel.requestIDFA()
//                    })
//                    
//                    .fullScreenCover(isPresented: $viewModel.set.show, content:{
//                        getDestination(itemText: viewModel.selectedIndexOfItem)
//                    })
//                    
////
////                    .alert(item: $alertItem, content: { alertItemOk in
////
////                        Alert(title: alertItemOk.title, message: alertItemOk.message, primaryButton: .default(alertItemOk.buttonText, action:{
////
////                            if alertItemOk.alertIdnetiy == .noAdsFound{
////                                premiumPresent = true
////                            }
////
////                        }), secondaryButton: .cancel()
////
////
////
////                        )
////
////
////                    })
////
////                    .fullScreenCover(isPresented: $premiumPresent, content:{
////                        StoreBuyView(isPresented: $premiumPresent ,storeManager: viewModel)
////                                            })
////                    .fullScreenCover(isPresented: $viewModel.set.showOnbrodingScreen, content:{
////                        OnboardingView(fromPrenst: $viewModel.set.showOnbrodingScreen)
////                    })
//                    
//                }
//                
//            }
//            
//            
//            
//            
//            HStack{
//                Spacer()
//                
////                Button(action: {
////                    withAnimation {
////                        viewModel.rateApp()
////                    }
////                }, label: {
////                    ZStack (alignment: .trailing) {
////
////                        Text("Review Us")
////                            .font(.system(size: 20, weight: .regular))
////                            .foregroundColor(.green)
////
////                    }
////                })
////                Button(action: {
////                    withAnimation {
////                        viewModel.rateApp()
////                    }
////                }, label: {
////                    ZStack {
////                        RoundedRectangle(cornerRadius: 10)
////                            .fill(Color.green)
////                            .frame(width: 45, height: 45)
////                            .rotationEffect(.degrees(40))
////
////                        Image(systemName: "app")
////                            .font(.system(size: 20, weight: .bold))
////                            .foregroundColor(.white)
////                    }
////                })
//                 //   .padding([.leading], 5)
//                
////                refreshdButton(imageName: "heart.fill")
////
////                    .padding([.trailing,.leading], 20)
////                    .fullScreenCover(isPresented: self.$lovePresent) {
////                        MathPlayingHistoryView(isPresented: $lovePresent).environment(\.managedObjectContext, persistenceController.container.viewContext)
////                    }
////                    .onTapGesture{
////                        withAnimation(.spring(response:0.2,dampingFraction:0.5,blendDuration:0)){
////                            lovePresent = true
////                        }
////                    }
//                
//            }
//  //          .padding(.bottom,  safearea?.bottom ?? 0 + 20)
//        }
//        .onLoad{
//          viewModel.set.isQuiz = true //
//            viewModel.loadData(set: "")
//            }
//        }
////        .background(Color.white)
//  //      .ignoresSafeArea(.all)
//        
//    }
//
//
//
//
//struct FastingHeader : View {
//    @ObservedObject var viewModel : fireQuestionViewModel
//     var title : String
//     var subTitle:String
//
//     var body: some View {
//
//         HStack {
//             VStack(alignment: .leading, spacing: 3) {
//                 Text(title)
//                     .font(.title.bold())
//                     .foregroundColor(Color.blue)
//
//
//                 Text(subTitle)
//                     .fontWeight(.semibold)
//                     .foregroundColor(Color.red)
//
//             }
//             .padding([.top,.leading],20)
//             Spacer(minLength: 10)
//
//             Button {
//                 viewModel.set.showOnbrodingScreen = true
//             } label: {
//                 // Button with badge....
//                 Image(systemName: "bell")
//                                      .font(.title2)
//                                      .foregroundColor(.gray)
//                                      .overlay(
//                                          Text("2")
//                                              .font(.caption2.bold())
//                                              .foregroundColor(.white)
//                                              .padding(8)
//                                              .background(Color.red)
//                                              .clipShape(Circle())
//                                              .offset(x: 11, y: -12),
//                                          alignment: .topTrailing
//                                      )
//                                      .offset(x: -15)
////                                      .padding(15)
////                                      .background(Color.white)
////                                      .clipShape(Circle())
//                              }
//
//                          }
//
//                      }
//
//                  }
//
//
//
////struct HMView: View {
////    @StateObject var viewModel = fireQuestionViewModel()
////    @State var set = "Round_1"
////    var quizItem : [Qustion]
////    //For analytic
////    @State var correct = 0
////    @State var wrong = 0
////    @State var answered = 0
////    @State var show = false
////
////    func getDestination(itemText: String) -> AnyView {
////
////
////        let currentRound =   HomeGrid.eachRoundQuiz * Int(viewModel.selectedIndexOfItem)!
////
////        if viewModel.set.isQuiz{
////            return AnyView(QA(correct: $correct, wrong: $wrong, answered: $answered, set: viewModel.selectedIndexOfItem, quizItem: Array(viewModel.questions[(currentRound - HomeGrid.eachRoundQuiz)..<currentRound])))
//////            return AnyView(QA(set: viewModel.selectedIndexOfItem,correct: $correct, quizItem: Array( viewModel.questions[(currentRound - HomeGrid.eachRoundQuiz)..<currentRound])))
////        }else{
////            return AnyView(getDestination(itemText: "nazmul"))
////
////       //     return AnyView(LearingView(isAnxiety: $viewModel.set.show, trival: Array( viewModel.itemOpinions[(currentRound - HomeGrid.eachRoundQuiz)..<currentRound]), set: viewModel.selectedIndexOfItem, bg: [QUIZConfig.mainBackgroundImage]))
////        }
////    }
////    
////    var body: some View {
////ScrollView{
////    ZStack{
////        VStack{
////            
////       //     Spacer(minLength: 10)
////            firebaseHome()
////                .sheet(isPresented: $show, content: {
////             
////                         QA(correct: $correct, wrong: $wrong, answered: $answered, set: set, quizItem: [])
////                     })
//            
//          //  firebaseHome(show: $show, viewModel: viewModel, set: <#T##String#>, correct: <#T##Int#>, wrong: <#T##Int#>, answered: <#T##Int#>)
//            
//            
////            Spacer(minLength: 0)
////                .padding()
////        }
////                .onAppear(perform: {
////                    viewModel.loadData(set :  "")
////
////
//////                })
////        .onLoad(perform: {  // swift life cycle
////            viewModel.set.isQuiz = true //
////            viewModel.loadData(set :  "")
////        })
////
////        .fullScreenCover(isPresented: $viewModel.set.show, content:{
////            getDestination(itemText: viewModel.selectedIndexOfItem)
//////        })
//////    }
////}
////}
////}
//
////
//////
//////  HelperDelegate.swift
//////  WordForLearn
//////
//////  Created by MacBook Air M1 on 23/7/21.
//////
////
////import SwiftUI
////import AVFoundation
////import MobileCoreServices
////
////
////class DelegetStorage : ObservableObject {
////
////    var resut = 0
////
////
////    @Published var wish : Bool = false
////
////    var sound: AVAudioPlayer!
////
////
////    @Published var questions : [FirebaseQuestion] = []
////
////    func getQuestions(set : [QuizModelfire], gameLavel : String){
////
////        for item in set {
////            //swape= ...
////            var postions = [item.optionA ?? "",item.optionB ?? "",item.optionC ?? ""]
////
////            print("postion \(postions)")
////
////            postions.shuffle()
////
////            questions.append(FirebaseQuestion(question: item.question ?? "" , optionA: postions[0], optionB:  postions[1], optionC:  postions[2], optionD:  item.optionD ?? "", answer:  item.answer ?? ""))
////        }
////
////
////        questions.reverse()
////    }
////
////
////    func progress(answered : Int) -> CGFloat {
////        let fraction = CGFloat(answered) /  CGFloat(questions.count)
////        let width = UIScreen.main.bounds.width - 30
////        return fraction * width
////    }
//    
////  func  getImage()->String{
////
////      if correct <= 2 {
////          return "cry"
////      }else if correct <= 4 {
////          return "worried"
////      }else if correct <= 6 {
////          return "angry"
////      }else if correct <= 8  {
////          return "cool"
////      }else{
////
////          return "amazed"
////      }
////
////
////    }
//
//
////    func playSound(filename :String ) {
////
////            if let path = Bundle.main.path(forResource: filename, ofType: "wav") {
////                do {
////                    sound = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
////                    print("Playing sound")
////
////                    sound.play()
////                } catch {
////                    print( "Could not find file")
////                }
////            }
////        }
//    
//    
////    func saveItem(tite: String,subtitle : String ,content : String , wordFocus : String ){
////
//////        let scene = UIApplication.shared.connectedScenes.first
//////        if let sd : SceneDelegate = (scene?.delegate as? SceneDelegate) {
//////           var viewContext = sd.persistenceController.container.viewContext
//////
//////            let newItem = Favourite(context: viewContext)
//////        newItem.title = tite
//////        newItem.chipTitle = wordFocus //modelProcess.footnote
//////        newItem.id = UUID()
//////        newItem.subTitle = subtitle
//////        newItem.referenceId = ""
//////        newItem.datetime = Date()
//////        newItem.content = content
//////          //  TStorageAlex.wordFocus = wordFocus
//////           do {
//////                try viewContext.save()
//////                print("Order saved.")
//////           // isPresented = false
//////            } catch {
//////                print(error.localizedDescription)
//////            }
//////        }
////
////
////    }
////
////    func delyLife(isCorrect : Bool = false , level : String,mood:String) {
////      //  counter = 30
////        if isCorrect {
//////            correct += 1
////
////        }else{
//////            wrong += 1
//////            self.isCorrect = false
////            playSound(filename:"correct" )
////        }
//
//        
//      //  if correct + wrong == 10 {
//            
//           
////            if correct > 6 {
////                var star = "⭐"
////
////                for _ in 7...correct {
////                    star.append("⭐")
////                }
////
////              //  setMathLavel  (value: 1)
////                saveItem(tite: "▲ Level Progress \(star)", subtitle: "✔️\(correct) ❌\(wrong)", content: "Round \(level)", wordFocus: mood)
////
////                playSound(filename:"correct2" )
////
////            }else{
////                //setMathLavel(value: 0)
////                saveItem(tite: "Keep focus", subtitle: "✔️ \(correct) correct  ❌ \(wrong) wrong", content: "Round \(level)", wordFocus: mood)
////                self.correct = 0
////                self.wrong = 0
////            }
//               // lavel =  getMathLavel()
//         
////    }
//    
//   
//
//
//    
//   
////
////    @Published var counter = 30
////    @Published var timer = Timer()
////
////    @Published var isCorrect : Bool = true
//////    @Published var selectedImages : [Img] = []
////
////    @Published var mathFunction :Int  = 0
////
////    @Published var value1 : Int = 0
////
////    @Published var value2 :Int  = 0
////
////    @Published var correct : Int = 0
////
////    @Published var wrong :Int  = 0
////
////   // @Published var lavel :Int  = getMathLavel()
////
////    @Published var result :String  = "?"
////    @Published var countDonwResult :String  = "00"
//    
////    func functionSimble()->String{
////
////        return "?"
////    }
//    
// 
//
//    
////    func RelaodMath(){
////
////    }
//    
////    // called every time interval from the timer
////      @objc  func timerAction() {
////            counter -= 1
////            if counter == 0 {
////                counter = 30
////               /// self.delyLife()
////            }
////
////          countDonwResult = "\(String(format: "%02d", counter))"
////        }
//
//
//
//
////struct Img : Identifiable {
////    var id : Int
////    var image : String
////}
