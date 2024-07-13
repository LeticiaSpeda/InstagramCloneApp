import SwiftUI

struct LoginView: View {
    @EnvironmentObject var userSessionService: UserSessionService
    
    var body: some View {
        Button(action: userSessionService.login) {
            Text("Tap to login")
        }
    }
}

#Preview {
    LoginView()
        .environmentObject(UserSessionService())
}
