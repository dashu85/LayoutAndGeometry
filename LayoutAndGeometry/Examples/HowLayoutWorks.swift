//
//  HowLayoutWorks.swift
//  LayoutAndGeometry
//
//  Created by Marcus Benoit on 28.08.24.
//

import SwiftUI


/*
 If we put this into the three-step layout system, we end up with a conversation a bit like this:

     SwiftUI: “Hey, ContentView, you have the whole screen to yourself – how much of it do you need?” (Parent view proposes a size)
     ContentView: “I don’t care; I’m layout neutral. Let me ask my child: hey, background, you have the whole screen to yourself – how much of it do you need?” (Parent view proposes a size)
     Background: “I also don’t care; I’m layout neutral too. Let me ask my child: hey, text, you can have the whole screen to yourself – how much of it do you need?” (Parent view proposes a size)
     Text: “Well, I have the letters ‘Hello, World’ in the default font, so I need exactly X pixels width by Y pixels height. I don’t need the whole screen, just that.” (Child chooses its size.)
     Background: “Got it. Hey, ContentView: I need X by Y pixels, please.”
     ContentView: “Right on. Hey, SwiftUI: I need X by Y pixels.”
     SwiftUI: “Nice. Well, that leaves lots of space, so I’m going to put you at your size in the center.” (Parent positions the child in its coordinate space.)
 
 So, when we say Text("Hello, World!").background(.red), the text view becomes a child of its background. SwiftUI effectively works its way from bottom to top when it comes to a view and its modifiers.
 
 https://www.hackingwithswift.com/books/ios-swiftui/how-layout-works-in-swiftui
 */

struct HowLayoutWorks: View {
    var body: some View {
        Text("Hello Everybody!")
            .padding(20)
            .background(.red)
    }
}

#Preview {
    HowLayoutWorks()
}
