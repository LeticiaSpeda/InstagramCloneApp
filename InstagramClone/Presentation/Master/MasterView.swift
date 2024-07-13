import SwiftUI

struct MasterView: View {
    @EnvironmentObject var userSessionService: UserSessionService
    
    var body: some View {
        Group {
            if userSessionService.session == nil {
                LoginView()
            } else {
                ContentView()
            }
        }
    }
}

#Preview {
    MasterView()
        .environmentObject(UserSessionService()) // Para visualizar no Preview
}
