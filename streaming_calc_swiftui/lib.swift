//
//  lib.swift
//  streaming_calc_swiftui
//
//  Created by sycured on 2/29/20.
//  Copyright © 2020 sycured. All rights reserved.
//

func bwServer(_ nblisteners: Float, _ bitrate: Float) -> Float {
    125 * nblisteners * bitrate / 128
}

func serverUsageBw(_ nblisteners: Float, _ bitrate: Float, _ nbdays: Float, _ nbhours: Float) -> Float {
    28125 * nbdays * nbhours * bitrate * nblisteners / 65536
}
