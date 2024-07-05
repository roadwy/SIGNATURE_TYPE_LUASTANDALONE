local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = peattributes
L0_0 = L0_0.isdll
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
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
L1_1 = string
L1_1 = L1_1.lower
L2_2 = mp
L2_2 = L2_2.get_contextdata
L3_3 = mp
L3_3 = L3_3.CONTEXT_DATA_FILEPATH
L4_4 = L2_2(L3_3)
L1_1 = L1_1(L2_2, L3_3, L4_4, L2_2(L3_3))
L2_2 = string
L2_2 = L2_2.sub
L3_3 = L1_1
L4_4 = -10
L2_2 = L2_2(L3_3, L4_4)
if L2_2 ~= "\\downloads" then
  L2_2 = string
  L2_2 = L2_2.find
  L3_3 = L1_1
  L4_4 = "\\temp\\"
  L2_2 = L2_2(L3_3, L4_4, 1, true)
  if L2_2 == nil then
    L2_2 = string
    L2_2 = L2_2.sub
    L3_3 = L1_1
    L4_4 = -5
    L2_2 = L2_2(L3_3, L4_4)
    if L2_2 ~= "\\temp" then
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
  end
end
L2_2 = string
L2_2 = L2_2.lower
L3_3 = mp
L3_3 = L3_3.get_contextdata
L4_4 = mp
L4_4 = L4_4.CONTEXT_DATA_FILENAME
L4_4 = L3_3(L4_4)
L2_2 = L2_2(L3_3, L4_4, L3_3(L4_4))
L3_3 = string
L3_3 = L3_3.match
L4_4 = L2_2
L3_3 = L3_3(L4_4, "(.+)%(.%).exe$")
if L3_3 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.lower
L4_4 = L4_4(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME))
if string.match(L4_4, "(.+).exe$") ~= L3_3 then
  return mp.CLEAN
end
return mp.INFECTED
