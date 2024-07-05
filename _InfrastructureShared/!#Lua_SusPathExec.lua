local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 == L1_1 then
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L2_2 = mp
  L2_2 = L2_2.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT
  L1_1 = L1_1(L2_2)
  if L1_1 == true then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = mp
    L2_2 = L2_2.getfilename
    L5_5 = L2_2()
    L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L2_2())
    L2_2 = "|"
    L3_3 = string
    L3_3 = L3_3.sub
    L4_4 = L1_1
    L5_5 = -4
    L3_3 = L3_3(L4_4, L5_5)
    L4_4 = "|"
    L2_2 = L2_2 .. L3_3 .. L4_4
    L3_3 = "|.exe|.scr|.cpl|.bat|.com|.cmd|.pif|.ps1|.vbs|"
    L5_5 = L3_3
    L4_4 = L3_3.find
    L4_4 = L4_4(L5_5, L2_2, 1, true)
    if L4_4 == nil then
      L4_4 = mp
      L4_4 = L4_4.CLEAN
      return L4_4
    end
    L4_4 = string
    L4_4 = L4_4.lower
    L5_5 = mp
    L5_5 = L5_5.get_contextdata
    L5_5 = L5_5(mp.CONTEXT_DATA_FILEPATH)
    L4_4 = L4_4(L5_5, L5_5(mp.CONTEXT_DATA_FILEPATH))
    if L4_4 == nil then
      L5_5 = mp
      L5_5 = L5_5.CLEAN
      return L5_5
    end
    L5_5 = string
    L5_5 = L5_5.len
    L5_5 = L5_5(L4_4)
    if L5_5 >= 10 then
      L5_5 = mp
      L5_5 = L5_5.CLEAN
      return L5_5
    end
    L5_5 = string
    L5_5 = L5_5.sub
    L5_5 = L5_5(L4_4, 1, 8)
    if L5_5 == "\\device\\" then
      L5_5 = MpCommon
      L5_5 = L5_5.PathToWin32Path
      L5_5 = L5_5(L4_4)
      L4_4 = L5_5
    end
    L5_5 = L4_4.find
    L5_5 = L5_5(L4_4, ":\\recycle", 1, true)
    if not L5_5 then
      L5_5 = L4_4.find
      L5_5 = L5_5(L4_4, ":\\$.recycle.bin", 1, true)
    elseif L5_5 then
      L5_5 = mp
      L5_5 = L5_5.set_mpattribute
      L5_5("Lua:NewAutoExec.AA")
      L5_5 = mp
      L5_5 = L5_5.CLEAN
      return L5_5
    end
    L5_5 = L4_4.find
    L5_5 = L5_5(L4_4, ":\\windows\\", 1, true)
    if L5_5 then
      L5_5 = string
      L5_5 = L5_5.lower
      L5_5 = L5_5(MpCommon.ExpandEnvironmentVariables("%WINDIR%"))
      if L5_5 and (L5_5 == L4_4 or L5_5 .. "\\system32" == L4_4 or L5_5 .. "\\syswow64" == L4_4 or L5_5 .. "\\temp" == L4_4) then
        mp.set_mpattribute("Lua:NewAutoExec.BA")
      end
      return mp.CLEAN
    end
    L5_5 = L4_4.find
    L5_5 = L5_5(L4_4, ":\\program files", 1, true)
    if L5_5 then
      L5_5 = string
      L5_5 = L5_5.lower
      L5_5 = L5_5(MpCommon.ExpandEnvironmentVariables("%PROGRAMFILES%"))
      if L5_5 and (L4_4:find(L5_5 .. "\\common files", 1, true) or L4_4:find(L5_5 .. " (x86)\\common files", 1, true)) then
        mp.set_mpattribute("Lua:NewAutoExec.CA")
      end
      return mp.CLEAN
    end
    L5_5 = L4_4.find
    L5_5 = L5_5(L4_4, "\\temp", 1, true)
    if L5_5 then
      L5_5 = string
      L5_5 = L5_5.lower
      L5_5 = L5_5(mp.ContextualExpandEnvironmentVariables("%TEMP%"))
      if L5_5 and L4_4:find(L5_5, 1, true) then
        mp.set_mpattribute("Lua:NewAutoExec.DA")
      end
      return mp.CLEAN
    end
    L5_5 = L4_4.find
    L5_5 = L5_5(L4_4, "\\appdata", 1, true)
    if not L5_5 then
      L5_5 = L4_4.find
      L5_5 = L5_5(L4_4, "\\application data", 1, true)
    elseif L5_5 then
      L5_5 = string
      L5_5 = L5_5.lower
      L5_5 = L5_5(mp.ContextualExpandEnvironmentVariables("%APPDATA%"))
      if L5_5 and L4_4:find(L5_5, 1, true) then
        mp.set_mpattribute("Lua:NewAutoExec.EA")
      end
      return mp.CLEAN
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
