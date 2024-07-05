local L0_0, L1_1, L2_2
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
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = mp
  L2_2 = L2_2.get_contextdata
  L2_2 = L2_2(mp.CONTEXT_DATA_FILENAME)
  L1_1 = L1_1(L2_2, L2_2(mp.CONTEXT_DATA_FILENAME))
  if L1_1 == "svchost.exe" then
    L2_2 = string
    L2_2 = L2_2.lower
    L2_2 = L2_2(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH))
    if string.sub(L2_2, -34) == "\\appdata\\roaming\\microsoft\\windows" or string.sub(L2_2, -35) == "\\application data\\microsoft\\windows" then
      mp.set_mpattribute("Lua:DipverdleFileName.A")
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
