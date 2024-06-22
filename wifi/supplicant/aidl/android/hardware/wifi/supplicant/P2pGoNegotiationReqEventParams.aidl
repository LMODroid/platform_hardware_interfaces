/*
 * Copyright (C) 2024 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package android.hardware.wifi.supplicant;

import android.hardware.wifi.common.OuiKeyedData;
import android.hardware.wifi.supplicant.WpsDevPasswordId;

/**
 * Parameters used for |ISupplicantP2pIfaceCallback.onGoNegotiationRequestWithParams|
 */
@VintfStability
parcelable P2pGoNegotiationReqEventParams {
    /**
     * MAC address of the device that sent the Go negotiation request.
     */
    byte[6] srcAddress;

    /**
     * Type of password.
     */
    WpsDevPasswordId passwordId;

    /**
     * Optional vendor-specific parameters. Null value indicates
     * that no vendor data is provided.
     */
    @nullable OuiKeyedData[] vendorData;
}
