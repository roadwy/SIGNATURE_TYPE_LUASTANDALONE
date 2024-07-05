local L0_0
L0_0 = pe
L0_0 = L0_0.get_regval
L0_0 = L0_0(pe.REG_EDI)
mp.set_mpattribute(string.format("HSTR:Obfuscator.PN!crc_key.7_k1_%08X_%02X", L0_0, 2))
return mp.CLEAN
