# This file defines functions needed for RFDC initialisation using https://github.com/strath-sdr/rfsoc_qsfp_offload/blob/master/boards/RFSoC4x2/rfsoc_qsfp_offload/drivers/overlay.py
# by Strath-SDR
from pynq import Overlay
from pynq import allocate
from pynq import DefaultIP
import xrfdc
import xrfclk
import numpy as np
import os

class RFDC_INITIALISE(Overlay):
    """Class for the RFSoC offload overlay
    """
    
    def __init__(self, bitfile_name=None, **kwargs):
        """Initialise the overlay and drivers.
        """

        # Generate default bitfile name
        if bitfile_name is None:
            this_dir = os.path.dirname(__file__)
            bitfile_name = os.path.join(this_dir, 'bitstream', 'rfsoc_offload.bit')
        else:
            if not os.path.isfile(bitfile_name):
                raise ValueError("Bitstream does not exist.")

        # Initialise Overlay class
        super().__init__(bitfile_name, **kwargs)
        
    def init_rf_clocks(lmk_freq=245.76, lmx_freq=491.52):
        xrfclk.set_ref_clks(lmk_freq=lmk_freq, lmx_freq=lmx_freq)

    def initialise_adc(self, tile, block, pll_freq=491.52, fs=4915.2, fc=0.0):
        """Initialise an ADC tile and block in bypass mode.
        """
        self.rfdc.adc_tiles[tile].DynamicPLLConfig(1, pll_freq, fs)
        self.rfdc.adc_tiles[tile].blocks[block].NyquistZone = 1
        self.rfdc.adc_tiles[tile].blocks[block].MixerSettings = {
            'CoarseMixFreq':  xrfdc.COARSE_MIX_BYPASS,
            'EventSource':    xrfdc.EVNT_SRC_TILE,
            'FineMixerScale': xrfdc.MIXER_SCALE_1P0,
            'Freq':           fc,
            'MixerMode':      xrfdc.MIXER_MODE_R2C,
            'MixerType':      xrfdc.MIXER_TYPE_FINE,
            'PhaseOffset':    0.0
        }
        self.rfdc.adc_tiles[tile].blocks[block].UpdateEvent(xrfdc.EVENT_MIXER)
        self.rfdc.adc_tiles[tile].SetupFIFO(True)

    def initialise_dac(self, tile, block, pll_freq=491.52, fs=2457.60, fc=0.0):
        """Initialise a DAC tile and block in bypass mode.
            """
        self.rfdc.dac_tiles[tile].DynamicPLLConfig(1, pll_freq, fs)
        self.rfdc.dac_tiles[tile].blocks[block].NyquistZone = 1
        self.rfdc.dac_tiles[tile].blocks[block].MixerSettings['EventSource'] = xrfdc.EVNT_SRC_IMMEDIATE
        self.rfdc.dac_tiles[tile].SetupFIFO(True)