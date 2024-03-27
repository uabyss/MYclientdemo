//
//  MMOBHonsetMobileView.swift
//  EfHub
//
//

import SwiftUI
import MmobClient

struct MMOBUinsureView: UIViewRepresentable {
    
    @AppStorage("instance_domain") var instance_domain: String = "mmob"
    let client = MmobClient()
    func makeUIView(context: Context) -> MmobClientView  {
        let configuration = MmobIntegration(
          configuration: MmobIntegrationConfiguration(
            cp_id: "cp_a5zkRYmpY2jyVI4o99lyy",
            integration_id: "cpd_KUtTv-n_0sXGwxdkQrwNj",
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

struct MMOBUinsure_Previews: PreviewProvider {
    static var previews: some View {
        MMOBUinsureView()
    }
}






