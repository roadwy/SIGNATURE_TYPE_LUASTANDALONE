local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.readprotection
L1_1 = false
L0_0(L1_1)
L0_0 = pe
L0_0 = L0_0.foffset_va
L1_1 = hstrlog
L1_1 = L1_1[1]
L1_1 = L1_1.VA
L1_1 = L1_1 + 45
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.readfile
L2_2 = L0_0
L1_1 = L1_1(L2_2, 4)
L2_2 = pe
L2_2 = L2_2.foffset_va
L2_2 = L2_2(mp.readu_u32(L1_1, 1))
if mp.readfile(L2_2, 15) == "D\000e\000l\000e\000t\000e\000d\000\000" then
  mp.set_mpattribute("HSTR:BingSearchCby")
end
return mp.CLEAN
