import SwiftUI

struct ContentView: View {
    var body: some View {
       
            TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
                HomeView()
                    .tabItem {
                        Image(systemName: "house")
                            .foregroundColor(Color.black)
                    }
                FormView()
                    .tabItem {
                        Image(systemName: "list.clipboard.fill")
                            .foregroundColor(Color.black)
                    }
                MessageView()
                    .tabItem {
                        Image(systemName: "message")
                            .foregroundColor(Color.black)
                    }
                MapView()
                    .tabItem {
                        Image(systemName: "map")
                            .foregroundColor(Color.black)
                    }
                ProfileView()
                    .tabItem {
                        Image(systemName: "person")
                            .foregroundColor(Color.black)
                    }
            }
        
    }
}

#Preview {
    ContentView()
}
