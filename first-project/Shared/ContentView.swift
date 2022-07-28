//
//  ContentView.swift
//  Shared
//
//  Created by dani prayogi on 23/02/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            Form{
                Section(){
                    NavigationLink(destination: About()){
                        HStack{
                            Image("bg")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                            
                            VStack(alignment:.leading){
                                Text("Dani Code").font(.headline)
                                Text("Programmer").font(.caption)
                            }
                        }
                        .padding(.horizontal, 5)
                    }
                }
                
                Section(header: Text("Pengaturan Umum")){
                    NavigationLink(destination: About()){
                        HStack(spacing: 20){
                            Image(systemName: "star.fill")
                                .frame(width: 30, height: 30)
                                .background(Color.orange)
                                .cornerRadius(10)
                                .foregroundColor(Color.white)
                            
                            Text("Pesan Berbintang")
                            
                        }
                    }
                    
                    NavigationLink(destination: About()){
                        HStack(spacing: 20){
                            Image(systemName: "tv")
                                .frame(width: 30, height: 30)
                                .background(Color.green)
                                .cornerRadius(10)
                                .foregroundColor(Color.white)
                            
                            Text("WhatsApp Web")
                            
                        }
                    }
                }
                
                Section(header: Text("Pengaturan Umum")){
                    NavigationLink(destination: About()){
                        HStack(spacing: 20){
                            Image(systemName: "person")
                                .frame(width: 30, height: 30)
                                .background(Color.blue)
                                .cornerRadius(10)
                                .foregroundColor(Color.white)
                            
                            Text("Akun")
                            
                        }
                    }
                    
                    NavigationLink(destination: About()){
                        HStack(spacing: 20){
                            Image(systemName: "phone.circle")
                                .frame(width: 30, height: 30)
                                .background(Color.green)
                                .cornerRadius(10)
                                .foregroundColor(Color.white)
                            
                            Text("Pesan")
                            
                        }
                    }
                }
                
                
                
            }.navigationBarTitle("Settings")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct About : View {
    var body: some View{
        Text("Halaman About")
    }
}

