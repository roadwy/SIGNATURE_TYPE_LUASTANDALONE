function NecursServiceRepair()
  local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
  L1_1 = sysio
  L1_1 = L1_1.RegExpandUserKey
  L1_1 = L1_1(L2_2)
  for L5_5, L6_6 in L2_2(L3_3) do
    L7_7 = sysio
    L7_7 = L7_7.RegOpenKey
    L7_7 = L7_7(L6_6)
    if L7_7 then
      L0_0 = sysio.GetRegValueAsString(L7_7, "syshost32")
      if L0_0 then
        sysio.DeleteRegValue(L7_7, "syshost32")
        break
      end
    end
  end
  if L2_2 then
    L5_5 = "syshost32"
    L0_0 = L3_3
    if L0_0 then
      L5_5 = "syshost32"
      L3_3(L4_4, L5_5)
    end
  end
  if not L0_0 then
    if not L3_3 then
      return L4_4
    else
      L5_5 = L3_3
      L6_6 = "ImagePath"
      L0_0 = L4_4
      if not L0_0 then
        return L4_4
      end
      L5_5 = string
      L5_5 = L5_5.lower
      L6_6 = L0_0
      L5_5 = L5_5(L6_6)
      L6_6 = "%a:\\windows\\installer\\{[%w-]+}\\syshost.exe"
      L0_0 = L4_4
      if not L0_0 then
        return L4_4
      end
    end
  end
  if L0_0 then
    L0_0 = L3_3 .. L4_4
    L3_3(L4_4)
  end
end
function NecursGenericBTRRemoval()
  local L0_8
  L0_8 = Remediation
  L0_8 = L0_8.Threat
  for _FORV_4_, _FORV_5_ in pairs(L0_8.Resources) do
    if _FORV_5_.Schema == "hiddendriver" then
      Remediation.FfrDriverDeleteByDriverName(_FORV_5_.Path)
    elseif _FORV_5_.Schema == "hiddenfile" then
      Remediation.BtrDeleteFile(_FORV_5_.Path)
    end
  end
end
if Remediation.Threat.Active then
  if string.match(Remediation.Threat.Name, "WinNT/Necurs") then
    NecursServiceRepair()
  end
  if string.match(Remediation.Threat.Name, "Trojan:Win[N6][T4]/Necurs") then
    NecursGenericBTRRemoval()
  end
end
