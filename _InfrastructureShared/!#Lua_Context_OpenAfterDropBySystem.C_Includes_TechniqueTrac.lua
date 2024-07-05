local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14
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
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.FILEPATH_QUERY_LOWERCASE
L0_0 = L0_0(L1_1)
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L2_2 = L0_0
L1_1 = L0_0.sub
L3_3 = 1
L4_4 = 8
L1_1 = L1_1(L2_2, L3_3, L4_4)
if L1_1 == "\\device\\" then
  L1_1 = MpCommon
  L1_1 = L1_1.PathToWin32Path
  L2_2 = L0_0
  L1_1 = L1_1(L2_2)
  L0_0 = L1_1
end
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L0_0 = L1_1
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
L2_2 = mp
L2_2 = L2_2.set_mpattribute
L3_3 = "Lua:Context/OpenAfterDropBySysproc!"
L4_4 = L1_1
L3_3 = L3_3 .. L4_4
L2_2(L3_3)
L2_2 = "cscript.exe|wscript.exe|mshta.exe|cmd.exe|powershell.exe|pwsh.exe|console.exe|bash.exe|dllhost.exe|rundll32.exe|regsvr32.exe|wmiprvse.exe|svchost.exe|wsmprovhost.exe|"
L4_4 = L2_2
L3_3 = L2_2.find
L3_3 = L3_3(L4_4, L5_5)
if L3_3 then
  L3_3 = mp
  L3_3 = L3_3.set_mpattribute
  L4_4 = "Lua:Context/SuspOpenAfterDropBySysproc!lolbin"
  L3_3(L4_4)
  L3_3 = mp
  L3_3 = L3_3.set_mpattribute
  L4_4 = "Lua:Context/SuspOpenAfterDropBySysproc!"
  L4_4 = L4_4 .. L5_5
  L3_3(L4_4)
  L3_3 = TrackPidAndTechnique
  L4_4 = "RTP"
  L3_3(L4_4, L5_5, L6_6)
end
L3_3 = MpCommon
L3_3 = L3_3.GetPersistContext
L4_4 = L0_0
L3_3 = L3_3(L4_4)
if L3_3 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = nil
if L5_5 then
  L5_5.ExeFileDropBySystemProc_sysdir = "Lua:Context/OpenExeAfterDropBySystem!sysdir"
  L5_5.ExeFileDropBySystemProc_windir = "Lua:Context/OpenExeAfterDropBySystem!windir"
  L5_5.ExeFileDropBySystemProc_wintemp = "Lua:Context/OpenExeAfterDropBySystem!wintemp"
  L5_5.ExeFileDropBySystemProc_startup = "Lua:Context/OpenExeAfterDropBySystem!startup"
  L5_5.ExeFileDropBySystemProc_desktop = "Lua:Context/OpenExeAfterDropBySystem!desktop"
  L5_5.ExeFileDropBySystemProc_appdatalocal = "Lua:Context/OpenExeAfterDropBySystem!appdatalocal"
  L5_5.ExeFileDropBySystemProc_usrtemp = "Lua:Context/OpenExeAfterDropBySystem!usrtemp"
  L5_5.ExeFileDropBySystemProc_sysprof = "Lua:Context/OpenExeAfterDropBySystem!sysprof"
  L5_5.ExeFileDropBySystemProc_sysappdata = "Lua:Context/OpenExeAfterDropBySystem!sysappdata"
  L5_5.ExeFileDropBySystemProc_usrprofpub = "Lua:Context/OpenExeAfterDropBySystem!usrprofpub"
  L5_5.ExeFileDropBySystemProc_usrprofdef = "Lua:Context/OpenExeAfterDropBySystem!usrprofdef"
  L5_5.ExeFileDropBySystemProc_perflog = "Lua:Context/OpenExeAfterDropBySystem!perflog"
  L5_5.ExeFileDropBySystemProc_spool = "Lua:Context/OpenExeAfterDropBySystem!spool"
  L5_5.ExeFileDropBySystemProc_c_root = "Lua:Context/OpenExeAfterDropBySystem!c_root"
  L5_5.ExeFileDropBySystemProc_d_root = "Lua:Context/OpenExeAfterDropBySystem!d_root"
  L5_5.ExeFileDropBySystemProc_e_root = "Lua:Context/OpenExeAfterDropBySystem!e_root"
  L5_5.ExeFileDropBySystemProc_f_root = "Lua:Context/OpenExeAfterDropBySystem!f_root"
  L5_5.ExeFileDropBySystemProc_g_root = "Lua:Context/OpenExeAfterDropBySystem!g_root"
  L5_5.ExeFileDropBySystemProc_h_root = "Lua:Context/OpenExeAfterDropBySystem!h_root"
  L5_5.ExeFileDropBySystemProc_i_root = "Lua:Context/OpenExeAfterDropBySystem!i_root"
  L5_5.ExeFileDropBySystemProc_j_root = "Lua:Context/OpenExeAfterDropBySystem!j_root"
  L5_5.ExeFileDropBySystemProc_k_root = "Lua:Context/OpenExeAfterDropBySystem!k_root"
  L5_5.ExeFileDropBySystemProc_l_root = "Lua:Context/OpenExeAfterDropBySystem!l_root"
  L5_5.ExeFileDropBySystemProc_m_root = "Lua:Context/OpenExeAfterDropBySystem!m_root"
  L5_5.ExeFileDropBySystemProc_n_root = "Lua:Context/OpenExeAfterDropBySystem!n_root"
  L5_5.ExeFileDropBySystemProc_o_root = "Lua:Context/OpenExeAfterDropBySystem!o_root"
  L5_5.ExeFileDropBySystemProc_p_root = "Lua:Context/OpenExeAfterDropBySystem!p_root"
  L5_5.ExeFileDropBySystemProc_q_root = "Lua:Context/OpenExeAfterDropBySystem!q_root"
  L5_5.ExeFileDropBySystemProc_r_root = "Lua:Context/OpenExeAfterDropBySystem!r_root"
  L5_5.ExeFileDropBySystemProc_s_root = "Lua:Context/OpenExeAfterDropBySystem!s_root"
  L5_5.ExeFileDropBySystemProc_t_root = "Lua:Context/OpenExeAfterDropBySystem!t_root"
  L5_5.ExeFileDropBySystemProc_u_root = "Lua:Context/OpenExeAfterDropBySystem!u_root"
  L5_5.ExeFileDropBySystemProc_v_root = "Lua:Context/OpenExeAfterDropBySystem!v_root"
  L5_5.ExeFileDropBySystemProc_w_root = "Lua:Context/OpenExeAfterDropBySystem!w_root"
  L5_5.ExeFileDropBySystemProc_x_root = "Lua:Context/OpenExeAfterDropBySystem!x_root"
  L5_5.ExeFileDropBySystemProc_y_root = "Lua:Context/OpenExeAfterDropBySystem!y_root"
  L5_5.ExeFileDropBySystemProc_z_root = "Lua:Context/OpenExeAfterDropBySystem!z_root"
  L4_4 = L5_5
else
  L5_5.FileDropBySystemProc_sysdir = "Lua:Context/OpenAfterDropBySystem!sysdir"
  L5_5.FileDropBySystemProc_windir = "Lua:Context/OpenAfterDropBySystem!windir"
  L5_5.FileDropBySystemProc_wintemp = "Lua:Context/OpenAfterDropBySystem!wintemp"
  L5_5.FileDropBySystemProc_startup = "Lua:Context/OpenAfterDropBySystem!startup"
  L5_5.FileDropBySystemProc_desktop = "Lua:Context/OpenAfterDropBySystem!desktop"
  L5_5.FileDropBySystemProc_appdatalocal = "Lua:Context/OpenAfterDropBySystem!appdatalocal"
  L5_5.FileDropBySystemProc_usrtemp = "Lua:Context/OpenAfterDropBySystem!usrtemp"
  L5_5.FileDropBySystemProc_sysprof = "Lua:Context/OpenAfterDropBySystem!sysprof"
  L5_5.FileDropBySystemProc_sysappdata = "Lua:Context/OpenAfterDropBySystem!sysappdata"
  L5_5.FileDropBySystemProc_usrprofpub = "Lua:Context/OpenAfterDropBySystem!usrprofpub"
  L5_5.FileDropBySystemProc_usrprofdef = "Lua:Context/OpenAfterDropBySystem!usrprofdef"
  L5_5.FileDropBySystemProc_perflog = "Lua:Context/OpenAfterDropBySystem!perflog"
  L5_5.FileDropBySystemProc_spool = "Lua:Context/OpenAfterDropBySystem!spool"
  L5_5.FileDropBySystemProc_c_root = "Lua:Context/OpenAfterDropBySystem!c_root"
  L5_5.FileDropBySystemProc_d_root = "Lua:Context/OpenAfterDropBySystem!d_root"
  L5_5.FileDropBySystemProc_e_root = "Lua:Context/OpenAfterDropBySystem!e_root"
  L5_5.FileDropBySystemProc_f_root = "Lua:Context/OpenAfterDropBySystem!f_root"
  L5_5.FileDropBySystemProc_g_root = "Lua:Context/OpenAfterDropBySystem!g_root"
  L5_5.FileDropBySystemProc_h_root = "Lua:Context/OpenAfterDropBySystem!h_root"
  L5_5.FileDropBySystemProc_i_root = "Lua:Context/OpenAfterDropBySystem!i_root"
  L5_5.FileDropBySystemProc_j_root = "Lua:Context/OpenAfterDropBySystem!j_root"
  L5_5.FileDropBySystemProc_k_root = "Lua:Context/OpenAfterDropBySystem!k_root"
  L5_5.FileDropBySystemProc_l_root = "Lua:Context/OpenAfterDropBySystem!l_root"
  L5_5.FileDropBySystemProc_m_root = "Lua:Context/OpenAfterDropBySystem!m_root"
  L5_5.FileDropBySystemProc_n_root = "Lua:Context/OpenAfterDropBySystem!n_root"
  L5_5.FileDropBySystemProc_o_root = "Lua:Context/OpenAfterDropBySystem!o_root"
  L5_5.FileDropBySystemProc_p_root = "Lua:Context/OpenAfterDropBySystem!p_root"
  L5_5.FileDropBySystemProc_q_root = "Lua:Context/OpenAfterDropBySystem!q_root"
  L5_5.FileDropBySystemProc_r_root = "Lua:Context/OpenAfterDropBySystem!r_root"
  L5_5.FileDropBySystemProc_s_root = "Lua:Context/OpenAfterDropBySystem!s_root"
  L5_5.FileDropBySystemProc_t_root = "Lua:Context/OpenAfterDropBySystem!t_root"
  L5_5.FileDropBySystemProc_u_root = "Lua:Context/OpenAfterDropBySystem!u_root"
  L5_5.FileDropBySystemProc_v_root = "Lua:Context/OpenAfterDropBySystem!v_root"
  L5_5.FileDropBySystemProc_w_root = "Lua:Context/OpenAfterDropBySystem!w_root"
  L5_5.FileDropBySystemProc_x_root = "Lua:Context/OpenAfterDropBySystem!x_root"
  L5_5.FileDropBySystemProc_y_root = "Lua:Context/OpenAfterDropBySystem!y_root"
  L5_5.FileDropBySystemProc_z_root = "Lua:Context/OpenAfterDropBySystem!z_root"
  L4_4 = L5_5
end
for L8_8, L9_9 in L5_5(L6_6) do
  for L13_13, L14_14 in L10_10(L11_11) do
    if L9_9 == L13_13 then
      mp.set_mpattribute(L14_14)
      if L14_14:sub(-5) == "_root" then
        mp.set_mpattribute("Lua:Context/OpenAfterSystemDropsAtRoot")
      end
      return mp.INFECTED
    end
  end
end
return L5_5
