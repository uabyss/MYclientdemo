import SwiftUI

struct ServiceOption {
    let imageName: String
    let action: () -> Void
    let sheetView: AnyView
}

struct servicesOptionsGridView: View {
    let columns = Array(repeating: GridItem(.flexible(), spacing: 1), count: 2) // Adjust column count as needed
    let spacing: CGFloat = 0 // Adjust spacing as needed
    
    @State private var showingFinancing = false
    @State private var showingDonation = false
    @State private var showingWealth = false
    @State private var showingTakaful = false
    @State private var showingFootball = false
    @State private var showingCredit = false
    
    private var serviceOptions: [ServiceOption] {
        [
            ServiceOption(imageName: "donationTab", action: { self.showingDonation.toggle() }, sheetView: AnyView(mmobDonationView())),
            ServiceOption(imageName: "takafulTab", action: { self.showingTakaful.toggle() }, sheetView: AnyView(mmobTakafulView())),
            ServiceOption(imageName: "wealthTab", action: { self.showingWealth.toggle() }, sheetView: AnyView(mmobWealthView())),
            ServiceOption(imageName: "FootballTab", action: { self.showingFootball.toggle() }, sheetView: AnyView(mmobFootballView())),

        ]
    }
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: spacing) {
            ForEach(serviceOptions.indices, id: \.self) { index in
                Button(action: serviceOptions[index].action) {
                    Image(serviceOptions[index].imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 140, height: 100) // Adjust size as needed
                }
                .foregroundColor(Color.white)
                .padding(.top, -40.0)
            }
        }
        .foregroundColor(Color.white)
        .padding(.top, 50.0)
        .sheet(isPresented: $showingFinancing) {
            mmobFinancingView()
        }
        .sheet(isPresented: $showingDonation) {
            mmobDonationView()
        }
        .sheet(isPresented: $showingTakaful) {
            mmobTakafulView()
        }
        .sheet(isPresented: $showingWealth) {
            mmobWealthView()
        }
        .sheet(isPresented: $showingCredit) {
            mmobCreditCardView()
        }
        .sheet(isPresented: $showingFootball) {
            mmobFootballView()
        }
    }
}

struct servicesOptionsGridView_Previews: PreviewProvider {
    static var previews: some View {
        servicesOptionsGridView()
    }
}

