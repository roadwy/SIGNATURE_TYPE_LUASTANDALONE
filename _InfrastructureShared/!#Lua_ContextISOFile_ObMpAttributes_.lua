local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.getfilesize
L1_1 = L1_1()
L2_2 = 16777216
if L1_1 < 33792 or L1_1 > L2_2 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.bitand
L4_4 = L1_1
L5_5 = 2047
L3_3 = L3_3(L4_4, L5_5)
if L3_3 ~= 0 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.lower
L4_4 = mp
L4_4 = L4_4.get_contextdata
L5_5 = mp
L5_5 = L5_5.CONTEXT_DATA_FILEPATH
L5_5 = L4_4(L5_5)
L3_3 = L3_3(L4_4, L5_5, L4_4(L5_5))
L4_4 = string
L4_4 = L4_4.lower
L5_5 = mp
L5_5 = L5_5.get_contextdata
L5_5 = L5_5(mp.CONTEXT_DATA_FILENAME)
L4_4 = L4_4(L5_5, L5_5(mp.CONTEXT_DATA_FILENAME))
L5_5 = L4_4.len
L5_5 = L5_5(L4_4)
if L5_5 < 4 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = string
L5_5 = L5_5.sub
L5_5 = L5_5(L4_4, -4)
if L5_5 ~= ".iso" then
  L5_5 = string
  L5_5 = L5_5.sub
  L5_5 = L5_5(L4_4, -4)
  if L5_5 ~= ".img" then
    L5_5 = mp
    L5_5 = L5_5.CLEAN
    return L5_5
  end
end
L5_5 = ""
if L3_3:find("\\downloads", 1, true) ~= nil then
  L5_5 = "Downloads"
elseif L3_3:find("\\temp\\temp[0-9]_.+%.zip$") ~= nil then
  L5_5 = "ZipTemp"
else
  return mp.CLEAN
end
mp.readprotection(false)
if mp.readfile(32768, 16):find("\001CD001\001", 1, true) == 1 then
  mp.set_mpattribute("Lua:ContextISOFile" .. L5_5)
elseif mp.readfile(32768, 16):find("\000BEA01\001", 1, true) == 1 then
  mp.set_mpattribute("Lua:ContextUDFFile" .. L5_5)
end
return mp.CLEAN
