//
//  ContentView.swift
//  Hacker News
//
//  Created by Bahadır Tarcan on 2.10.2022.
//

import SwiftUI
import WebKit

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
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
    
   
    
    
   
}
