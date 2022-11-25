//
//  ContentView.swift
//  FirebaseSwiftUIPract3
//
//  Created by Capgemini-DA202 on 11/23/22.
//

import SwiftUI
import Firebase

struct ContentView: View {
    
    @State var email = ""
    @State var password = ""
    @State var success = false
    
    func registerUser() {
        Auth.auth().createUser(withEmail: email, password: password, completion: {(result, error) -> Void in
            if let error = error {
                success = false
                print(error.localizedDescription)
            }
            else {
                success = true
                print("User registered success")
            }
        })
    }
    //login validation
    func login() {
        Auth.auth().signIn(withEmail: email, password: password, completion: {(result,error) -> Void in
            if let error = error {
                success = false
                print(error.localizedDescription)
            }
            else {
                success = true
                print("Logged in successfully")
            }
            
        })
    }
    var body: some View {
      //  NavigationView {
        VStack {
            TextField("Email", text:$email)
            SecureField("Password", text:$password)
            
            HStack {
                Button(action: {registerUser()}){
                    Text("Signup")
                    Button(action: {login()}){
                        Text("Login")
                }
            }
        }.padding()
            if success == true {
                SecondView()
              //  NavigationLink(destination: SecondView()){
//                    Text("Awesome Button").frame(minWidth: 0, maxWidth: 300).padding()
//                                        .foregroundColor(.white)
//                                        .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
//                                        .cornerRadius(40)
//                                        .font(.title)
                  //  print("Navigated")
                }
            }
            
    }
 
    }
  

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
