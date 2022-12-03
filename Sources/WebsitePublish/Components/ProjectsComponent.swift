//
//  ProjectsComponent.swift
//  
//
//  Created by Rob Maltese on 11/23/22.
//

import Plot

struct ProjectsComponent: Component {
    var title: String
    var description: String
    var websiteLink: String
    var techEnum: TechnologyEnum
    var imagePath: String
    var imageDescription: String?

    var body: Component {
        ComponentGroup {
            Div {
                Div {
                    H2 {
                        Text(title)
                    }
                    Paragraph {
                        Text(description)
                    }
                    Button {
                        Link(url: websiteLink) {
                            Image(url: imagePath, description: imageDescription ?? "Unknown Description")
                        }
                    }
                    Button {
                        Text("Visit the app Website")
                    }
                } // Text Div - Align Left
                Div {

                } // Image Div - Align Right
            } // Main Container
        }
    }
}


enum TechnologyEnum {
    case swiftui
    case uikit
    case mapkit
    case combine
    case firebase
    case vapor
    case revenuecat

    var description: String {
        switch self {
        case .swiftui:
           return "SwiftUI"
        case .uikit:
            return "UIKit"
        case .mapkit:
            return "MapKit"
        case .combine:
            return "Combine"
        case .firebase:
            return "Firebase"
        case .vapor:
            return "Vapor"
        case .revenuecat:
            return "RevenueCat"
        }
    }
}
