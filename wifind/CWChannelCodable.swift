//
//  CWChannelCodable.swift
//  wifind
//
//  Created by neon443 on 04/11/2025.
//

import Foundation
import CoreWLAN

class CWChannelCodable: Codable {
	var channelNumber: Int?
	var channelWidth: CWChannelWidth?
	var channelBand: CWChannelBand?
	
	init(
		channelNumber: Int?,
		channelWidth: CWChannelWidth?,
		channelBand: CWChannelBand?
	) {
		self.channelNumber = channelNumber
		self.channelWidth = channelWidth
		self.channelBand = channelBand
	}
}
extension CWChannelWidth: Codable {}
extension CWChannelBand: Codable {}
