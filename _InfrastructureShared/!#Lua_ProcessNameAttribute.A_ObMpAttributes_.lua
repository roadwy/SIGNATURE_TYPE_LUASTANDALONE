local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_PROCESSNAME
L0_0 = L0_0(L1_1)
if L0_0 then
  L1_1 = #L0_0
elseif L1_1 > 44 then
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
L3_3 = " "
L4_4 = 1
L5_5 = true
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
if L1_1 ~= nil then
  L2_2 = L0_0
  L1_1 = L0_0.gsub
  L3_3 = "%s"
  L4_4 = "/x20"
  L1_1 = L1_1(L2_2, L3_3, L4_4)
  L0_0 = L1_1
  if L0_0 ~= nil then
    L1_1 = #L0_0
  elseif L1_1 > 44 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = "Lua:ProcNameAttr!"
L2_2 = mp
L2_2 = L2_2.set_mpattribute
L3_3 = L1_1
L4_4 = L0_0
L3_3 = L3_3 .. L4_4
L2_2(L3_3)
L2_2 = mp
L2_2 = L2_2.get_contextdata
L3_3 = mp
L3_3 = L3_3.CONTEXT_DATA_NEWLYCREATEDHINT
L2_2 = L2_2(L3_3)
if L2_2 == true then
  L2_2 = mp
  L2_2 = L2_2.get_contextdata
  L3_3 = mp
  L3_3 = L3_3.CONTEXT_DATA_PROCESS_PPID
  L2_2 = L2_2(L3_3)
  if L2_2 == nil then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  L3_3 = mp
  L3_3 = L3_3.GetParentProcInfo
  L4_4 = L2_2
  L3_3 = L3_3(L4_4)
  if L3_3 == nil then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  L4_4 = L3_3.image_path
  if L4_4 == nil then
    L5_5 = mp
    L5_5 = L5_5.CLEAN
    return L5_5
  end
  L5_5 = string
  L5_5 = L5_5.match
  L6_6 = L4_4
  L5_5 = L5_5(L6_6, "([^\\]+)$")
  if L5_5 == nil then
    L6_6 = mp
    L6_6 = L6_6.CLEAN
    return L6_6
  end
  L6_6 = string
  L6_6 = L6_6.find
  L6_6 = L6_6(L5_5, " ", 1, true)
  if L6_6 ~= nil then
    L6_6 = L5_5.gsub
    L6_6 = L6_6(L5_5, "%s", "/x20")
    L5_5 = L6_6
    if L5_5 ~= nil then
      L6_6 = #L5_5
    elseif L6_6 > 38 then
      L6_6 = mp
      L6_6 = L6_6.CLEAN
      return L6_6
    end
  end
  L6_6 = "Lua:ParentProcNameAttr!"
  mp.set_mpattribute(L6_6 .. L5_5)
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
