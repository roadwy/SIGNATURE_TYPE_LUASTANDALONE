local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 5120 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.GetNormalizedScript
L2_2 = true
L1_1 = L1_1(L2_2)
if L1_1 ~= nil then
  L2_2 = string
  L2_2 = L2_2.find
  L3_3 = L1_1
  L2_2 = L2_2(L3_3, "|base64-D|", 1, true)
  if L2_2 then
    L3_3 = L1_1
    L2_2 = L1_1.match
    L2_2 = L2_2(L3_3, "echo%-e([%w%+%/%=]+)%|base64%-D")
    L3_3 = #L2_2
    if L3_3 then
      L3_3 = #L2_2
      L3_3 = L3_3 % 4
      if L3_3 == 0 then
        L3_3 = MpCommon
        L3_3 = L3_3.Base64Decode
        L3_3 = L3_3(L2_2)
        if #L3_3 and L3_3 ~= nil then
          mp.vfo_add_buffer(L3_3, "[Base64DecData]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
          if string.find(L3_3, "| /bin/zsh", -10, true) then
            return mp.INFECTED
          end
        end
      end
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
