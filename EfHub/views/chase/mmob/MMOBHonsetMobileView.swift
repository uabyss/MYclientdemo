//
//  MMOBHonsetMobileView.swift
//  EfHub
//
//  Created by Blai Pratdesaba Pares on 29/07/2022.
//

import SwiftUI
import MmobClient

struct MMOBHonsetMobileView: UIViewRepresentable {
    let client = MmobClient()
    @AppStorage("email") var email: String = "name@example.com"
    @AppStorage("first_name") var first_name: String = "-"
    @AppStorage("surname") var surname: String = "-"
    @AppStorage("title") var title: String = "-"
    @AppStorage("building_number") var building_number: String = "-"
    @AppStorage("town_city") var town_city: String = "-"
    @AppStorage("postcode") var postcode: String = "-"
    @AppStorage("address_1") var address_1: String = "-"
    
    @AppStorage("instance_domain") var instance_domain: String = "mmob"
    
    func makeUIView(context: Context) -> MmobClientView  {
        let configuration = MmobDistribution(
          configuration: MmobDistributionConfiguration(
            distribution_id: "tpd_xdUtTUmzrYsKC7nBCC9D_",
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
        

        return client.loadDistribution(mmobConfiguration: configuration, instanceDomain: InstanceDomain.MMOB)
    }

    func updateUIView(_ uiView: MmobClientView, context: Context) {
        print("update UI")

    }
    
}

struct MMOBHonsetMobileView_Previews: PreviewProvider {
    static var previews: some View {
        MMOBHonsetMobileView()
    }
}
