//
//  mmobTakafulDPView.swift
//  EfHub
//
//  Created by Priyangka on 22/03/2024.
//

import SwiftUI
import MmobClient

struct mmobTakafulDPView: UIViewRepresentable {
    
    @AppStorage("instance_domain") var instance_domain: String = "mmob"
    let client = MmobClient()
    
    func makeUIView(context: Context) -> MmobClientView  {
        let configuration = MmobIntegration(
          configuration: MmobIntegrationConfiguration(
            cp_id: "cp_TMaiVSyyzBx2rZqF-PqdY",
            integration_id: "cpd_IlphL1mg5eA-50z2vF3LX",
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
        

        return client.loadIntegration(mmobConfiguration: configuration, instanceDomain: InstanceDomain.MMOB)
    }

    func updateUIView(_ uiView: MmobClientView, context: Context) {
        print("update UI")

    }
    
}

struct mmobTakafulDPView_Previews: PreviewProvider {
    static var previews: some View {
        mmobTakafulDPView()
    }
}








