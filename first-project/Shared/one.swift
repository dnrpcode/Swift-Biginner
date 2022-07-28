//
//  ContentView.swift
//  Shared
//
//  Created by dani prayogi on 23/02/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("bg")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 20){
                Logo()
                FormLogin()
            }
            .padding(.all, 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Logo : View {
    var body: some View {
        VStack{
            Image("swift")
            .resizable()
            .frame(width: 80, height: 80)
            .background(Color.white)
            .foregroundColor(Color.red)
            .padding()
            .background(Color.blue)
            .cornerRadius(20)
            
            Text("ini logo apaan")
        }
    }
}

struct FormLogin : View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View{
        VStack(alignment: .leading){
            Text("Username").font(.callout).bold()
            
            TextField("Username.....", text: $username)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("Password").font(.callout).bold()
            
            SecureField("Password.....", text: $username)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: {print("Login")}){
                HStack{
                    Text("Sign In")
                    Spacer()
                }
            }
            .padding()
            .background(Color.blue)
            .cornerRadius(10)
            .foregroundColor(Color.white)
        }
        .padding(.all, 30)
        .background(Color.white)
        .cornerRadius(10)
    }
}
