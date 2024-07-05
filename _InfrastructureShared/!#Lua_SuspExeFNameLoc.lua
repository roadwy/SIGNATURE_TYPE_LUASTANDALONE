local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = peattributes
L0_0 = L0_0.isexe
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L3_3 = L1_1
L2_2 = L1_1.sub
L4_4 = -4
L2_2 = L2_2(L3_3, L4_4)
if L2_2 ~= ".exe" then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L4_4 = L1_1
L3_3 = L1_1.find
L5_5 = "\\application data\\"
L3_3 = L3_3(L4_4, L5_5, 1, true)
if L3_3 == nil then
  L4_4 = L1_1
  L3_3 = L1_1.find
  L5_5 = "\\appdata\\"
  L3_3 = L3_3(L4_4, L5_5, 1, true)
  if L3_3 == nil then
    L4_4 = L1_1
    L3_3 = L1_1.find
    L5_5 = "\\local\\temp"
    L3_3 = L3_3(L4_4, L5_5, 1, true)
    if L3_3 == nil then
      L4_4 = L1_1
      L3_3 = L1_1.find
      L5_5 = "\\local settings\\temp"
      L3_3 = L3_3(L4_4, L5_5, 1, true)
      if L3_3 == nil then
        L3_3 = mp
        L3_3 = L3_3.CLEAN
        return L3_3
      end
    end
  end
end
L3_3 = pe
L3_3 = L3_3.get_versioninfo
L3_3 = L3_3()
if L3_3 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = L3_3.LegalCopyright
if L4_4 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.find
L5_5 = L3_3.LegalCopyright
L4_4 = L4_4(L5_5, "Microsoft Corp", 1, true)
if L4_4 == nil then
  L4_4 = string
  L4_4 = L4_4.find
  L5_5 = L3_3.LegalCopyright
  L4_4 = L4_4(L5_5, "Citrix Systems", 1, true)
  if L4_4 == nil then
    L4_4 = string
    L4_4 = L4_4.find
    L5_5 = L3_3.LegalCopyright
    L4_4 = L4_4(L5_5, "Google Inc", 1, true)
    if L4_4 == nil then
      L4_4 = string
      L4_4 = L4_4.find
      L5_5 = L3_3.LegalCopyright
      L4_4 = L4_4(L5_5, "Firefox and Mozilla Developers", 1, true)
      if L4_4 == nil then
        L4_4 = string
        L4_4 = L4_4.find
        L5_5 = L3_3.LegalCopyright
        L4_4 = L4_4(L5_5, "Adobe Systems", 1, true)
        if L4_4 == nil then
          L4_4 = string
          L4_4 = L4_4.find
          L5_5 = L3_3.LegalCopyright
          L4_4 = L4_4(L5_5, "All Alex", 1, true)
          if L4_4 == nil then
            L4_4 = string
            L4_4 = L4_4.find
            L5_5 = L3_3.LegalCopyright
            L4_4 = L4_4(L5_5, "Maple Studio", 1, true)
            if L4_4 == nil then
              L4_4 = string
              L4_4 = L4_4.find
              L5_5 = L3_3.LegalCopyright
              L4_4 = L4_4(L5_5, "The Chromium Authors", 1, true)
            end
          end
        end
      end
    end
  end
elseif L4_4 ~= nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.find
L5_5 = L1_1.reverse
L5_5 = L5_5(L1_1)
L4_4 = L4_4(L5_5, "\\", 1, true)
if L4_4 == nil then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = #L1_1
L5_5 = L5_5 - L4_4
if ({
  ["acrord32.exe"] = "",
  ["iexplore.exe"] = "",
  ["firefox.exe"] = "",
  ["chrome.exe"] = ""
})[L1_1:sub(L5_5 + 2)] or ({
  ["explorer.exe"] = "",
  ["hh.exe"] = "",
  ["isuninst.exe"] = "",
  ["notepad.exe"] = "",
  ["regedit.exe"] = "",
  ["slrundll.exe"] = "",
  ["taskman.exe"] = "",
  ["twunk_16.exe"] = "",
  ["twunk_32.exe"] = "",
  ["winhelp.exe"] = "",
  ["winhlp32.exe"] = "",
  ["bfsvc.exe"] = "",
  ["fveupdate.exe"] = "",
  ["helppane.exe"] = "",
  ["write.exe"] = "",
  ["splwow64.exe"] = ""
})[L1_1:sub(L5_5 + 2)] or ({
  ["svchost.exe"] = "",
  ["rundll32.exe"] = "",
  ["explorer.exe"] = "",
  ["reg.exe"] = "",
  ["msiexec.exe"] = "",
  ["dllhost.exe"] = "",
  ["cmd.exe"] = "",
  ["notepad.exe"] = "",
  ["regsvr32.exe"] = "",
  ["userinit.exe"] = "",
  ["wscript.exe"] = "",
  ["regedit.exe"] = "",
  ["secedit.exe"] = "",
  ["calc.exe"] = "",
  ["taskmgr.exe"] = "",
  ["cscript.exe"] = "",
  ["runonce.exe"] = "",
  ["certutil.exe"] = "",
  ["find.exe"] = "",
  ["winver.exe"] = "",
  ["hh.exe"] = "",
  ["write.exe"] = "",
  ["ctfmon.exe"] = "",
  ["gpscript.exe"] = "",
  ["net.exe"] = "",
  ["powercfg.exe"] = "",
  ["lsass.exe"] = "",
  ["tcpsvcs.exe"] = "",
  ["msfeedssync.exe"] = "",
  ["taskeng.exe"] = "",
  ["mshta.exe"] = "",
  ["dllhst3g.exe"] = "",
  ["sdiagnhost.exe"] = "",
  ["werfault.exe"] = "",
  ["sfc.exe"] = "",
  ["upnpcont.exe"] = "",
  ["wiaacmgr.exe"] = "",
  ["mmc.exe"] = "",
  ["mspaint.exe"] = "",
  ["robocopy.exe"] = "",
  ["xcopy.exe"] = "",
  ["logagent.exe"] = "",
  ["wextract.exe"] = "",
  ["cmmon32.exe"] = "",
  ["dpnsvr.exe"] = "",
  ["net1.exe"] = "",
  ["dplaysvr.exe"] = "",
  ["schtasks.exe"] = "",
  ["dvdupgrd.exe"] = "",
  ["fixmapi.exe"] = "",
  ["systray.exe"] = "",
  ["netsh.exe"] = "",
  ["mobsync.exe"] = "",
  ["unregmp2.exe"] = "",
  ["sethc.exe"] = ""
})[L1_1:sub(L5_5 + 2)] then
  if L1_1:sub(1, L5_5) == nil then
    return mp.CLEAN
  end
  if (L1_1:sub(1, L5_5):find("\\application data\\[^\\]+$", 1, false) or L1_1:sub(1, L5_5):find("\\appdata\\roaming\\[^\\]+$", 1, false)) and not L1_1:sub(1, L5_5):find("microsoft", 1, true) and not L1_1:sub(1, L5_5):find("windows", 1, true) and not L1_1:sub(1, L5_5):find("installer", 1, true) and not L1_1:sub(1, L5_5):find("citrix", 1, true) then
    mp.set_mpattribute("Lua:SuspiciousExeLegitNameInAppdata")
  elseif L1_1:sub(1, L5_5):find("\\local\\temp$", 1, false) or L1_1:sub(1, L5_5):find("\\local settings\\temp$", 1, false) then
    mp.set_mpattribute("Lua:SuspiciousExeLegitNameInTemp")
  end
end
return mp.CLEAN
