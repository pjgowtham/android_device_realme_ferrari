/*
 * SPDX-FileCopyrightText: The LineageOS Project
 * SPDX-License-Identifier: Apache-2.0
 */

#pragma once

// Measured CL_TLRA 5706 us; the DT's qcom,lra-period-us = <5882> is nominal.
constexpr float kF0 = 175.0f;
// Loaded quality factor, and the steady drive at resonance for 1 G
// (2000 mV of qcom,fifo-vmax-mv = <8900>).
constexpr float kQ = 8.0f;
constexpr float kLevelPerG = 0.225f;
// Drive limit for the long chirps (5000 mV); taps may use the full scale.
constexpr float kSustainMaxLevel = 0.562f;
