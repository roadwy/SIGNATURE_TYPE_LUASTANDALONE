local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
elseif L0_0 == L1_1 then
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L2_2 = mp
  L2_2 = L2_2.CONTEXT_DATA_NEWLYCREATEDHINT
  L1_1 = L1_1(L2_2)
  if L1_1 == true then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = mp
    L2_2 = L2_2.get_contextdata
    L3_3 = mp
    L3_3 = L3_3.CONTEXT_DATA_FILEPATH
    L3_3 = L2_2(L3_3)
    L1_1 = L1_1(L2_2, L3_3, L2_2(L3_3))
    L2_2 = mp
    L2_2 = L2_2.get_contextdata
    L3_3 = mp
    L3_3 = L3_3.CONTEXT_DATA_FILENAME
    L2_2 = L2_2(L3_3)
    L3_3 = string
    L3_3 = L3_3.lower
    L3_3 = L3_3(L2_2)
    if string.sub(L3_3, 1, 12) == "java_update_" and string.sub(L1_1, -5) == "\\temp" and string.sub(L3_3, -4) == ".exe" then
      mp.set_mpattribute("Lua:ZemotDownloadFileName.A")
    elseif string.sub(L2_2, 1, 18) == "UpdateFlashPlayer_" and string.sub(L1_1, -5) == "\\temp" and string.sub(L2_2, -4) == ".exe" then
      if string.len(L2_2) == 30 and string.match(L2_2, "^%x%x%x%x%x%x%x%x", 19) then
        mp.set_mpattribute("Lua:ZemotDownloadFileName.B!Cloud")
      else
        mp.set_mpattribute("Lua:ZemotDownloadFileName.B")
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
