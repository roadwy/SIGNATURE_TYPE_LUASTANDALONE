local L0_0, L1_1
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
  L1_1 = L1_1(mp.CONTEXT_DATA_NEWLYCREATEDHINT)
  if L1_1 == true then
    L1_1 = mp
    L1_1 = L1_1.get_contextdata
    L1_1 = L1_1(mp.CONTEXT_DATA_PROCESSNAME)
    if L1_1 then
      L1_1 = string.lower(L1_1)
      if L1_1 == "lsass.exe" then
        return mp.INFECTED
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
