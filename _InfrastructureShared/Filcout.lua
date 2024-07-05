local L0_0, L1_1, L2_2, L3_3
L0_0 = sysio
L0_0 = L0_0.RegOpenKey
L1_1 = "HKCR\\*\\shell\\filescout"
L0_0 = L0_0(L1_1)
if L0_0 ~= nil then
  L1_1 = sysio
  L1_1 = L1_1.DeleteRegKey
  L2_2 = L0_0
  L3_3 = nil
  L1_1(L2_2, L3_3)
end
L1_1 = sysio
L1_1 = L1_1.RegOpenKey
L2_2 = "HKCR\\*\\shell\\unknownfile"
L1_1 = L1_1(L2_2)
if L1_1 ~= nil then
  L2_2 = sysio
  L2_2 = L2_2.DeleteRegKey
  L3_3 = L1_1
  L2_2(L3_3, nil)
end
L2_2 = sysio
L2_2 = L2_2.RegOpenKey
L3_3 = "HKCR\\Unknown\\shell\\openas\\command"
L2_2 = L2_2(L3_3)
if L2_2 ~= nil then
  L3_3 = sysio
  L3_3 = L3_3.GetRegValueAsString
  L3_3 = L3_3(L2_2, nil)
  if L3_3 ~= nil and (string.find(string.lower(L3_3), "filescout.exe") or string.find(string.lower(L3_3), "unknownfile.exe")) then
    if Info.OSMajorVersion == 6 then
      if Info.OSMinorVersion >= 2 and Info.OSMinorVersion <= 3 then
        sysio.SetRegValueAsStringExpand(L2_2, nil, "%SystemRoot%\\system32\\OpenWith.exe \"%1\"")
      end
    else
      sysio.SetRegValueAsStringExpand(L2_2, nil, "%SystemRoot%\\system32\\rundll32.exe %SystemRoot%\\system32\\shell32.dll,OpenAs_RunDLL %1")
    end
  end
  if sysio.GetRegValueAsString(L2_2, "fs_DelegateExecute") ~= nil and sysio.GetRegValueAsString(L2_2, "fs_DelegateExecute") == "{e44e9428-bdbc-4987-a099-40dc8fd255e7}" then
    sysio.SetRegValueAsString(L2_2, "DelegateExecute", "{e44e9428-bdbc-4987-a099-40dc8fd255e7}")
  end
end
