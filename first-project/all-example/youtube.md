//
//  ContentView.swift
//  Shared
//
//  Created by dani prayogi on 23/02/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Home()
        ZStack{
            TabView{
                Home()
                    .tabItem{
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                
                Home()
                    .tabItem{
                        Image(systemName: "paperplane.fill")
                        Text("Explore")
                    }
                
                Home()
                    .tabItem{
                        Image(systemName: "tray.fill")
                        Text("Subcription")
                    }
                
                Home()
                    .tabItem{
                        Image(systemName: "envelope.fill")
                        Text("Inbox")
                    }
                
                Home()
                    .tabItem{
                        Image(systemName: "play.rectangle.fill")
                        Text("Colection")
                    }
            }.accentColor(.red)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home: View{
    var body: some View{
        NavigationView(){
            Konten()
                .navigationBarItems(
                    leading:
                        HStack{
                            Button(action: {print("haloo....")}){
                                Image("bg").resizable().renderingMode(.original).frame(width: 90, height: 20)
                            }
                        },
                    trailing:
                        HStack(spacing: 10){
                            Button(action: {print("oyuy...")}){
                                Image(systemName: "tray.full").foregroundColor(Color.secondary)
                            }
                            Button(action: {print("oyuy...")}){
                                Image(systemName: "video.fill").foregroundColor(Color.secondary)
                            }
                            Button(action: {print("oyuy...")}){
                                Image(systemName: "magnifyingglass").foregroundColor(Color.secondary)
                            }
                            Button(action: {print("oyuy...")}){
                                Image("bg").resizable().renderingMode(.original).frame(width: 30, height: 30).clipShape(Circle())
                            }
                        }
                )
        }
    }
}

struct Konten: View{
    var body: some View{
        List{
           CellKonten(image: "bg", profile: "bg", judul: "hallo", description: "deskripsi nya gaess dfoshfhoaihsfoiiihiioh", durasi: "10:30")
        }
    }
}

struct CellKonten: View{
    
    var image: String
    var profile: String
    var judul: String
    var description: String
    var durasi: String
    
    var body: some View{
        VStack{
            ZStack(alignment: .bottomTrailing){
                Image(image).resizable().aspectRatio(contentMode: .fill)
                
                Text(durasi).padding(.all, 5).foregroundColor(Color.white).background(Color.black).cornerRadius(5).font(.caption).padding(.horizontal,5)
            }
            HStack(spacing: 20){
                Image(profile).resizable().renderingMode(.original).frame(width: 30, height: 30).clipShape(Circle())
                VStack(alignment: .leading){
                    Text(judul).font(.headline)
                    HStack{
                        Text(description).font(.caption)
                    }
                }
//                    Spacer()
                Image(systemName: "list.bullet")
            }
        }
    }
}
