local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 4096 or L0_0 > 8192 then
  L1_1 = mp
  L1_1 = L1_1.INFECTED
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.GetBruteMatchData
L1_1 = L1_1()
L2_2 = L1_1.is_header
if not L2_2 then
  L2_2 = mp
  L2_2 = L2_2.INFECTED
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.readprotection
L3_3 = false
L2_2(L3_3)
L2_2 = mp
L2_2 = L2_2.readfile
L3_3 = 0
L2_2 = L2_2(L3_3, L0_0)
L3_3 = string
L3_3 = L3_3.match
L3_3 = L3_3(L2_2, "powershell.+%-e ([a-zA-Z0-9%+/]+)")
if L3_3 == nil then
  return mp.INFECTED
end
mp.vfo_add_buffer(L3_3, "[PowerShellB64]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
mp.set_mpattribute("//SCPT:PowershellNopWHiddenE.Decoded")
return mp.INFECTED
