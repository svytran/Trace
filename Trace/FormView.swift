import SwiftUI

struct FormView: View {
    var body: some View {
        // ZStack for entire UI
        ZStack {
            Color(.systemCyan)
                .ignoresSafeArea()
            
            //ZStack for info card layering
            ZStack {
                
                //VStack for spacing
                VStack {
                    
                    //Spacer
                    Rectangle()
                        .frame(height: 75.0)
                        .foregroundColor(.clear)
                        .background(Color(.clear))
                        .ignoresSafeArea()
                    
                    //Infor Card Stack
                    ZStack {
                        Rectangle()
                          .foregroundColor(.clear)
                          .background(Color(.systemGray5))
                          .cornerRadius(35)
                          .ignoresSafeArea()
                        VStack { // group info card contents
                            Spacer()
                            ZStack {
                                Circle()
                                    .foregroundColor(.white)
                                    .frame(width: 85.0, height: 85.0)
                                Image(systemName: "list.clipboard.fill")
                                    .resizable()
                                    .frame(width: 30.0, height: 40.0)
                            }.padding(.bottom)
                            Text("Lost something?\nDon't panic!\nWe'll help you find it.")
                                .font(.title)
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                            Spacer()
                            Text("Let's notify the local\nlost-and-found's about\nyour lost item.")
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                            Spacer()
                            Spacer()
                            Spacer()
                            Button(action: {
                                print("Button tapped!")
                            }) {
                                Rectangle()
                                    .frame(width: 340, height: 65)
                                    .foregroundColor(Color(red: 0.46, green: 0.75, blue: 0.97))
                                    .cornerRadius(10)
                                    .overlay(
                                        Text("Let's get started")
                                            .foregroundColor(.white)
                                    )
                            }
                            Spacer()
                            Spacer()
                            
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    FormView()
}
