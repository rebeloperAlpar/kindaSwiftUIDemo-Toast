//
//  ContentView.swift
//  kindaSwiftUIDemo-Toast
//
//  Created by Alex Nagy on 03.04.2023.
//

import SwiftUI
import kindaSwiftUI

struct ContentView: View {
    var body: some View {
        Screen { context in
            VStack {
                Button("Show Toast") {
                    context.toastManager.present(.success, .hud, message: "This is a toast!")
                }
                Button("Alert") {
                    context.alertManager.present(.success, .alert, message: "This is an alert!")
                }
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
