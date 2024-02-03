import SwiftUI

struct HomeView: View {
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
                        .frame(height: 150.0)
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
                                Image(systemName: "shoeprints.fill")
                                    .resizable()
                                    .frame(width: 30.0, height: 32.0)
                            }
                    
                            Text("Find it easier")
                                .font(.largeTitle)
                                .fontWeight(.light)
                            Spacer()
                            Spacer()
                    
                            VStack(alignment: .leading) { // Align VStack content to the leading edge (left)
                                           HStack {
                                               Image(systemName: "checkmark.circle")
                                               Text("Send it in a request form")
                                           }
                                           VStack(alignment: .leading) { // Align VStack content to the leading edge (left)
                                               HStack {
                                                   Image(systemName: "checkmark.circle")
                                                   Text("Wait for a message")
                                               }
                                               .padding(.top)
                                               HStack {
                                                   Image(systemName: "checkmark.circle")
                                                   Text("Map yourself there")
                                               }
                                               .padding(.vertical)
                                               
                                               
                                               Text("It's that easy.")
                                                   .padding(.top)
                                                   .padding(.top)
                                                   .padding(.top)
                                           }
                                       }
                            Spacer()
                            Spacer()
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
    HomeView()
}
