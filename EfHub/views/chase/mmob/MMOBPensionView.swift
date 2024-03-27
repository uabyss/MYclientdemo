//
//  MMOBHonsetMobileView.swift
//  EfHub
//
//

import SwiftUI
import MmobClient

struct MMOBPensionView: UIViewRepresentable {
    
    @AppStorage("instance_domain") var instance_domain: String = "ef-network.com"
    let client = MmobClient()
    func makeUIView(context: Context) -> MmobClientView  {
        let configuration = MmobIntegration(
          configuration: MmobIntegrationConfiguration(
            cp_id: "cp_TMaiVSyyzBx2rZqF-PqdY",
            integration_id: "cpd_NZPFZKdQ1GSZmSgCKzdOu",
            environment: "stag" //  "stag" or "prod", defaults to "prod"
          ),
          customer: MmobCustomerInfo(
            email: "james.tan5@example.com",
            title: "Mr",
            first_name: "Jamess",
            surname: "Tans",
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

struct MMOBPension_Previews: PreviewProvider {
    static var previews: some View {
        MMOBPensionView()
    }
}



