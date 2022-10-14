//
//  ContentView.swift
//  FormExample
//
//  Created by ridho mujizat on 12/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("bg")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack(spacing:20) {
                HandView()
                FormBox()
            }
            .padding()

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HandView : View {
    var body: some View {
        VStack {
            Image(systemName: "hand.raised")
                .resizable()
                .frame(width:100, height: 100)
                .background(Color("mycolor"))
                .foregroundColor(Color.white)
                .padding()
                .background(Color("mycolor"))
                .cornerRadius(20)
        }
    }
}

struct FormBox : View {
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack(alignment:.leading) {
            Text("Username").font(.callout).bold()
            
            TextField("Username...", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("Password ").font(.callout).bold()
            
            SecureField("Password...", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: {print("hai")}){
                HStack{
                    Text("Sign in")
                    Spacer()
                }
                
            }
            .padding()
            .background(Color.black)
            .foregroundColor(Color.white)
            .cornerRadius(10)
        }
        .padding(.all, 30)
        .background(Color.orange)
        .cornerRadius(10)
    }
}
