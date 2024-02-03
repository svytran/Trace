import SwiftUI

struct FormView2: View {
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
                            Spacer()
                            Spacer()
                            ZStack {
                                Spacer()
                                Circle()
                                    .padding(.top)
                                    .foregroundColor(.white)
                                    .frame(width: 85.0, height: 85.0)
                                Image(systemName: "list.clipboard.fill")
                                    .resizable()
                                    .frame(width: 30.0, height: 40.0)
                            }.padding(.bottom)
                            
                            Text("What kind of item\ndid you lose?")
                                .font(.title)
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                                .padding(.bottom)
                            
                            Spacer()
                            
                            ScrollView(.vertical) {
                                VStack {
                                    Button(action: {
                                        print("Button tapped!")
                                    }) {
                                        Rectangle()
                                            .frame(width: 340, height: 65)
                                            .foregroundColor(.white)
                                            .cornerRadius(10)
                                            .overlay(
                                                Text("Electronics")
                                                    .foregroundColor(.black)
                                            )
                                    }
                                    
                                    Button(action: {
                                        print("Button tapped!")
                                    }) {
                                        Rectangle()
                                            .frame(width: 340, height: 65)
                                            .foregroundColor(.white)
                                            .cornerRadius(10)
                                            .overlay(
                                                Text("Clothing")
                                                    .foregroundColor(.black)
                                            )
                                    }
                                    Button(action: {
                                        print("Button tapped!")
                                    }) {
                                        Rectangle()
                                            .frame(width: 340, height: 65)
                                            .foregroundColor(.white)
                                            .cornerRadius(10)
                                            .overlay(
                                                Text("Jewelry")
                                                    .foregroundColor(.black)
                                            )
                                    }
                                    Button(action: {
                                        print("Button tapped!")
                                    }) {
                                        Rectangle()
                                            .frame(width: 340, height: 65)
                                            .foregroundColor(.white)
                                            .cornerRadius(10)
                                            .overlay(
                                                Text("Documents/IDs")
                                                    .foregroundColor(.black)
                                            )
                                    }
                                    Button(action: {
                                        print("Button tapped!")
                                    }) {
                                        Rectangle()
                                            .frame(width: 340, height: 65)
                                            .foregroundColor(.white)
                                            .cornerRadius(10)
                                            .overlay(
                                                Text("Others")
                                                    .foregroundColor(.black)
                                            )
                                    }
                                }.frame(maxHeight: 200)
                            }
                            
                            
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    FormView2()
}
