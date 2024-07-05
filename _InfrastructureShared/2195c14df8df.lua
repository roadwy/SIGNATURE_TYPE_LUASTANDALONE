local L0_0, L1_1
L0_0 = pe
L0_0 = L0_0.get_regval
L1_1 = pe
L1_1 = L1_1.REG_EBX
L0_0 = L0_0(L1_1)
L1_1 = pe
L1_1 = L1_1.get_regval
L1_1 = L1_1(pe.REG_ECX)
L1_1 = L1_1 - (4294967295 - L0_0)
L0_0 = 4294967295
pe.set_regval(pe.REG_EAX, 0)
pe.set_regval(pe.REG_EBX, L0_0)
pe.set_regval(pe.REG_ECX, L1_1)
return mp.CLEAN
