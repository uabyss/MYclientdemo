//
//  mmobDonationView.swift
//  EfHub
//
//  Created by Jake Figg on 19/02/2024.
//

import SwiftUI
import MmobClient

struct mmobDonationView: UIViewRepresentable {
    
    @AppStorage("instance_domain") var instance_domain: String = "mmob"
    let client = MmobClient()
    
    func makeUIView(context: Context) -> MmobClientView  {
        let configuration = MmobIntegration(
          configuration: MmobIntegrationConfiguration(
            cp_id: "cp_8TGfbkb-Ls-DpkOArUS23",
            integration_id: "cpd_BPVZiowM065aHm6n8l4wO",
            environment: "stag" //  "stag" or "prod", defaults to "prod"
          ),
          customer: MmobCustomerInfo(
            email: "leechongwei22@example.com",
            title: "Mr",
            first_name: "Lee",
            surname: "Tan",
            building_number: "Flat 82",
            address_1: "99 Block Square",
            town_city: "Milton Keynes",
            postcode: "MK1 1AU"
        )
          )
        

        return client.loadIntegration(mmobConfiguration: configuration, instanceDomain: InstanceDomain.MMOB)
    }

    func updateUIView(_ uiView: MmobClientView, context: Context) {
        print("update UIIII")

    }
    
}

struct mmobDonationView_Previews: PreviewProvider {
    static var previews: some View {
        mmobDonationView()
    }
}


