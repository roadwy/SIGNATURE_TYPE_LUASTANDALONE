local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = ""
L1_1 = mp
L1_1 = L1_1.get_mpattribute
L2_2 = "//SCRIPT:ContentTypeMacroSheet"
L1_1 = L1_1(L2_2)
if L1_1 then
  L0_0 = "OXML"
else
  L1_1 = mp
  L1_1 = L1_1.get_mpattribute
  L2_2 = "AGGR:XlsHasMacroSheet"
  L1_1 = L1_1(L2_2)
  if L1_1 then
    L0_0 = "OLE"
  else
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = "Lua:XL4"
L2_2 = L0_0
L1_1 = L1_1 .. L2_2
L2_2 = mp
L2_2 = L2_2.set_mpattribute
L3_3 = "//Lua:XL4MacroFile"
L2_2(L3_3)
L2_2 = ""
L3_3 = sysio
L3_3 = L3_3.RegOpenKey
L4_4 = "HKCU\\Software\\Microsoft\\Office\\16.0\\Excel"
L3_3 = L3_3(L4_4)
if L3_3 ~= nil then
  L2_2 = "16.0"
else
  L4_4 = sysio
  L4_4 = L4_4.RegOpenKey
  L5_5 = "HKCU\\Software\\Microsoft\\Office\\15.0\\Excel"
  L4_4 = L4_4(L5_5)
  L3_3 = L4_4
  if L3_3 ~= nil then
    L2_2 = "15.0"
  else
    L4_4 = sysio
    L4_4 = L4_4.RegOpenKey
    L5_5 = "HKCU\\Software\\Microsoft\\Office\\14.0\\Excel"
    L4_4 = L4_4(L5_5)
    L3_3 = L4_4
    if L3_3 ~= nil then
      L2_2 = "14.0"
    else
      L4_4 = mp
      L4_4 = L4_4.set_mpattribute
      L5_5 = L1_1
      L5_5 = L5_5 .. "MacroDisabled.Z"
      L4_4(L5_5)
      L4_4 = mp
      L4_4 = L4_4.CLEAN
      return L4_4
    end
  end
end
L4_4 = sysio
L4_4 = L4_4.RegOpenKey
L5_5 = "HKCU\\Software\\Microsoft\\Office\\"
L5_5 = L5_5 .. L2_2 .. "\\Excel\\Security"
L4_4 = L4_4(L5_5)
if L4_4 ~= nil then
  if L2_2 == "16.0" then
    L5_5 = sysio
    L5_5 = L5_5.GetRegValueAsDword
    L5_5 = L5_5(L4_4, "XL4MacroWarningFollowVBA")
    if L5_5 == 0 then
      mp.set_mpattribute(L1_1 .. "MacroDisabled.A")
      return mp.CLEAN
    end
    if sysio.GetRegValueAsDword(L4_4, "XL4MacroOff") == 1 then
      mp.set_mpattribute(L1_1 .. "MacroDisabled.D")
      return mp.CLEAN
    end
  end
  L5_5 = sysio
  L5_5 = L5_5.GetRegValueAsDword
  L5_5 = L5_5(L4_4, "VBAWarnings")
  if L5_5 == 3 then
    mp.set_mpattribute(L1_1 .. "MacroDisabled.B")
    return mp.CLEAN
  end
  if L5_5 == 4 then
    mp.set_mpattribute(L1_1 .. "MacroDisabled.C")
    return mp.CLEAN
  end
end
L5_5 = sysio
L5_5 = L5_5.RegOpenKey
L5_5 = L5_5("HKCU\\Software\\Policies\\Microsoft\\office\\" .. L2_2 .. "\\excel\\security")
if L5_5 ~= nil then
  if L2_2 == "16.0" then
    if sysio.GetRegValueAsDword(L5_5, "XL4MacroWarningFollowVBA") == 0 then
      mp.set_mpattribute(L1_1 .. "MacroDisabled.E")
      return mp.CLEAN
    end
    if sysio.GetRegValueAsDword(L5_5, "XL4MacroOff") == 1 then
      mp.set_mpattribute(L1_1 .. "MacroDisabled.H")
      return mp.CLEAN
    end
  end
  if sysio.GetRegValueAsDword(L5_5, "VBAWarnings") == 3 then
    mp.set_mpattribute(L1_1 .. "MacroDisabled.F")
    return mp.CLEAN
  end
  if sysio.GetRegValueAsDword(L5_5, "VBAWarnings") == 4 then
    mp.set_mpattribute(L1_1 .. "MacroDisabled.G")
    return mp.CLEAN
  end
end
mp.set_mpattribute(L1_1 .. "MacroEnabled.A")
return mp.INFECTED
