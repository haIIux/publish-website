//
//  NewTheme.swift
//  
//
//  Created by Rob Maltese on 11/21/22.
//

import Plot
import Publish
import Foundation

extension Theme where Site == TenEightStudios {
    static var tenEightStudios: Self {
        Theme(
            htmlFactory: TenEightStudiosHTMLFactory(),
            resourcePaths: ["Resources/TenEightTheme/styles.css"]
        )
    }
}

private struct TenEightStudiosHTMLFactory: HTMLFactory {
    typealias Site = TenEightStudios

    func makeIndexHTML(for index: Index, context: PublishingContext<TenEightStudios>) throws -> HTML {
        HTML(
            .lang(context.site.language),
            .body {
                HomePage()
            }
        )
    }

    func makeSectionHTML(for section: Section<TenEightStudios>, context: PublishingContext<TenEightStudios>) throws -> HTML {
        HTML (
            .lang(context.site.language),
            .body {
                switch section.title {
                case "home":
                    HomePage()
                default:
                    HomePage()
                }
            }
        )
    }

    func makeItemHTML(for item: Item<TenEightStudios>, context: PublishingContext<TenEightStudios>) throws ->  HTML {
        return HTML()
    }

    func makePageHTML(for page: Page, context: PublishingContext<TenEightStudios>) throws ->  HTML {
        return HTML()
    }

    func makeTagListHTML(for page: TagListPage, context: PublishingContext<TenEightStudios>) throws ->  HTML? {
        return HTML()
    }

    func makeTagDetailsHTML(for page: TagDetailsPage, context: PublishingContext<TenEightStudios>) throws ->  HTML? {
        return HTML()
    }
}
