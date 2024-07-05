local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = mp
L0_0 = L0_0.IsHipsRuleEnabled
L1_1 = "c0033c00-d16d-4114-a5a0-dc9b3a7d2ceb"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = false
  return L0_0
end
L0_0 = ImageConfig
L0_0 = L0_0.GetImagePath
L0_0 = L0_0()
if L0_0 == nil or L0_0 == "" then
  L1_1 = false
  return L1_1
end
L1_1 = MpCommon
L1_1 = L1_1.PathToWin32Path
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 == nil or L1_1 == "" then
  L2_2 = false
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L3_3 = L1_1
L2_2 = L2_2(L3_3)
L1_1 = L2_2
L2_2 = MpCommon
L2_2 = L2_2.ExpandEnvironmentVariables
L3_3 = "%systemroot%"
L2_2 = L2_2(L3_3)
if L2_2 == nil or L2_2 == "" then
  L3_3 = false
  return L3_3
end
L3_3 = MpCommon
L3_3 = L3_3.PathToWin32Path
L4_4 = L2_2
L3_3 = L3_3(L4_4)
L2_2 = L3_3
if L2_2 == nil or L2_2 == "" then
  L3_3 = false
  return L3_3
end
L3_3 = string
L3_3 = L3_3.lower
L4_4 = L2_2
L3_3 = L3_3(L4_4)
L2_2 = L3_3
L3_3 = string
L3_3 = L3_3.find
L4_4 = L1_1
L5_5 = L2_2
L6_6 = 1
L7_7 = true
L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
if L3_3 ~= nil then
  L3_3 = false
  return L3_3
end
L3_3 = string
L3_3 = L3_3.find
L4_4 = L1_1
L5_5 = ":\\$winreagent\\"
L6_6 = 1
L7_7 = true
L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
if L3_3 ~= nil then
  L3_3 = false
  return L3_3
end
L3_3 = string
L3_3 = L3_3.find
L4_4 = L1_1
L5_5 = ":\\mount[^\\]*\\windows\\winsxs\\temp\\pendingrenames\\"
L3_3 = L3_3(L4_4, L5_5)
if L3_3 ~= nil then
  L3_3 = false
  return L3_3
end
L3_3 = string
L3_3 = L3_3.sub
L4_4 = L1_1
L5_5 = 2
L6_6 = 12
L3_3 = L3_3(L4_4, L5_5, L6_6)
if L3_3 == ":\\$windows." then
  L3_3 = false
  return L3_3
end
L3_3 = string
L3_3 = L3_3.find
L4_4 = L1_1
L5_5 = ":\\windows.old\\"
L6_6 = 1
L7_7 = true
L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
if L3_3 ~= nil then
  L3_3 = false
  return L3_3
end
L3_3 = string
L3_3 = L3_3.find
L4_4 = L1_1
L5_5 = ":\\$sysreset\\"
L6_6 = 1
L7_7 = true
L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
if L3_3 ~= nil then
  L3_3 = false
  return L3_3
end
L3_3 = string
L3_3 = L3_3.find
L4_4 = L1_1
L5_5 = ":\\winpe\\windows\\"
L6_6 = 1
L7_7 = true
L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
if L3_3 ~= nil then
  L3_3 = false
  return L3_3
end
L3_3 = string
L3_3 = L3_3.lower
L4_4 = MpCommon
L4_4 = L4_4.ExpandEnvironmentVariables
L5_5 = "%programfiles%"
L8_8 = L4_4(L5_5)
L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7, L8_8, L4_4(L5_5))
if L3_3 ~= nil then
  L4_4 = string
  L4_4 = L4_4.find
  L5_5 = L1_1
  L6_6 = L3_3
  L7_7 = 1
  L8_8 = true
  L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8)
  if L4_4 ~= nil then
    L4_4 = string
    L4_4 = L4_4.find
    L5_5 = L1_1
    L6_6 = ":\\program files\\windowsapps\\"
    L7_7 = 1
    L8_8 = true
    L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8)
    if L4_4 ~= nil then
      L4_4 = false
      return L4_4
    end
    L4_4 = string
    L4_4 = L4_4.find
    L5_5 = L1_1
    L6_6 = ":\\program files\\git\\"
    L7_7 = 1
    L8_8 = true
    L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8)
    if L4_4 ~= nil then
      L4_4 = false
      return L4_4
    end
    L4_4 = string
    L4_4 = L4_4.find
    L5_5 = L1_1
    L6_6 = ":\\program files[^\\]*\\java\\jre[^\\]*\\bin\\"
    L4_4 = L4_4(L5_5, L6_6)
    if L4_4 ~= nil then
      L4_4 = false
      return L4_4
    end
    L4_4 = string
    L4_4 = L4_4.find
    L5_5 = L1_1
    L6_6 = ":\\program files[^\\]*\\java\\jdk[^\\]*\\bin\\"
    L4_4 = L4_4(L5_5, L6_6)
    if L4_4 ~= nil then
      L4_4 = false
      return L4_4
    end
    L4_4 = string
    L4_4 = L4_4.find
    L5_5 = L1_1
    L6_6 = ":\\java\\jre[^\\]*\\bin\\"
    L4_4 = L4_4(L5_5, L6_6)
    if L4_4 ~= nil then
      L4_4 = false
      return L4_4
    end
    L4_4 = string
    L4_4 = L4_4.find
    L5_5 = L1_1
    L6_6 = ":\\program files\\sharp\\file-copy\\robocopy.exe"
    L7_7 = 1
    L8_8 = true
    L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8)
    if L4_4 ~= nil then
      L4_4 = false
      return L4_4
    end
    L4_4 = string
    L4_4 = L4_4.find
    L5_5 = L1_1
    L6_6 = ":\\program files[^\\]*\\microsoft onedrive\\standaloneupdater\\onedrivesetup.exe"
    L4_4 = L4_4(L5_5, L6_6)
    if L4_4 ~= nil then
      L4_4 = false
      return L4_4
    end
    L4_4 = string
    L4_4 = L4_4.find
    L5_5 = L1_1
    L6_6 = ":\\program files[^\\]*\\microsoft onedrive\\[%d%.]+\\onedrivesetup.exe"
    L4_4 = L4_4(L5_5, L6_6)
    if L4_4 ~= nil then
      L4_4 = false
      return L4_4
    end
    L4_4 = string
    L4_4 = L4_4.find
    L5_5 = L1_1
    L6_6 = ":\\program files[^\\]*\\microsoft onedrive\\update\\onedrivesetup.exe"
    L4_4 = L4_4(L5_5, L6_6)
    if L4_4 ~= nil then
      L4_4 = false
      return L4_4
    end
    L4_4 = string
    L4_4 = L4_4.find
    L5_5 = L1_1
    L6_6 = ":\\program files[^\\]*\\microsoft office\\root\\client\\appvdllsurrogate%d*%.exe"
    L4_4 = L4_4(L5_5, L6_6)
    if L4_4 ~= nil then
      L4_4 = false
      return L4_4
    end
    L4_4 = string
    L4_4 = L4_4.find
    L5_5 = L1_1
    L6_6 = ":\\program files[^\\]*\\microsoft office\\updates\\download\\packagefiles\\[^\\]+\\root\\client\\appvdllsurrogate%d*%.exe"
    L4_4 = L4_4(L5_5, L6_6)
    if L4_4 ~= nil then
      L4_4 = false
      return L4_4
    end
    L4_4 = string
    L4_4 = L4_4.find
    L5_5 = L1_1
    L6_6 = ":\\program files[^\\]*\\common files\\microsoft shared\\"
    L4_4 = L4_4(L5_5, L6_6)
    if L4_4 ~= nil then
      L4_4 = false
      return L4_4
    end
    L4_4 = string
    L4_4 = L4_4.find
    L5_5 = L1_1
    L6_6 = ":\\program files[^\\]*\\microsoft visual studio\\%d%d%d%d\\"
    L4_4 = L4_4(L5_5, L6_6)
    if L4_4 ~= nil then
      L4_4 = string
      L4_4 = L4_4.find
      L5_5 = L1_1
      L6_6 = ":\\program files[^\\]*\\microsoft visual studio\\%d%d%d%d\\professional\\common%d\\ide\\remote debugger\\x%d%d\\vsgraphicsremoteengine%.exe"
      L4_4 = L4_4(L5_5, L6_6)
      if L4_4 ~= nil then
        L4_4 = false
        return L4_4
      end
      L4_4 = string
      L4_4 = L4_4.find
      L5_5 = L1_1
      L6_6 = ":\\program files[^\\]*\\microsoft visual studio\\%d%d%d%d\\enterprise\\common%d\\ide\\remote debugger\\x%d%d\\vsgraphicsremoteengine%.exe"
      L4_4 = L4_4(L5_5, L6_6)
      if L4_4 ~= nil then
        L4_4 = false
        return L4_4
      end
      L4_4 = string
      L4_4 = L4_4.find
      L5_5 = L1_1
      L6_6 = ":\\program files[^\\]*\\microsoft visual studio\\%d%d%d%d\\community\\common%d\\ide\\remote debugger\\x%d%d\\vsgraphicsremoteengine%.exe"
      L4_4 = L4_4(L5_5, L6_6)
      if L4_4 ~= nil then
        L4_4 = false
        return L4_4
      end
      L4_4 = string
      L4_4 = L4_4.find
      L5_5 = L1_1
      L6_6 = ":\\program files[^\\]*\\microsoft visual studio\\%d%d%d%d\\preview\\common%d\\ide\\remote debugger\\x%d%d\\vsgraphicsremoteengine%.exe"
      L4_4 = L4_4(L5_5, L6_6)
      if L4_4 ~= nil then
        L4_4 = false
        return L4_4
      end
      L4_4 = string
      L4_4 = L4_4.find
      L5_5 = L1_1
      L6_6 = ":\\program files[^\\]*\\microsoft visual studio\\%d%d%d%d\\buildtools\\common%d\\ide\\remote debugger\\x%d%d\\vsgraphicsremoteengine%.exe"
      L4_4 = L4_4(L5_5, L6_6)
      if L4_4 ~= nil then
        L4_4 = false
        return L4_4
      end
      L4_4 = string
      L4_4 = L4_4.find
      L5_5 = L1_1
      L6_6 = ":\\program files[^\\]*\\microsoft visual studio\\%d%d%d%d\\professional\\common%d\\ide\\extensions\\microsoft\\"
      L4_4 = L4_4(L5_5, L6_6)
      if L4_4 ~= nil then
        L4_4 = false
        return L4_4
      end
      L4_4 = string
      L4_4 = L4_4.find
      L5_5 = L1_1
      L6_6 = ":\\program files[^\\]*\\microsoft visual studio\\%d%d%d%d\\enterprise\\common%d\\ide\\extensions\\microsoft\\"
      L4_4 = L4_4(L5_5, L6_6)
      if L4_4 ~= nil then
        L4_4 = false
        return L4_4
      end
      L4_4 = string
      L4_4 = L4_4.find
      L5_5 = L1_1
      L6_6 = ":\\program files[^\\]*\\microsoft visual studio\\%d%d%d%d\\community\\common%d\\ide\\extensions\\microsoft\\"
      L4_4 = L4_4(L5_5, L6_6)
      if L4_4 ~= nil then
        L4_4 = false
        return L4_4
      end
      L4_4 = string
      L4_4 = L4_4.find
      L5_5 = L1_1
      L6_6 = ":\\program files[^\\]*\\microsoft visual studio\\%d%d%d%d\\preview\\common%d\\ide\\extensions\\microsoft\\"
      L4_4 = L4_4(L5_5, L6_6)
      if L4_4 ~= nil then
        L4_4 = false
        return L4_4
      end
      L4_4 = string
      L4_4 = L4_4.find
      L5_5 = L1_1
      L6_6 = ":\\program files[^\\]*\\microsoft visual studio\\%d%d%d%d\\buildtools\\common%d\\ide\\extensions\\microsoft\\"
      L4_4 = L4_4(L5_5, L6_6)
      if L4_4 ~= nil then
        L4_4 = false
        return L4_4
      end
      L4_4 = string
      L4_4 = L4_4.find
      L5_5 = L1_1
      L6_6 = ":\\program files[^\\]*\\microsoft visual studio\\%d%d%d%d\\professional\\common%d\\ide\\commonextensions\\microsoft\\"
      L4_4 = L4_4(L5_5, L6_6)
      if L4_4 ~= nil then
        L4_4 = false
        return L4_4
      end
      L4_4 = string
      L4_4 = L4_4.find
      L5_5 = L1_1
      L6_6 = ":\\program files[^\\]*\\microsoft visual studio\\%d%d%d%d\\enterprise\\common%d\\ide\\commonextensions\\microsoft\\"
      L4_4 = L4_4(L5_5, L6_6)
      if L4_4 ~= nil then
        L4_4 = false
        return L4_4
      end
      L4_4 = string
      L4_4 = L4_4.find
      L5_5 = L1_1
      L6_6 = ":\\program files[^\\]*\\microsoft visual studio\\%d%d%d%d\\community\\common%d\\ide\\commonextensions\\microsoft\\"
      L4_4 = L4_4(L5_5, L6_6)
      if L4_4 ~= nil then
        L4_4 = false
        return L4_4
      end
      L4_4 = string
      L4_4 = L4_4.find
      L5_5 = L1_1
      L6_6 = ":\\program files[^\\]*\\microsoft visual studio\\%d%d%d%d\\preview\\common%d\\ide\\commonextensions\\microsoft\\"
      L4_4 = L4_4(L5_5, L6_6)
      if L4_4 ~= nil then
        L4_4 = false
        return L4_4
      end
      L4_4 = string
      L4_4 = L4_4.find
      L5_5 = L1_1
      L6_6 = ":\\program files[^\\]*\\microsoft visual studio\\%d%d%d%d\\buildtools\\common%d\\ide\\commonextensions\\microsoft\\"
      L4_4 = L4_4(L5_5, L6_6)
      if L4_4 ~= nil then
        L4_4 = false
        return L4_4
      end
    end
    L4_4 = string
    L4_4 = L4_4.find
    L5_5 = L1_1
    L6_6 = ":\\program files[^\\]*\\wsl\\wslg.exe"
    L4_4 = L4_4(L5_5, L6_6)
    if L4_4 ~= nil then
      L4_4 = false
      return L4_4
    end
    L4_4 = string
    L4_4 = L4_4.find
    L5_5 = L1_1
    L6_6 = ":\\program files[^\\]*\\windows kits\\%d+\\app certification kit\\aitstatic.exe"
    L4_4 = L4_4(L5_5, L6_6)
    if L4_4 ~= nil then
      L4_4 = false
      return L4_4
    end
    L4_4 = string
    L4_4 = L4_4.find
    L5_5 = L1_1
    L6_6 = ":\\program files[^\\]*\\sophos\\endpoint defense\\sophosna.exe"
    L4_4 = L4_4(L5_5, L6_6)
    if L4_4 ~= nil then
      L4_4 = false
      return L4_4
    end
  end
else
  L4_4 = string
  L4_4 = L4_4.find
  L5_5 = L1_1
  L6_6 = "\\appdata\\local\\microsoft\\onedrive\\standaloneupdater\\onedrivesetup.*%.exe"
  L4_4 = L4_4(L5_5, L6_6)
  if L4_4 ~= nil then
    L4_4 = false
    return L4_4
  end
  L4_4 = string
  L4_4 = L4_4.find
  L5_5 = L1_1
  L6_6 = "\\appdata\\local\\microsoft\\onedrive\\update\\onedrivesetup.*%.exe"
  L4_4 = L4_4(L5_5, L6_6)
  if L4_4 ~= nil then
    L4_4 = false
    return L4_4
  end
  L4_4 = string
  L4_4 = L4_4.find
  L5_5 = L1_1
  L6_6 = "\\appdata\\local\\microsoft\\onedrive\\[%d%.]+\\onedrivesetup.*%.exe"
  L4_4 = L4_4(L5_5, L6_6)
  if L4_4 ~= nil then
    L4_4 = false
    return L4_4
  end
  L4_4 = string
  L4_4 = L4_4.find
  L5_5 = L1_1
  L6_6 = ":\\programdata\\microsoft\\grouppolicy\\users\\[^\\]+\\datastore\\0\\sysvol\\fcc%.intfcc%.local\\policies\\[^\\]+\\user\\[^\\]+\\logon\\bginfo%.exe"
  L4_4 = L4_4(L5_5, L6_6)
  if L4_4 ~= nil then
    L4_4 = false
    return L4_4
  end
  L4_4 = string
  L4_4 = L4_4.find
  L5_5 = L1_1
  L6_6 = ":\\programdata\\docker\\windowsfilter\\"
  L7_7 = 1
  L8_8 = true
  L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8)
  if L4_4 ~= nil then
    L4_4 = false
    return L4_4
  end
  L4_4 = string
  L4_4 = L4_4.find
  L5_5 = L1_1
  L6_6 = ":\\programdata\\dell\\saremediation\\systemrepair\\snapshots\\"
  L7_7 = 1
  L8_8 = true
  L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8)
  if L4_4 ~= nil then
    L4_4 = false
    return L4_4
  end
  L4_4 = string
  L4_4 = L4_4.find
  L5_5 = L1_1
  L6_6 = ":\\programdata\\dell\\saremediation\\tempdrivers\\dell"
  L7_7 = 1
  L8_8 = true
  L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8)
  if L4_4 ~= nil then
    L4_4 = false
    return L4_4
  end
end
L4_4 = false
L5_5 = string
L5_5 = L5_5.match
L6_6 = L1_1
L7_7 = "\\([^\\]+)$"
L5_5 = L5_5(L6_6, L7_7)
if L5_5 == nil or L5_5 == "" then
  L6_6 = false
  return L6_6
end
L6_6 = string
L6_6 = L6_6.lower
L7_7 = L5_5
L6_6 = L6_6(L7_7)
L5_5 = L6_6
L6_6 = string
L6_6 = L6_6.match
L7_7 = L5_5
L8_8 = "(%.[^%.]+)$"
L6_6 = L6_6(L7_7, L8_8)
if L6_6 == ".exe" then
  L6_6 = sysio
  L6_6 = L6_6.IsFileExists
  L7_7 = L2_2
  L8_8 = "\\system32\\"
  L7_7 = L7_7 .. L8_8 .. L5_5
  L6_6 = L6_6(L7_7)
  if L6_6 then
    L4_4 = true
  end
  if not L4_4 then
    L6_6 = sysio
    L6_6 = L6_6.IsFileExists
    L7_7 = L2_2
    L8_8 = "\\syswow64\\"
    L7_7 = L7_7 .. L8_8 .. L5_5
    L6_6 = L6_6(L7_7)
    if L6_6 then
      L4_4 = true
    end
  end
end
if not L4_4 then
  L6_6 = MpCommon
  L6_6 = L6_6.GetOriginalFileName
  L7_7 = L0_0
  L6_6 = L6_6(L7_7)
  if L6_6 ~= nil and L6_6 ~= "" then
    L7_7 = nil
    L8_8 = string
    L8_8 = L8_8.match
    L8_8 = L8_8(L6_6, "%.([^%.]+)$")
    L7_7 = L8_8
    if L7_7 == nil then
      L8_8 = L6_6
      L6_6 = L8_8 .. ".exe"
      L7_7 = "exe"
    end
    if L7_7 == "exe" then
      L8_8 = sysio
      L8_8 = L8_8.IsFileExists
      L8_8 = L8_8(L2_2 .. "\\system32\\" .. L6_6)
      if L8_8 then
        L4_4 = true
      end
      if not L4_4 then
        L8_8 = sysio
        L8_8 = L8_8.IsFileExists
        L8_8 = L8_8(L2_2 .. "\\syswow64\\" .. L6_6)
        if L8_8 then
          L4_4 = true
        end
      end
    end
  end
end
if not L4_4 then
  L6_6 = sysio
  L6_6 = L6_6.GetPEVersionInfo
  L7_7 = L1_1
  L6_6 = L6_6(L7_7)
  if L6_6 == nil then
    L7_7 = false
    return L7_7
  end
  L7_7 = L6_6.OriginalFilename
  if L7_7 == nil then
    L7_7 = false
    return L7_7
  end
  L7_7 = string
  L7_7 = L7_7.lower
  L8_8 = L6_6.OriginalFilename
  L7_7 = L7_7(L8_8)
  L8_8 = nil
  L8_8 = string.match(L7_7, "%.([^%.]+)$")
  if L8_8 == nil then
    L7_7 = L7_7 .. ".exe"
  elseif L8_8 ~= "exe" then
    return false
  end
  if sysio.IsFileExists(L2_2 .. "\\system32\\" .. L7_7) then
    L4_4 = true
  end
  if not L4_4 and sysio.IsFileExists(L2_2 .. "\\syswow64\\" .. L7_7) then
    L4_4 = true
  end
end
if L4_4 then
  L6_6 = true
  return L6_6
end
L6_6 = false
return L6_6
