//
//  ContentView.swift
//  CryptoSwiftExample
//
//  Created by Waleed on 10/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    let result = CryptoHelper.demo()
    
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
