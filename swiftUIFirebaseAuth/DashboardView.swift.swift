//
//  DashboardView.swift.swift
//  swiftUIFirebaseAuth
//
//  Created by Ashton Hess on 12/1/21.
//

import SwiftUI

struct DashboardView_swift: View {
    
    
    @State var selectedIndex = 0
    
    let icons = [
        "house",
        "gear",
        "plus",
        "lasso",
        "message"
    ]
    
    
    var body: some View {
        
        VStack{
            ZStack{
                switch selectedIndex{
                case 0:
                    NavigationView{
                        VStack{
                            Text("First Screen")
                        }
                        .navigationTitle("Home")
                    }
                case 1:
                    NavigationView{
                        VStack{
                            Text("Second Screen")
                        }
                        .navigationTitle("Settings")
                    }
                case 2:
                    NavigationView{
                        VStack{
                            Text("Third Screen")
                        }
                        .navigationTitle("Add")
                    }
                case 3:
                    NavigationView{
                        VStack{
                            Text("Fourth Screen")
                        }
                        .navigationTitle("Edit")
                    }
                default:
                    NavigationView{
                        VStack{
                            Text("Fifth Screen")
                        }
                        .navigationTitle("Message")
                    }
                }
            }
            
            Spacer()
            
            Divider()
            
            HStack{
                
                ForEach(0..<5, id: \.self){ number in
                    
                    Spacer()
                    
                    Button(action:{
                        self.selectedIndex = number
                    }, label: {
                        Image(systemName: icons[number])
                            .font(.system(size:25,
                                          weight: .regular,
                                          design: .default))
                            .foregroundColor(.white)
                    })
                    
                    Spacer()
                }
            }
        }
//        TabView{
//            Text("Social")
//                .tabItem{
//                    Text("Social")
//                        .foregroundColor(SwiftUI.Color.black)
//
//                }
//            Text("Friends")
//                .tabItem{
//                    Text("Friends")
//                }
//        }
//        ZStack{
//            Color.blue.ignoresSafeArea()
//            Text("DashboardView")
//                .font(Font.largeTitle)
//
//        }
        
    }
}

struct DashboardView_swift_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView_swift()
    }
}
