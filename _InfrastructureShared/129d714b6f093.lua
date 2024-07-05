local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
L1_1 = mp
L1_1 = L1_1.GetProcessCommandLine
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.len
L3_3 = L1_1
L2_2 = L2_2(L3_3)
if L2_2 > 800 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.match
L3_3 = L1_1
L2_2 = L2_2(L3_3, "(JABQAHIAbwBnAHIAZQBzAHMA[a-zA-Z0-9%+/]+=?=?)")
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = MpCommon
L3_3 = L3_3.Base64Decode
L3_3 = L3_3(L2_2)
if L3_3 == nil then
  return mp.CLEAN
end
L3_3 = string.gsub(L3_3, "%z", "")
L3_3 = string.lower(string.gsub(L3_3, " ", ""))
if string.find(L3_3, ";get-module-listavailable-nameactivedirectory", 1, true) or string.find(L3_3, ";get-adgroup-filter*|where-objectname-match\"management\"|selectname", 1, true) or string.find(L3_3, ";get-adgroupmember-identity\"servermanagement\"|selectname,samaccountname", 1, true) or string.find(L3_3, ";get-adgroupmember-identity\"domainadmins\"|selectname,samaccountname", 1, true) or string.find(L3_3, ";get-aduser-filter{lastlogondate-ne0}-properties*|selectname,samaccountname", 1, true) or string.find(L3_3, ";get-adcomputer-filter*-properties*|selectname,dnsname,ipv4address,description", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
