//
//  HomePage.swift
//  
//
//  Created by Rob Maltese on 11/21/22.
//

import Plot

struct HomePage: Component {
    var body: Component {
        ComponentGroup {
            Div {
                Div {
                    Image(url: "/Images/teneightblue.png", description: "TenEightStudios Logo")
                        .class("w-16 md:w-32 lg:w-48")
                    H6 {
                        Text("Building native iOS and web solutions.")
                    }
                } // Branding
                Div {
                    H1 {
                        Text("PROJECTS")
                    }
                    .class("text-sky-400")
                    
                }
            } // Main Container
            .class("container")
        }
    }
}
