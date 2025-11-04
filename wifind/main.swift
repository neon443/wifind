//
//  main.swift
//  wifind
//
//  Created by neon443 on 04/11/2025.
//

import Foundation
import CoreWLAN

let client = CWWiFiClient.shared()
let encoder = JSONEncoder()

guard let networks = try? client.interface()?.scanForNetworks(withSSID: nil) else { exit(1) }
let codableNetworks = networks.map({ $0.codable() })
guard let encoded = try? encoder.encode(codableNetworks),
	  let json = String(data: encoded, encoding: .utf8) else { exit(2) }
print(json)
