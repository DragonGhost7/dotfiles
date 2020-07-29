#!/bin/bash

#{Microphone}
#   ||                                             Input
#{mic_ec} -------------> [vsink_fx_mic]{m} ------------> (Voice chat)
#            Loopback               ^                         |
#                           Loopback|                   Output|
#                                   |                         |
#             Output                |      Loopback           v
#(Soundboard) ---------> [vsink_fx]{m} ----------------> [spk_ec]
#                                                           ||
#                                                        [Speakers]
#Applications configuration
#The applications providing the sound effects must
#
#Output to "vsink_fx"
#All other applications, including the voice chat, must
#
#Record audio from "Monitor of vsink_fx_mic"
#Output to "spk_ec"



microphone="alsa_input.pci-0000_00_1b.0.analog-stereo"
speakers="alsa_output.pci-0000_00_1b.0.analog-stereo"

echo "Setting up echo cancellation"
pactl load-module module-echo-cancel use_master_format=1 aec_method=webrtc \
	aec_args="analog_gain_control=0\\ digital_gain_control=1\\ experimental_agc=1\\ noise_suppression=1\\ voice_detection=1\\ extended_filter=1" \
	source_master="$microphone" source_name=mic_ec source_properties=device.description=mic_ec \
	sink_master="$speakers"     sink_name=spk_ec   sink_properties=device.description=spk_ec

echo "Creating virtual output devices"
pactl load-module module-null-sink sink_name=vsink_fx     sink_properties=device.description=vsink_fx
pactl load-module module-null-sink sink_name=vsink_fx_mic sink_properties=device.description=vsink_fx_mic

echo "Creating loopbacks"
pactl load-module module-loopback latency_msec=30 adjust_time=3 source=mic_ec           sink=vsink_fx_mic
pactl load-module module-loopback latency_msec=30 adjust_time=3 source=vsink_fx.monitor sink=vsink_fx_mic
pactl load-module module-loopback latency_msec=30 adjust_time=3 source=vsink_fx.monitor sink=spk_ec

echo "Setting default devices"
pactl set-default-source vsink_fx_mic.monitor
pactl set-default-sink   spk_ec
