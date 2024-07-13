import SwiftUI

struct ContentView: View {
    @EnvironmentObject var userSessionService: UserSessionService
    var body: some View {
        VStack(spacing: 4) {
            Text("Hello \(userSessionService.session?.user.name ?? "")")
            Button(action: userSessionService.logout) {
                Text("Tap to logout")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
        .environmentObject(UserSessionService()) // Para visualizar no Preview
}
