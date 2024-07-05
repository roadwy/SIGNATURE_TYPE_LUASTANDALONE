local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = {
  L1_1,
  L2_2,
  L3_3,
  L4_4
}
L1_1 = "acrord32.exe"
L2_2 = "iexplore.exe"
L3_3 = "firefox.exe"
L4_4 = "chrome.exe"
L1_1 = {
  L2_2,
  L3_3,
  L4_4,
  L5_5,
  L6_6,
  L7_7,
  "write.exe",
  "splwow64.exe",
  "helppane.exe"
}
L2_2 = "explorer.exe"
L3_3 = "notepad.exe"
L4_4 = "regedit.exe"
L5_5 = "hh.exe"
L6_6 = "winhlp32.exe"
L7_7 = "bfsvc.exe"
L2_2 = {
  L3_3,
  L4_4,
  L5_5,
  L6_6,
  L7_7,
  "dllhost.exe",
  "cmd.exe",
  "notepad.exe",
  "regsvr32.exe",
  "userinit.exe",
  "wscript.exe",
  "regedit.exe",
  "secedit.exe",
  "calc.exe",
  "taskmgr.exe",
  "cscript.exe",
  "runonce.exe",
  "certutil.exe",
  "find.exe",
  "winver.exe",
  "hh.exe",
  "write.exe",
  "ctfmon.exe",
  "gpscript.exe",
  "net.exe",
  "powercfg.exe",
  "lsass.exe",
  "tcpsvcs.exe",
  "msfeedssync.exe",
  "taskeng.exe",
  "drvinst.exe",
  "mshta.exe",
  "dllhst3g.exe",
  "sdiagnhost.exe",
  "werfault.exe",
  "sfc.exe",
  "upnpcont.exe",
  "wiaacmgr.exe",
  "mmc.exe",
  "mspaint.exe",
  "robocopy.exe",
  "xcopy.exe",
  "logagent.exe",
  "wextract.exe",
  "cmmon32.exe",
  "dpnsvr.exe",
  "net1.exe",
  "dplaysvr.exe",
  "schtasks.exe",
  "dvdupgrd.exe",
  L3_3,
  L4_4,
  L5_5,
  L6_6,
  L7_7,
  "sethc.exe"
}
L3_3 = "svchost.exe"
L4_4 = "rundll32.exe"
L5_5 = "explorer.exe"
L6_6 = "reg.exe"
L7_7 = "msiexec.exe"
L3_3 = "fixmapi.exe"
L4_4 = "systray.exe"
L5_5 = "netsh.exe"
L6_6 = "mobsync.exe"
L7_7 = "unregmp2.exe"
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
if L6_6 ~= nil and L3_3:find(L6_6) or L7_7 ~= nil and L3_3:find(L7_7) then
  for _FORV_11_, _FORV_12_ in pairs(L0_0) do
    if _FORV_12_ == L4_4 then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end
if L5_5 ~= nil then
  if L3_3:find(L5_5 .. "\\system32") or L3_3:find(L5_5 .. "\\syswow64") then
    for _FORV_11_, _FORV_12_ in pairs(L2_2) do
      if _FORV_12_ == L4_4 then
        return mp.INFECTED
      end
    end
    return mp.CLEAN
  elseif L3_3:find(L5_5) then
    for _FORV_11_, _FORV_12_ in pairs(L1_1) do
      if _FORV_12_ == L4_4 then
        return mp.INFECTED
      end
    end
    return mp.CLEAN
  end
end
return mp.CLEAN
