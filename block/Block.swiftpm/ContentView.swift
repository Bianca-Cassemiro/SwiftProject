import SwiftUI



struct ContentView: View {
    @State private var shouldShowHistory = false
    var body: some View {
        NavigationView {
            ZStack{
                Color.init(uiColor: UIColor(red: 0.97, green: 1.00, blue: 0.89, alpha: 1.00))
                    .ignoresSafeArea()
                VStack {
                   
                    HStack(spacing: 0){
                        Text("B")
                            .font(.system(size: 170))
                            .foregroundColor(Color(uiColor: UIColor(red: 0.34, green: 0.70, blue: 0.81, alpha: 1.00)))
                            .bold()
                        Text("l")
                            .font(.system(size: 170))
                            .foregroundColor(Color(uiColor: UIColor(red: 1.00, green: 0.74, blue: 0.74, alpha: 1.00)))
                            .bold()
                        Text("o")
                            .font(.system(size: 170))
                            .foregroundColor(Color(uiColor: UIColor(red: 0.34, green: 0.70, blue: 0.81, alpha: 1.00)))
                            .bold()
                        Text("c")
                            .font(.system(size: 170))
                            .foregroundColor(Color(uiColor: UIColor(red: 0.96, green: 0.80, blue: 0.38, alpha: 1.00)))
                            .bold()
                        Text("k")
                            .font(.system(size: 170))
                            .foregroundColor(Color(uiColor: UIColor(red: 1.00, green: 0.74, blue: 0.74, alpha: 1.00)))
                            .bold()
                    }.padding(.top,80)
                    Spacer()
                    VStack{
                        NavigationLink(destination: History(), isActive: $shouldShowHistory) {
                                                   EmptyView()
                                               }
                        Button(action:{
                            self.shouldShowHistory = true
                        } , label:{
                            Image("Block")
                                .resizable()
                                .frame(width: 330,height: 270)
                            .padding()}
                        )
                        Text("Tap me to start")
                            .font(.system(size: 45))
                            .foregroundColor(Color(uiColor: UIColor(red: 0.34, green: 0.70, blue: 0.81, alpha: 1.00)))
                        RoundedRectangle(cornerRadius: 25)
                            .fill(.white)
                            .frame(width: 400, height: 110)
                            .shadow(color:.gray,radius: 8 , x: 7, y: 5)
                            .overlay(content: {
                                Text("A journey of knowledge about blockchain")
                                    .font(.system(size: 30))
                                    .multilineTextAlignment(.center)                             .foregroundColor(Color(uiColor: UIColor(red: 0.19, green: 0.19, blue: 0.19, alpha: 1.00)))
                                
                            })
                    }.padding(.bottom,100)
                }

            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
        
}
