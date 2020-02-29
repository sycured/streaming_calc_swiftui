//
//  lib.swift
//  streaming_calc_swiftui
//
//  Created by sycured on 2/29/20.
//  Copyright © 2020 sycured. All rights reserved.
//

func bwServer(_ nblisteners: Float, _ bitrate: Float) -> Float {
    nblisteners * bitrate * 1000 / 1024
}

func serverUsageBw(_ nblisteners: Float, _ bitrate: Float, _ nbdays: Float, _ nbhours: Float) -> Float {
    nbdays * nbhours * 3600 * bitrate * 1000 / 8 * nblisteners / 1024 / 1024
}
