//
//  CWNetworkCodable.swift
//  wifind
//
//  Created by neon443 on 04/11/2025.
//

import Foundation
import CoreWLAN

class CWNetworkCodable: Codable {
	var ssid: String?
	var ssidData: Data?
	var bssid: String?
	var wlanChannel: CWChannelCodable?
	var rssiValue: Int
	var noiseMeasurement: Int
	var informationElementData: Data?
	var countryCode: String?
	var beaconInterval: Int
	var ibss: Bool
	
	//	init(ssid: String?, ssidData: Data?, bssid: String?, rssiValue: Int, noiseMeasurement: Int, informationElementData: Data?, countryCode: String?, beaconInterval: Int, ibss: Bool) {
	//		self.ssid = ssid
	//		self.ssidData = ssidData
	//		self.bssid = bssid
	//		self.rssiValue = rssiValue
	//		self.noiseMeasurement = noiseMeasurement
	//		self.informationElementData = informationElementData
	//		self.countryCode = countryCode
	//		self.beaconInterval = beaconInterval
	//		self.ibss = ibss
	//	}
	
	init(_ cwNetwork: CWNetwork) {
		self.ssid = cwNetwork.ssid
		self.ssidData = cwNetwork.ssidData
		self.bssid = cwNetwork.bssid
		self.wlanChannel = CWChannelCodable(
			channelNumber: cwNetwork.wlanChannel?.channelNumber,
			channelWidth: cwNetwork.wlanChannel?.channelWidth,
			channelBand: cwNetwork.wlanChannel?.channelBand
		)
		self.rssiValue = cwNetwork.rssiValue
		self.noiseMeasurement = cwNetwork.noiseMeasurement
		self.informationElementData = cwNetwork.informationElementData
		self.countryCode = cwNetwork.countryCode
		self.beaconInterval = cwNetwork.beaconInterval
		self.ibss = cwNetwork.ibss
	}
	
	//	init(from decoder: any Decoder) throws {
	//		let container = try decoder.container(keyedBy: CodingKeys.self)
	//		self.ssid = try container.decode(String.self, forKey: .ssid)
	//		self.ssidData = try container.decode(Data.self, forKey: .ssidData)
	//		self.bssid = try container.decode(String.self, forKey: .bssid)
	//		self.rssiValue = try container.decode(CInt.self, forKey: .rssiValue)
	//		self.noiseMeasurement = try container.decode(CInt.self, forKey: .noiseMeasurement)
	//		self.informationElementData = try container.decode(Data.self, forKey: .informationElementData)
	//		self.countryCode = try container.decode(String.self, forKey: .countryCode)
	//		self.beaconInterval = try container.decode(CInt.self, forKey: .beaconInterval)
	//		self.ibss = try container.decode(Bool.self, forKey: .ibss)
	//	}
}
