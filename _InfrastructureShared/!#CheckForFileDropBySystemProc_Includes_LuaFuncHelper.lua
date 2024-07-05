local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = mp
L0_0 = L0_0.ENGINEBUILD
if L0_0 > 19850 then
  L0_0 = mp
  L0_0 = L0_0.get_mpattribute
  L1_1 = "Lua:RemoteContextPresent"
  L0_0 = L0_0(L1_1)
  if not L0_0 then
    L0_0 = mp
    L0_0 = L0_0.set_mpattribute
    L1_1 = "Lua:RemoteCopyExclusions"
    L0_0(L1_1)
    L0_0 = mp
    L0_0 = L0_0.CLEAN
    return L0_0
  end
end
function L0_0(A0_10, A1_11, A2_12)
  if not MpCommon.QueryPersistContext(A0_10, A1_11) then
    MpCommon.AppendPersistContext(A0_10, A1_11, 100)
  end
  mp.set_mpattribute(A2_12)
end
SetAttributeAndContext = L0_0
L0_0 = mp
L0_0 = L0_0.CLEAN
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_FILEPATH
L1_1 = L1_1(L2_2)
if not L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L3_3 = L1_1
L2_2 = L2_2(L3_3)
L1_1 = L2_2
L3_3 = L1_1
L2_2 = L1_1.sub
L4_4 = 1
L5_5 = 8
L2_2 = L2_2(L3_3, L4_4, L5_5)
if L2_2 == "\\device\\" then
  L2_2 = MpCommon
  L2_2 = L2_2.PathToWin32Path
  L3_3 = L1_1
  L2_2 = L2_2(L3_3)
  L1_1 = L2_2
end
if not L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L3_3 = L1_1
L2_2 = L2_2(L3_3)
L1_1 = L2_2
L2_2 = mp
L2_2 = L2_2.getfilename
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_LOWERCASE
L2_2 = L2_2(L3_3)
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L4_4 = L2_2
L3_3 = L2_2.sub
L5_5 = 1
L6_6 = 8
L3_3 = L3_3(L4_4, L5_5, L6_6)
if L3_3 == "\\device\\" then
  L3_3 = MpCommon
  L3_3 = L3_3.PathToWin32Path
  L4_4 = L2_2
  L3_3 = L3_3(L4_4)
  L2_2 = L3_3
end
L3_3 = string
L3_3 = L3_3.lower
L4_4 = L2_2
L3_3 = L3_3(L4_4)
L2_2 = L3_3
L3_3 = {}
L3_3["c:\\windows\\system32"] = "sysdir"
L3_3["c:\\windows"] = "windir"
L3_3["c:\\windows\\temp"] = "wintemp"
L3_3["c:\\users\\public\\desktop"] = "usrprofpub"
L3_3["c:\\users\\public\\documents"] = "usrprofpub"
L3_3["c:\\users\\default\\documents"] = "usrprofdef"
L3_3["c:\\users\\default\\desktop"] = "usrprofdef"
L3_3["c:\\perflogs"] = "perflog"
L3_3["c:"] = "c_root"
L3_3["d:"] = "d_root"
L3_3["e:"] = "e_root"
L3_3["f:"] = "f_root"
L3_3["g:"] = "g_root"
L3_3["h:"] = "h_root"
L3_3["i:"] = "i_root"
L3_3["j:"] = "j_root"
L3_3["k:"] = "k_root"
L3_3["l:"] = "l_root"
L3_3["m:"] = "m_root"
L3_3["n:"] = "n_root"
L3_3["o:"] = "o_root"
L3_3["p:"] = "p_root"
L3_3["q:"] = "q_root"
L3_3["r:"] = "r_root"
L3_3["s:"] = "s_root"
L3_3["t:"] = "t_root"
L3_3["u:"] = "u_root"
L3_3["v:"] = "v_root"
L3_3["w:"] = "w_root"
L3_3["x:"] = "x_root"
L3_3["y:"] = "y_root"
L3_3["z:"] = "z_root"
L4_4 = L3_3[L1_1]
L5_5 = "FileDropBySystemProc_"
L6_6 = "Lua:Context/FileDropBySystemProc!"
L7_7 = mp
L7_7 = L7_7.get_mpattribute
L8_8 = "BM_MZ_FILE"
L7_7 = L7_7(L8_8)
if L7_7 then
  L5_5 = "ExeFileDropBySystemProc_"
  L6_6 = "Lua:Context/ExeFileDropBySystemProc!"
  L7_7 = mp
  L7_7 = L7_7.set_mpattribute
  L8_8 = "Lua:SuspExeFileDropBySystemProc"
  L7_7(L8_8)
  L7_7 = AppendToRollingQueue
  L8_8 = "SuspExeFileDroppedViaSMB"
  L9_9 = L2_2
  L7_7(L8_8, L9_9, nil, 5000)
else
  L7_7 = mp
  L7_7 = L7_7.set_mpattribute
  L8_8 = "Lua:SuspFileDropBySystemProc"
  L7_7(L8_8)
  L7_7 = AppendToRollingQueue
  L8_8 = "SuspFileDroppedViaSMB"
  L9_9 = L2_2
  L7_7(L8_8, L9_9, nil, 5000)
end
L7_7 = L3_3[L1_1]
if L7_7 ~= nil then
  L7_7 = L5_5
  L8_8 = L4_4
  L7_7 = L7_7 .. L8_8
  L8_8 = L6_6
  L9_9 = L4_4
  L8_8 = L8_8 .. L9_9
  L9_9 = SetAttributeAndContext
  L9_9(L2_2, L7_7, L8_8)
  L9_9 = L4_4.find
  L9_9 = L9_9(L4_4, "_root", 1, true)
  if L9_9 then
    L9_9 = mp
    L9_9 = L9_9.set_mpattribute
    L9_9("Lua:Context/FileDropBySystemAtRoot")
  end
  L9_9 = mp
  L9_9 = L9_9.INFECTED
  return L9_9
end
L7_7 = mp
L7_7 = L7_7.get_mpattribute
L8_8 = "Lua:CloudBlockLevelGT3"
L7_7 = L7_7(L8_8)
if not L7_7 then
  L7_7 = mp
  L7_7 = L7_7.get_mpattribute
  L8_8 = "Lua:TT:DetectionThresholdMet"
  L7_7 = L7_7(L8_8)
elseif L7_7 then
  L7_7 = false
  L9_9 = L1_1
  L8_8 = L1_1.match
  L8_8 = L8_8(L9_9, "c:\\users\\.-\\appdata\\.-\\microsoft\\windows\\start menu\\programs\\startup")
  if L8_8 then
    L4_4 = "startup"
    L8_8 = L5_5
    L9_9 = L4_4
    L8_8 = L8_8 .. L9_9
    L9_9 = L6_6
    L9_9 = L9_9 .. L4_4
    SetAttributeAndContext(L2_2, L8_8, L9_9)
    L0_0 = mp.INFECTED
    L7_7 = true
  end
  L9_9 = L1_1
  L8_8 = L1_1.match
  L8_8 = L8_8(L9_9, "c:\\users\\.-\\desktop\\[^\\]*$")
  if L8_8 then
    L4_4 = "desktop"
    L8_8 = L5_5
    L9_9 = L4_4
    L8_8 = L8_8 .. L9_9
    L9_9 = L6_6
    L9_9 = L9_9 .. L4_4
    SetAttributeAndContext(L2_2, L8_8, L9_9)
    L0_0 = mp.INFECTED
  end
  L9_9 = L1_1
  L8_8 = L1_1.match
  L8_8 = L8_8(L9_9, "c:\\users\\.-\\appdata\\local\\temp")
  if L8_8 then
    L4_4 = "usrtemp"
    L8_8 = L5_5
    L9_9 = L4_4
    L8_8 = L8_8 .. L9_9
    L9_9 = L6_6
    L9_9 = L9_9 .. L4_4
    SetAttributeAndContext(L2_2, L8_8, L9_9)
    L0_0 = mp.INFECTED
    L7_7 = true
  end
  if not L7_7 then
    L9_9 = L1_1
    L8_8 = L1_1.match
    L8_8 = L8_8(L9_9, "c:\\users\\.-\\appdata\\local\\")
    if L8_8 then
      L4_4 = "appdatalocal"
      L8_8 = L5_5
      L9_9 = L4_4
      L8_8 = L8_8 .. L9_9
      L9_9 = L6_6
      L9_9 = L9_9 .. L4_4
      SetAttributeAndContext(L2_2, L8_8, L9_9)
      L0_0 = mp.INFECTED
    end
  end
  L9_9 = L1_1
  L8_8 = L1_1.match
  L8_8 = L8_8(L9_9, "c:\\windows\\system32\\config\\systemprofile")
  if L8_8 then
    L9_9 = L1_1
    L8_8 = L1_1.find
    L8_8 = L8_8(L9_9, "\\appdata\\", 1, true)
    if not L8_8 then
      L4_4 = "sysprof"
      L8_8 = L5_5
      L9_9 = L4_4
      L8_8 = L8_8 .. L9_9
      L9_9 = L6_6
      L9_9 = L9_9 .. L4_4
      SetAttributeAndContext(L2_2, L8_8, L9_9)
      L0_0 = mp.INFECTED
    end
  end
  L9_9 = L1_1
  L8_8 = L1_1.match
  L8_8 = L8_8(L9_9, "c:\\windows\\system32\\config\\systemprofile\\appdata")
  if L8_8 then
    L4_4 = "sysappdata"
    L8_8 = L5_5
    L9_9 = L4_4
    L8_8 = L8_8 .. L9_9
    L9_9 = L6_6
    L9_9 = L9_9 .. L4_4
    SetAttributeAndContext(L2_2, L8_8, L9_9)
    L0_0 = mp.INFECTED
  end
  L9_9 = L1_1
  L8_8 = L1_1.match
  L8_8 = L8_8(L9_9, "c:\\windows\\system32\\spool\\")
  if L8_8 then
    L4_4 = "spool"
    L8_8 = L5_5
    L9_9 = L4_4
    L8_8 = L8_8 .. L9_9
    L9_9 = L6_6
    L9_9 = L9_9 .. L4_4
    SetAttributeAndContext(L2_2, L8_8, L9_9)
    L0_0 = mp.INFECTED
  end
end
L7_7 = mp
L7_7 = L7_7.INFECTED
if L0_0 == L7_7 then
  L7_7 = mp
  L7_7 = L7_7.INFECTED
  return L7_7
end
L7_7 = mp
L7_7 = L7_7.CLEAN
return L7_7
