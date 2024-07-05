local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = pcall
L1_1 = mp
L1_1 = L1_1.getfilename
L2_2 = mp
L2_2 = L2_2.FILEPATH_QUERY_FULL
L1_1 = L0_0(L1_1, L2_2)
if L0_0 then
  L2_2 = "AppData\\Local"
  L4_4 = L1_1
  L3_3 = L1_1.find
  L3_3 = L3_3(L4_4, L2_2, 1, true)
  if L3_3 == nil then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  L4_4 = string
  L4_4 = L4_4.sub
  L4_4 = L4_4(L1_1, L3_3 + #L2_2)
  if L4_4:gsub("\\", "") < 4 and L4_4:gsub("\\", "") > 6 then
    return mp.CLEAN
  end
  if MpCommon.StringRegExpSearch("([a-zA-Z0-9]{10,20}\\\\[a-zA-Z0-9]{10,20}\\\\[a-zA-Z0-9]{10,20}.[a-z]{3}$)", L4_4) == false then
    return mp.CLEAN
  end
  if ({
    ["\\Microsoft\\Windows\\PowerShell\\"] = true,
    ["\\Microsoft\\Office\\PowerPoint\\"] = true,
    ["\\Microsoft\\Internet Explorer\\"] = true,
    ["\\Microsoft\\Office\\Publisher\\"] = true,
    ["\\Microsoft\\Windows\\Explorer\\"] = true,
    ["\\Microsoft\\Office\\Outlook\\"] = true,
    ["\\Microsoft\\Windows\\Shell\\"] = true,
    ["\\Microsoft\\Office\\Access\\"] = true,
    ["\\Microsoft\\Office\\Visio\\"] = true,
    ["\\Microsoft\\Office\\Excel\\"] = true,
    ["\\Microsoft\\Media Player\\"] = true,
    ["\\Microsoft\\Office\\Word\\"] = true,
    ["\\Microsoft\\VisualStudio\\"] = true,
    ["\\Microsoft\\CLR_v2.0_32\\"] = true,
    ["\\Microsoft\\CLR_v4.0_32\\"] = true,
    ["\\Microsoft\\Powerpoint\\"] = true,
    ["\\Microsoft\\Installer\\"] = true,
    ["\\Microsoft\\CLR_v2.0\\"] = true,
    ["\\Microsoft\\CLR_v4.0\\"] = true,
    ["\\Microsoft\\OneDrive\\"] = true,
    ["\\Microsoft\\Network\\"] = true,
    ["\\Microsoft\\Outlook\\"] = true,
    ["\\Microsoft\\MSBuild\\"] = true,
    ["\\Microsoft\\Office\\"] = true,
    ["\\Microsoft\\DotNet\\"] = true,
    ["\\Microsoft\\Access\\"] = true,
    ["\\Microsoft\\AddIns\\"] = true,
    ["\\Microsoft\\Crypto\\"] = true,
    ["\\Microsoft\\Vault\\"] = true,
    ["\\Microsoft\\Excel\\"] = true,
    ["\\Mozilla\\Firefox\\"] = true,
    ["\\Microsoft\\Word\\"] = true,
    ["\\Microsoft\\"] = true,
    ["\\Adobe\\"] = true
  })[string.sub(L4_4, 0, #L4_4 - #MpCommon.StringRegExpSearch("([a-zA-Z0-9]{10,20}\\\\[a-zA-Z0-9]{10,20}\\\\[a-zA-Z0-9]{10,20}.[a-z]{3}$)", L4_4))] then
    return mp.INFECTED
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
