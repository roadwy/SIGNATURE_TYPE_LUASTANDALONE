local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_FILEPATH
L0_0 = L0_0(L1_1)
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.len
  L2_2 = L0_0
  L1_1 = L1_1(L2_2)
  if not (L1_1 < 10) then
    L1_1 = string
    L1_1 = L1_1.sub
    L2_2 = string
    L2_2 = L2_2.lower
    L3_3 = L0_0
    L2_2 = L2_2(L3_3)
    L3_3 = -9
    L1_1 = L1_1(L2_2, L3_3)
  end
elseif L1_1 ~= "\\system32" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = mp
L2_2 = L2_2.get_contextdata
L3_3 = mp
L3_3 = L3_3.CONTEXT_DATA_FILENAME
L6_6 = L2_2(L3_3)
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L2_2(L3_3))
if L1_1 ~= nil then
  L2_2 = string
  L2_2 = L2_2.len
  L3_3 = L1_1
  L2_2 = L2_2(L3_3)
  if not (L2_2 < 5) then
    L2_2 = string
    L2_2 = L2_2.sub
    L3_3 = L1_1
    L4_4 = -4
    L2_2 = L2_2(L3_3, L4_4)
  end
elseif L2_2 ~= ".exe" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = {}
L3_3 = {}
L3_3["sethc.exe"] = true
L3_3.sethc = true
L2_2["sethc.exe"] = L3_3
L3_3 = {}
L3_3["utilman.exe"] = true
L3_3["utilman2.exe"] = true
L3_3.utilman = true
L2_2["utilman.exe"] = L3_3
L3_3 = {}
L3_3["osk.exe"] = true
L3_3.osk = true
L2_2["osk.exe"] = L3_3
L3_3 = {}
L3_3["screenmagnifier.exe"] = true
L3_3["magnify.exe"] = true
L3_3.magnifier = true
L2_2["magnify.exe"] = L3_3
L3_3 = {}
L3_3["narrator.exe"] = true
L3_3["sr.exe"] = true
L3_3.narrator = true
L2_2["narrator.exe"] = L3_3
L3_3 = {}
L3_3["displayswitch.exe"] = true
L3_3.displayswitch = true
L2_2["displayswitch.exe"] = L3_3
L3_3 = {}
L3_3["atbroker.exe"] = true
L2_2["atbroker.exe"] = L3_3
L3_3 = L2_2[L1_1]
if L3_3 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.lower
L4_4 = MpCommon
L4_4 = L4_4.PathToWin32Path
L5_5 = L0_0
L6_6 = L4_4(L5_5)
L3_3 = L3_3(L4_4, L5_5, L6_6, L4_4(L5_5))
L0_0 = L3_3
L4_4 = L0_0
L3_3 = L0_0.gsub
L5_5 = "\\\\%?\\"
L6_6 = ""
L3_3 = L3_3(L4_4, L5_5, L6_6)
L0_0 = L3_3
L3_3 = string
L3_3 = L3_3.lower
L4_4 = MpCommon
L4_4 = L4_4.ExpandEnvironmentVariables
L5_5 = "%windir%"
L4_4 = L4_4(L5_5)
L5_5 = "\\system32"
L4_4 = L4_4 .. L5_5
L3_3 = L3_3(L4_4)
if L0_0 ~= L3_3 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = pe
L4_4 = L4_4.get_versioninfo
L4_4 = L4_4()
if L4_4 ~= nil then
  L5_5 = L4_4.OriginalFilename
  if L5_5 ~= nil then
    L5_5 = L4_4.InternalName
    if L5_5 ~= nil then
      L5_5 = L4_4.CompanyName
    end
  end
elseif L5_5 == nil then
  L5_5 = mp
  L5_5 = L5_5.set_mpattribute
  L6_6 = "Lua:AccessibilityEscalationContext.B!noversioninfo"
  L5_5(L6_6)
  L5_5 = mp
  L5_5 = L5_5.INFECTED
  return L5_5
end
L5_5 = false
L6_6 = L0_0
L6_6 = L6_6 .. "\\" .. L1_1
if (mp.IsTrustedFile(false) == true or mp.IsKnownFriendlyFile(L6_6, true, false)) == true then
  L5_5 = true
end
if L2_2[L1_1][string.lower(L4_4.OriginalFilename)] ~= nil and L2_2[L1_1][string.lower(L4_4.InternalName)] ~= nil and string.lower(L4_4.CompanyName) == "microsoft corporation" then
  if not L5_5 then
    mp.set_mpattribute("Lua:AccessibilityEscalationContext.B!mimick")
    return mp.INFECTED
  end
  return mp.CLEAN
end
if L2_2[L1_1][string.lower(L4_4.OriginalFilename)] == nil then
  mp.set_mpattribute("Lua:AccessibilityEscalationContext.B!originalfname_nomatch")
end
if L2_2[L1_1][string.lower(L4_4.InternalName)] == nil then
  mp.set_mpattribute("Lua:AccessibilityEscalationContext.B!internalname_nomatch")
end
if string.lower(L4_4.CompanyName) ~= "microsoft corporation" then
  mp.set_mpattribute("Lua:AccessibilityEscalationContext.B!company_nomatch")
end
if L5_5 then
  mp.set_mpattribute("Lua:AccessibilityEscalationContext.B!friendly")
else
  mp.set_mpattribute("Lua:AccessibilityEscalationContext.B!unfriendly")
end
return mp.INFECTED
