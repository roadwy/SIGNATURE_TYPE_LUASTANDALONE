local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 == L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = mp
  L2_2 = L2_2.get_contextdata
  L2_2 = L2_2(mp.CONTEXT_DATA_FILENAME)
  L1_1 = L1_1(L2_2, L2_2(mp.CONTEXT_DATA_FILENAME))
  if L1_1 == "passwords.lnk" or L1_1 == "..lnk" then
    L2_2 = string
    L2_2 = L2_2.lower
    L2_2 = L2_2(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME))
    if string.len(L2_2) < 4 or string.len(L2_2) > 11 then
      return mp.CLEAN
    end
    if string.sub(L2_2, -4) == ".exe" and mp.getfilesize() < 512 then
      mp.set_mpattribute("Lua:DropSuspiciousLnkFiles")
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
