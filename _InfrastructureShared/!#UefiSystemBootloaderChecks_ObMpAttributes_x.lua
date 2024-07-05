local L0_0, L1_1, L2_2, L3_3
L0_0 = sysio
L0_0 = L0_0.QuerySymbolicLinkObject
L1_1 = "\\??\\globalroot\\device\\SystemPartition"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L0_0 = L1_1
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0
L3_3 = "\\device\\"
L2_2 = L1_1(L2_2, L3_3, 1, true)
if L2_2 then
  L3_3 = string
  L3_3 = L3_3.sub
  L3_3 = L3_3(L0_0, L2_2)
  L0_0 = L3_3
end
L3_3 = mp
L3_3 = L3_3.getfilename
L3_3 = L3_3(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if not string.find(L3_3, L0_0, 1, true) then
  return mp.CLEAN
end
if mp.get_mpattribute("PEPCODE:HasDigitalSignature") then
  if false == mp.IsTrustedFile(false) then
    mp.set_mpattribute("Lua:BootloaderInvalidSig")
  elseif false == mp.IsTrustedFile(true) then
    mp.set_mpattribute("Lua:BootloaderUntrustedPub")
  end
else
  mp.set_mpattribute("Lua:BootloaderUnsigned")
end
return mp.CLEAN
