local L0_0
L0_0 = mp
L0_0 = L0_0.HSTR_WEIGHT
if hstrlog[6].matched and hstrlog[7].matched then
  L0_0 = L0_0 - 2
end
if L0_0 >= 5 then
  return mp.INFECTED
end
mp.set_mpattribute("do_exhaustivehstr_rescan_vbinject_ky")
return mp.CLEAN
