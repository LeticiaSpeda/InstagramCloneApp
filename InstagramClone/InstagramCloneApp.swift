import SwiftUI

@main
struct YourApp: App {
    @StateObject private var userSessionService = UserSessionService()

    var body: some Scene {
        WindowGroup {
            MasterView()
                .environmentObject(userSessionService)
        }
    }
}
