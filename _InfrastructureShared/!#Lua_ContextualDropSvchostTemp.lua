local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 == L1_1 then
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
    L2_2 = L2_2(mp.CONTEXT_DATA_FILEPATH)
    L1_1 = L1_1(L2_2, L2_2(mp.CONTEXT_DATA_FILEPATH))
    L2_2 = string
    L2_2 = L2_2.lower
    L2_2 = L2_2(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME))
    if not peattributes.isdll and string.sub(L2_2, -4) == ".dll" and (string.sub(L1_1, -5) == "\\temp" or string.sub(L1_1, -9) == "\\temp\\low") and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "svchost.exe" then
      mp.set_mpattribute("Lua:ContextualDropSvchostTemp")
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
