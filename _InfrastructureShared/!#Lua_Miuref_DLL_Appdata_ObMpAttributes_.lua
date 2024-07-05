local L0_0, L1_1, L2_2, L3_3
L0_0 = peattributes
L0_0 = L0_0.isdll
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.hasexports
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.NumberOfSections
if L0_0 ~= 6 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L1_1 = pehdr
L1_1 = L1_1.NumberOfSections
L1_1 = L1_1 - 1
L0_0 = L0_0[L1_1]
L0_0 = L0_0.Characteristics
if L0_0 ~= 3758096448 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.DataDirectory
L0_0 = L0_0[1]
L0_0 = L0_0.RVA
L1_1 = pehdr
L1_1 = L1_1.DataDirectory
L1_1 = L1_1[2]
L1_1 = L1_1.Size
L2_2 = mp
L2_2 = L2_2.getfilesize
L2_2 = L2_2()
if L2_2 > 1324032 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.getfilesize
L2_2 = L2_2()
if L2_2 < 1142784 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = pe
L2_2 = L2_2.contains_rva
L3_3 = 5
L2_2 = L2_2(L3_3, L0_0)
if L2_2 ~= true then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
if L1_1 ~= 149 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.get_contextdata
L3_3 = mp
L3_3 = L3_3.CONTEXT_DATA_SCANREASON
L2_2 = L2_2(L3_3)
L3_3 = mp
L3_3 = L3_3.SCANREASON_ONOPEN
if L2_2 ~= L3_3 then
  L3_3 = mp
  L3_3 = L3_3.SCANREASON_ONMODIFIEDHANDLECLOSE
elseif L2_2 == L3_3 then
  L3_3 = string
  L3_3 = L3_3.lower
  L3_3 = L3_3(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH))
  if L3_3 == nil then
    return mp.CLEAN
  end
  if string.match(L3_3, "\\appdata\\local\\%w+$") or string.match(L3_3, "\\local settings\\application data\\%w+$") then
    mp.set_mpattribute("Lua:Miuref_DLL_Appdata")
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
