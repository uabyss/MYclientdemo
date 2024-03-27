//
//  MMOBHonsetMobileView.swift
//  EfHub
//
//

import SwiftUI
import MmobClient

struct EFNetworkAiroView: UIViewRepresentable {
    
    @AppStorage("instance_domain") var instance_domain: String = "ef-network"
    let client = MmobClient()
    func makeUIView(context: Context) -> MmobClientView  {
        let configuration = MmobDistribution(
          configuration: MmobDistributionConfiguration(
            distribution_id: "tpd_AfanV2h5oLJGYMQ1MIlrl ",
            environment: "stag" //  "stag" or "prod", defaults to "prod"
          ),
          customer: MmobCustomerInfo(
            email: "james.tan7@example.com",
            title: "Mr",
            first_name: "James",
            surname: "Tan",
            building_number: "Flat 82",
            address_1: "99 Block Square",
            town_city: "Milton Keynes",
            postcode: "MK1 1AU"
        )
          )
        

        return client.loadDistribution(mmobConfiguration: configuration, instanceDomain: InstanceDomain.EFNETWORK)
    }

    func updateUIView(_ uiView: MmobClientView, context: Context) {
        print("update UI")

    }
    
}

struct EFNetworkAiroView_Previews: PreviewProvider {
    static var previews: some View {
        EFNetworkAiroView()
    }
}
