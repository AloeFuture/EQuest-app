import SwiftUI

struct CustomNavigationBar: View {
    @Binding var selectedTab: Int

    var body: some View {
        HStack {
            NavigationBarItem(icon: "menucard", label: "EHub", isSelected: selectedTab == 0) { selectedTab = 0 }
            NavigationBarItem(icon: "book", label: "Contacts", isSelected: selectedTab == 1) { selectedTab = 1 }
            NavigationBarItem(icon: "plus.message", label: "Contribute", isSelected: selectedTab == 2) { selectedTab = 2 }
            NavigationBarItem(icon: "person.fill", label: "Profile", isSelected: selectedTab == 3) { selectedTab = 3 }
        }
        .frame(height: 80)
        .background(Color(red: 255/255, green: 252/255, blue: 204/255))
    }
}

struct NavigationBarItem: View {
    var icon: String
    var label: String
    var isSelected: Bool
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            VStack {
                Image(systemName: icon)
                    .foregroundColor(isSelected ? .green : .brown)
                Text(label)
                    .font(.caption)
                    .foregroundColor(isSelected ? .green : .brown)
            }
        }
        .frame(maxWidth: .infinity)
    }
}
