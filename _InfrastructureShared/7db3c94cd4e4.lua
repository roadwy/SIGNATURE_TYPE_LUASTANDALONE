local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = "|acrord32.exe"
L1_1 = "|explorer.exe|notepad.exe|regedit.exe|hh.exe|winhlp32.exe|bfsvc.exe|write.exe|splwow64.exe|helppane.exe"
L2_2 = "|svchost.exe|explorer.exe|reg.exe|dllhost.exe|notepad.exe|regsvr32.exe|userinit.exe|regedit.exe|secedit.exe|calc.exe|taskmgr.exe|runonce.exe|certutil.exe|find.exe|winver.exe|hh.exe|write.exe|ctfmon.exe|gpscript.exe|net.exe|powercfg.exe|lsass.exe|tcpsvcs.exe|msfeedssync.exe|taskeng.exe|drvinst.exe|mshta.exe|dllhst3g.exe|sdiagnhost.exe|werfault.exe|sfc.exe|upnpcont.exe|wiaacmgr.exe|mmc.exe|mspaint.exe|robocopy.exe|xcopy.exe|logagent.exe|wextract.exe|cmmon32.exe|dpnsvr.exe|net1.exe|dplaysvr.exe|schtasks.exe|dvdupgrd.exe|fixmapi.exe|systray.exe|netsh.exe|mobsync.exe|unregmp2.exe|sethc.exe"
L3_3 = string
L3_3 = L3_3.lower
L4_4 = MpCommon
L4_4 = L4_4.PathToWin32Path
L5_5 = bm
L5_5 = L5_5.get_imagepath
L7_7 = L5_5()
L7_7 = L4_4(L5_5, L6_6, L7_7, L5_5())
L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7, L4_4(L5_5, L6_6, L7_7, L5_5()))
L5_5 = L3_3
L4_4 = L3_3.match
L6_6 = "(%w+%.exe)$"
L4_4 = L4_4(L5_5, L6_6)
if L4_4 == nil then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
if L3_3 == nil then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = "|"
L6_6 = L4_4
L4_4 = L5_5 .. L6_6
L5_5 = string
L5_5 = L5_5.lower
L6_6 = MpCommon
L6_6 = L6_6.ExpandEnvironmentVariables
L7_7 = "%WINDIR%"
L7_7 = L6_6(L7_7)
L5_5 = L5_5(L6_6, L7_7, L6_6(L7_7))
L6_6 = string
L6_6 = L6_6.lower
L7_7 = MpCommon
L7_7 = L7_7.ExpandEnvironmentVariables
L7_7 = L7_7("%PROGRAMFILES%")
L6_6 = L6_6(L7_7, L7_7("%PROGRAMFILES%"))
L7_7 = string
L7_7 = L7_7.lower
L7_7 = L7_7(MpCommon.ExpandEnvironmentVariables("%PROGRAMFILES(86)%"))
if L6_6 and L3_3:find(L6_6, 1, true) or L7_7 and L3_3:find(L7_7, 1, true) then
  if L0_0:find(L4_4, 1, true) then
  else
    return mp.CLEAN
  end
end
if L5_5 then
  if L3_3:find(L5_5 .. "\\system32", 1, true) or L3_3:find(L5_5 .. "\\syswow64", 1, true) then
    if L2_2:find(L4_4, 1, true) then
    else
      return mp.CLEAN
    end
  elseif L3_3:find(L5_5, 1, true) then
    if L1_1:find(L4_4, 1, true) then
    else
      return mp.CLEAN
    end
  end
end
if true == false then
  return mp.CLEAN
end
if this_sigattrlog[4].matched then
  mp.ReportLowfi(mp.ContextualExpandEnvironmentVariables(this_sigattrlog[2].utf8p1), 2717791813)
else
  mp.ReportLowfi(mp.ContextualExpandEnvironmentVariables(this_sigattrlog[2].utf8p1), 3542909154)
end
return mp.INFECTED
