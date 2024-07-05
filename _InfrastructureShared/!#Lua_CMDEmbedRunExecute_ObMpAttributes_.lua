local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = string
L0_0 = L0_0.lower
L1_1 = tostring
L2_2 = footerpage
L3_3 = L1_1(L2_2)
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L1_1(L2_2))
L1_1 = {L2_2, L3_3}
L2_2 = "(%(\"cmd.exe.+%);)"
L3_3 = "(\"cmd.exe /c .+%);)"
L2_2 = #L1_1
L3_3 = nil
for _FORV_7_ = 1, L2_2 do
  L3_3 = string.match(L0_0, L1_1[_FORV_7_])
  if L3_3 then
    L0_0 = L3_3
    break
  end
end
if L3_3 then
  if L4_4 and L4_4(L0_0, "%^", "") > 20 then
    mp.vfo_add_buffer(L4_4, "[CMDEmbedded]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
    return mp.INFECTED
  end
end
return L4_4
