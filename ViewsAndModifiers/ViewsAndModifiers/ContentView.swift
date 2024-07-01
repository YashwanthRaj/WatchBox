//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Yashwanth Raj Varadharajan on 6/29/24.
//

import SwiftUI

struct CapsuleText: View {   // Create a custom view
    var text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .foregroundStyle(.white)
            .background(.blue)
            .clipShape(.capsule)
    }
}

// Custom Modifier
struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content.font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(.blue)
            .clipShape(.rect(cornerRadius: 10))

    }
}

// We can also create extension that we can use in main body without modifier(Title())
extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
}

struct Watermark: ViewModifier {
    var text: String

    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            Text(text)
                .font(.caption)
                .foregroundStyle(.white)
                .padding(5)
                .background(.black)
        }
    }
}

extension View {
    func watermarked(with text: String) -> some View {
        modifier(Watermark(text: text))
    }
}

struct ContentView: View {
    @State private var useRedText = false
    
    // Views as properties
    let name1 = Text("Hello World!!")
    let name2 = Text("My name is Yash")
    
    var name3: some View {
        Text("I am a computer science student")
    }
    
    var body: some View {
        Spacer()
        
        // Conditional Modifiers
        Button("Button") {
            useRedText.toggle()
        }
        .foregroundColor(useRedText ? .red: .blue )
        
        Spacer()
        
        // Environment Modifiers
        VStack{
            Text("Hello world!!")
                .font(.largeTitle)  //  This will override the environment modifier
            Text("Hello world!!")
            Text("Hello world!!")
            Text("Hello world!!")
            Text("Hello world!!")
        }.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/) // Will apply to all
        
        Spacer()
        
        // Views being used as properties
        VStack{
            name1.font(.title2)  // We can apply modifiers to them as well
            name2
        }.padding()
        
        Spacer()
        
        // Use the view here
        CapsuleText(text: "Hello World")
        
        Spacer()
        
        // Using Custom Modifier
        Text("Hello World").modifier(Title())
        
        // Using the extension
        Text("Hello").titleStyle()
        
        Spacer()
        
        Color.blue
            .frame(width: 300, height: 200)
            .watermarked(with: "Yashwanth")
        Spacer()
    }
}

#Preview {
    ContentView()
}
