local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
  if L0_0 ~= L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_PROCESSNAME
L1_1 = L1_1(L2_2)
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L3_3 = L1_1
L2_2 = L2_2(L3_3)
L1_1 = L2_2
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = "cscript.exe|wscript.exe|mshta.exe|cmd.exe|powershell.exe|pwsh.exe|console.exe|bash.exe|dllhost.exe|rundll32.exe|regsvr32.exe|wmiprvse.exe"
L4_4 = L2_2
L3_3 = L2_2.find
L5_5 = L1_1
L3_3 = L3_3(L4_4, L5_5)
if L3_3 then
  L3_3 = mp
  L3_3 = L3_3.getfilename
  L4_4 = mp
  L4_4 = L4_4.bitor
  L5_5 = mp
  L5_5 = L5_5.bitor
  L5_5 = L5_5(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH)
  L5_5 = L4_4(L5_5, mp.FILEPATH_QUERY_LOWERCASE)
  L4_4 = L3_3(L4_4, L5_5, L4_4(L5_5, mp.FILEPATH_QUERY_LOWERCASE))
  L5_5 = L4_4.sub
  L5_5 = L5_5(L4_4, -3)
  mp.set_mpattribute("Lua:StubApp!" .. L1_1)
  mp.set_mpattribute("Lua:StubAppDropped!" .. L4_4)
  mp.set_mpattribute("Lua:StubAppDroppedExt!" .. L5_5)
  if L0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE and mp.get_contextdata(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
    if ("obj|etl|log|pdb|edb|mdb|sdb|tmf|emf|wmf|spl|off|bak|m4a|mp4|mp3|wav|bmp|ico|kgx|idx|.md|tml|tar|ent|iff|ttf|tif|pak|aml|yml|mof|man|che|ore|new|mui"):find(L5_5) then
    end
    if mp.get_mpattribute("BM_MZ_FILE") then
      mp.set_mpattribute("BM_PeFileDropByStubApp")
    elseif mp.get_mpattribute("BM_LNK_FILE") then
      mp.set_mpattribute("BM_LnkFileDropByStubApp")
    elseif mp.get_mpattribute("BM_ScriptFile") then
      mp.set_mpattribute("BM_ScriptFileDropByStubApp")
    end
    if L3_3:find("\\lotus\\notes\\data\\", 1, true) and true then
      mp.set_mpattribute("Lua:CleanStubsExcludePath")
    end
    if not (L3_3:find("\\lotus\\notes\\data\\", 1, true) and true) then
      if L3_3:match("windows\\temp") then
        mp.set_mpattribute("Lua:StubAppDroppedIn!wintemp")
      end
      if L3_3:match("users\\.-\\appdata\\local") then
        mp.set_mpattribute("Lua:StubAppDroppedIn!localappdata")
      end
      if L3_3:match("users\\.-\\appdata\\remote") then
        mp.set_mpattribute("Lua:StubAppDroppedIn!remoteappdata")
      end
      if L3_3:match("users\\.-\\appdata\\local\\temp") then
        mp.set_mpattribute("Lua:StubAppDroppedIn!usrtemp")
      end
      if L3_3:match("users\\.-\\desktop$") then
        mp.set_mpattribute("Lua:StubAppDroppedIn!usrdesktop")
      end
      if L3_3:match("users\\.-\\documents$") then
        mp.set_mpattribute("Lua:StubAppDroppedIn!usrdocs")
      end
      if L3_3:match("windows\\inetcache") then
        mp.set_mpattribute("Lua:StubAppDroppedIn!inetcache")
      end
    end
  end
  return mp.INFECTED
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
