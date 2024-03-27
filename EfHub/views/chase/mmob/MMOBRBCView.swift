//
//  MMOBBroadbandView.swift
//  EfHub
//
//  Created by Blai Pratdesaba Pares on 30/05/2022.
//

import SwiftUI
import MmobClient

struct MMOBBRBCView: UIViewRepresentable {

    @AppStorage("instance_domain") var instance_domain: String = "mmob"
    let client = MmobClient()
    func makeUIView(context: Context) -> MmobClientView  {
        let configuration = MmobIntegration(
            configuration: MmobIntegrationConfiguration(
                cp_id: "cp_r_FiUqZsjBt2Pvdj8KaED",
                integration_id: "cpd_g0aZwsq021KHCZQClunGF",
                environment: "stag"
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
        
        return client.loadIntegration(mmobConfiguration: configuration, instanceDomain: InstanceDomain.EFNETWORK)
        
    }
    
    func updateUIView(_ uiView: MmobClientView, context: Context) {
        print("update UI")
        
    }
}

struct MMOBRBCView_Previews: PreviewProvider {
    static var previews: some View {
        MMOBBroadbandView()
    }
}

