//
//  ContentView.swift
//  Hacker News
//
//  Created by Bahadır Tarcan on 2.10.2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                
                Text(post.title)
                    
                    
            }
        
        .navigationBarTitle("Hacker News")
        
        }
        
        .onAppear {
            self.networkManager.fetchData()
                
        }
    }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//let posts = [
    
 //   Post(id: "1", tittle: "Hello"),
   // Post(id: "2", tittle: "Bonjour"),
  //  Post(id: "3", tittle: "Hola")

    

//]
