import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct TenEightStudios: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case home
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://your-website-url.com")!
    var name = "WebsitePublish"
    var description = "A description of WebsitePublish"
    var language: Language { .english }
    var imagePath: Path? {
        "/Images/teneightblue.png"
    }
}

// This will generate your website using the built-in Foundation theme:
try TenEightStudios().publish(withTheme: .tenEightStudios)
