local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13
L0_0 = peattributes
L0_0 = L0_0.isexe
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
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
L1_1 = L1_1.IsHipsRuleEnabled
L2_2 = "c0033c00-d16d-4114-a5a0-dc9b3a7d2ceb"
L1_1 = L1_1(L2_2)
if not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = "enghipscpy:blockexecution:c0033c00-d16d-4114-a5a0-dc9b3a7d2ceb"
L2_2 = mp
L2_2 = L2_2.getfilename
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_FULL
L2_2 = L2_2(L3_3)
if L2_2 == nil or L2_2 == "" then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = MpCommon
L3_3 = L3_3.PathToWin32Path
L4_4 = L2_2
L3_3 = L3_3(L4_4)
if L3_3 == nil or L3_3 == "" then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.lower
L5_5 = L3_3
L4_4 = L4_4(L5_5)
L3_3 = L4_4
L4_4 = mp
L4_4 = L4_4.IsPathExcludedForHipsRule
L5_5 = L3_3
L6_6 = "c0033c00-d16d-4114-a5a0-dc9b3a7d2ceb"
L4_4 = L4_4(L5_5, L6_6)
if L4_4 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = MpCommon
L4_4 = L4_4.QueryPersistContext
L5_5 = L2_2
L6_6 = L1_1
L4_4 = L4_4(L5_5, L6_6)
if L4_4 then
  L4_4 = mp
  L4_4 = L4_4.IsHipsRuleEnabled
  L5_5 = "c0033c00-d16d-4114-a5a0-dc9b3a7d2ceb"
  L4_4 = L4_4(L5_5)
  if not L4_4 then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  L4_4 = mp
  L4_4 = L4_4.INFECTED
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.SCANREASON_ONOPEN
if L0_0 == L4_4 then
  L4_4 = mp
  L4_4 = L4_4.get_contextdata
  L5_5 = mp
  L5_5 = L5_5.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT
  L4_4 = L4_4(L5_5)
  if not L4_4 then
    L4_4 = mp
    L4_4 = L4_4.bitand
    L5_5 = mp
    L5_5 = L5_5.get_contextdata
    L6_6 = mp
    L6_6 = L6_6.CONTEXT_DATA_DESIREDACCESS
    L5_5 = L5_5(L6_6)
    L6_6 = 32
    L4_4 = L4_4(L5_5, L6_6)
    if L4_4 ~= 32 then
      L4_4 = mp
      L4_4 = L4_4.CLEAN
      return L4_4
    end
  end
else
  L4_4 = mp
  L4_4 = L4_4.SCANREASON_ONMODIFIEDHANDLECLOSE
  if L0_0 ~= L4_4 then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
end
L4_4 = MpCommon
L4_4 = L4_4.ExpandEnvironmentVariables
L5_5 = "%systemroot%"
L4_4 = L4_4(L5_5)
if L4_4 == nil or L4_4 == "" then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = MpCommon
L5_5 = L5_5.PathToWin32Path
L6_6 = L4_4
L5_5 = L5_5(L6_6)
L4_4 = L5_5
if L4_4 == nil or L4_4 == "" then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = string
L5_5 = L5_5.lower
L6_6 = L4_4
L5_5 = L5_5(L6_6)
L4_4 = L5_5
L5_5 = string
L5_5 = L5_5.find
L6_6 = L3_3
L7_7 = L4_4
L8_8 = 1
L9_9 = true
L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9)
if L5_5 ~= nil then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = string
L5_5 = L5_5.find
L6_6 = L3_3
L7_7 = ":\\$winreagent\\"
L8_8 = 1
L9_9 = true
L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9)
if L5_5 ~= nil then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = string
L5_5 = L5_5.find
L6_6 = L3_3
L7_7 = ":\\mount[^\\]*\\windows\\winsxs\\temp\\pendingrenames\\"
L5_5 = L5_5(L6_6, L7_7)
if L5_5 ~= nil then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = string
L5_5 = L5_5.sub
L6_6 = L3_3
L7_7 = 2
L8_8 = 12
L5_5 = L5_5(L6_6, L7_7, L8_8)
if L5_5 == ":\\$windows." then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = string
L5_5 = L5_5.find
L6_6 = L3_3
L7_7 = ":\\windows.old\\"
L8_8 = 1
L9_9 = true
L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9)
if L5_5 ~= nil then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = string
L5_5 = L5_5.find
L6_6 = L3_3
L7_7 = ":\\$sysreset\\"
L8_8 = 1
L9_9 = true
L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9)
if L5_5 ~= nil then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = string
L5_5 = L5_5.find
L6_6 = L3_3
L7_7 = ":\\winpe\\windows\\"
L8_8 = 1
L9_9 = true
L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9)
if L5_5 ~= nil then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = string
L5_5 = L5_5.lower
L6_6 = MpCommon
L6_6 = L6_6.ExpandEnvironmentVariables
L7_7 = "%programfiles%"
L13_13 = L6_6(L7_7)
L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L6_6(L7_7))
if L5_5 ~= nil then
  L6_6 = string
  L6_6 = L6_6.find
  L7_7 = L3_3
  L8_8 = L5_5
  L9_9 = 1
  L10_10 = true
  L6_6 = L6_6(L7_7, L8_8, L9_9, L10_10)
  if L6_6 ~= nil then
    L6_6 = string
    L6_6 = L6_6.find
    L7_7 = L3_3
    L8_8 = ":\\program files\\windowsapps\\"
    L9_9 = 1
    L10_10 = true
    L6_6 = L6_6(L7_7, L8_8, L9_9, L10_10)
    if L6_6 ~= nil then
      L6_6 = mp
      L6_6 = L6_6.CLEAN
      return L6_6
    end
    L6_6 = string
    L6_6 = L6_6.find
    L7_7 = L3_3
    L8_8 = ":\\program files\\git\\"
    L9_9 = 1
    L10_10 = true
    L6_6 = L6_6(L7_7, L8_8, L9_9, L10_10)
    if L6_6 ~= nil then
      L6_6 = mp
      L6_6 = L6_6.CLEAN
      return L6_6
    end
    L6_6 = string
    L6_6 = L6_6.find
    L7_7 = L3_3
    L8_8 = ":\\program files[^\\]*\\java\\jre[^\\]*\\bin\\"
    L6_6 = L6_6(L7_7, L8_8)
    if L6_6 ~= nil then
      L6_6 = mp
      L6_6 = L6_6.CLEAN
      return L6_6
    end
    L6_6 = string
    L6_6 = L6_6.find
    L7_7 = L3_3
    L8_8 = ":\\program files[^\\]*\\java\\jdk[^\\]*\\bin\\"
    L6_6 = L6_6(L7_7, L8_8)
    if L6_6 ~= nil then
      L6_6 = mp
      L6_6 = L6_6.CLEAN
      return L6_6
    end
    L6_6 = string
    L6_6 = L6_6.find
    L7_7 = L3_3
    L8_8 = ":\\java\\jre[^\\]*\\bin\\"
    L6_6 = L6_6(L7_7, L8_8)
    if L6_6 ~= nil then
      L6_6 = mp
      L6_6 = L6_6.CLEAN
      return L6_6
    end
    L6_6 = string
    L6_6 = L6_6.find
    L7_7 = L3_3
    L8_8 = ":\\program files\\sharp\\file-copy\\robocopy.exe"
    L9_9 = 1
    L10_10 = true
    L6_6 = L6_6(L7_7, L8_8, L9_9, L10_10)
    if L6_6 ~= nil then
      L6_6 = mp
      L6_6 = L6_6.CLEAN
      return L6_6
    end
    L6_6 = string
    L6_6 = L6_6.find
    L7_7 = L3_3
    L8_8 = ":\\program files[^\\]*\\microsoft onedrive\\standaloneupdater\\onedrivesetup.exe"
    L6_6 = L6_6(L7_7, L8_8)
    if L6_6 ~= nil then
      L6_6 = mp
      L6_6 = L6_6.CLEAN
      return L6_6
    end
    L6_6 = string
    L6_6 = L6_6.find
    L7_7 = L3_3
    L8_8 = ":\\program files[^\\]*\\microsoft onedrive\\[%d%.]+\\onedrivesetup.exe"
    L6_6 = L6_6(L7_7, L8_8)
    if L6_6 ~= nil then
      L6_6 = mp
      L6_6 = L6_6.CLEAN
      return L6_6
    end
    L6_6 = string
    L6_6 = L6_6.find
    L7_7 = L3_3
    L8_8 = ":\\program files[^\\]*\\microsoft onedrive\\update\\onedrivesetup.exe"
    L6_6 = L6_6(L7_7, L8_8)
    if L6_6 ~= nil then
      L6_6 = mp
      L6_6 = L6_6.CLEAN
      return L6_6
    end
    L6_6 = string
    L6_6 = L6_6.find
    L7_7 = L3_3
    L8_8 = ":\\program files[^\\]*\\microsoft office\\root\\client\\appvdllsurrogate%d*%.exe"
    L6_6 = L6_6(L7_7, L8_8)
    if L6_6 ~= nil then
      L6_6 = mp
      L6_6 = L6_6.CLEAN
      return L6_6
    end
    L6_6 = string
    L6_6 = L6_6.find
    L7_7 = L3_3
    L8_8 = ":\\program files[^\\]*\\microsoft office\\updates\\download\\packagefiles\\[^\\]+\\root\\client\\appvdllsurrogate%d*%.exe"
    L6_6 = L6_6(L7_7, L8_8)
    if L6_6 ~= nil then
      L6_6 = mp
      L6_6 = L6_6.CLEAN
      return L6_6
    end
    L6_6 = string
    L6_6 = L6_6.find
    L7_7 = L3_3
    L8_8 = ":\\program files[^\\]*\\common files\\microsoft shared\\"
    L6_6 = L6_6(L7_7, L8_8)
    if L6_6 ~= nil then
      L6_6 = mp
      L6_6 = L6_6.CLEAN
      return L6_6
    end
    L6_6 = string
    L6_6 = L6_6.find
    L7_7 = L3_3
    L8_8 = ":\\program files[^\\]*\\microsoft visual studio\\%d%d%d%d\\"
    L6_6 = L6_6(L7_7, L8_8)
    if L6_6 ~= nil then
      L6_6 = string
      L6_6 = L6_6.find
      L7_7 = L3_3
      L8_8 = ":\\program files[^\\]*\\microsoft visual studio\\%d%d%d%d\\professional\\common%d\\ide\\remote debugger\\x%d%d\\vsgraphicsremoteengine%.exe"
      L6_6 = L6_6(L7_7, L8_8)
      if L6_6 ~= nil then
        L6_6 = mp
        L6_6 = L6_6.CLEAN
        return L6_6
      end
      L6_6 = string
      L6_6 = L6_6.find
      L7_7 = L3_3
      L8_8 = ":\\program files[^\\]*\\microsoft visual studio\\%d%d%d%d\\enterprise\\common%d\\ide\\remote debugger\\x%d%d\\vsgraphicsremoteengine%.exe"
      L6_6 = L6_6(L7_7, L8_8)
      if L6_6 ~= nil then
        L6_6 = mp
        L6_6 = L6_6.CLEAN
        return L6_6
      end
      L6_6 = string
      L6_6 = L6_6.find
      L7_7 = L3_3
      L8_8 = ":\\program files[^\\]*\\microsoft visual studio\\%d%d%d%d\\community\\common%d\\ide\\remote debugger\\x%d%d\\vsgraphicsremoteengine%.exe"
      L6_6 = L6_6(L7_7, L8_8)
      if L6_6 ~= nil then
        L6_6 = mp
        L6_6 = L6_6.CLEAN
        return L6_6
      end
      L6_6 = string
      L6_6 = L6_6.find
      L7_7 = L3_3
      L8_8 = ":\\program files[^\\]*\\microsoft visual studio\\%d%d%d%d\\preview\\common%d\\ide\\remote debugger\\x%d%d\\vsgraphicsremoteengine%.exe"
      L6_6 = L6_6(L7_7, L8_8)
      if L6_6 ~= nil then
        L6_6 = mp
        L6_6 = L6_6.CLEAN
        return L6_6
      end
      L6_6 = string
      L6_6 = L6_6.find
      L7_7 = L3_3
      L8_8 = ":\\program files[^\\]*\\microsoft visual studio\\%d%d%d%d\\buildtools\\common%d\\ide\\remote debugger\\x%d%d\\vsgraphicsremoteengine%.exe"
      L6_6 = L6_6(L7_7, L8_8)
      if L6_6 ~= nil then
        L6_6 = mp
        L6_6 = L6_6.CLEAN
        return L6_6
      end
      L6_6 = string
      L6_6 = L6_6.find
      L7_7 = L3_3
      L8_8 = ":\\program files[^\\]*\\microsoft visual studio\\%d%d%d%d\\professional\\common%d\\ide\\extensions\\microsoft\\"
      L6_6 = L6_6(L7_7, L8_8)
      if L6_6 ~= nil then
        L6_6 = mp
        L6_6 = L6_6.CLEAN
        return L6_6
      end
      L6_6 = string
      L6_6 = L6_6.find
      L7_7 = L3_3
      L8_8 = ":\\program files[^\\]*\\microsoft visual studio\\%d%d%d%d\\enterprise\\common%d\\ide\\extensions\\microsoft\\"
      L6_6 = L6_6(L7_7, L8_8)
      if L6_6 ~= nil then
        L6_6 = mp
        L6_6 = L6_6.CLEAN
        return L6_6
      end
      L6_6 = string
      L6_6 = L6_6.find
      L7_7 = L3_3
      L8_8 = ":\\program files[^\\]*\\microsoft visual studio\\%d%d%d%d\\community\\common%d\\ide\\extensions\\microsoft\\"
      L6_6 = L6_6(L7_7, L8_8)
      if L6_6 ~= nil then
        L6_6 = mp
        L6_6 = L6_6.CLEAN
        return L6_6
      end
      L6_6 = string
      L6_6 = L6_6.find
      L7_7 = L3_3
      L8_8 = ":\\program files[^\\]*\\microsoft visual studio\\%d%d%d%d\\preview\\common%d\\ide\\extensions\\microsoft\\"
      L6_6 = L6_6(L7_7, L8_8)
      if L6_6 ~= nil then
        L6_6 = mp
        L6_6 = L6_6.CLEAN
        return L6_6
      end
      L6_6 = string
      L6_6 = L6_6.find
      L7_7 = L3_3
      L8_8 = ":\\program files[^\\]*\\microsoft visual studio\\%d%d%d%d\\buildtools\\common%d\\ide\\extensions\\microsoft\\"
      L6_6 = L6_6(L7_7, L8_8)
      if L6_6 ~= nil then
        L6_6 = mp
        L6_6 = L6_6.CLEAN
        return L6_6
      end
      L6_6 = string
      L6_6 = L6_6.find
      L7_7 = L3_3
      L8_8 = ":\\program files[^\\]*\\microsoft visual studio\\%d%d%d%d\\professional\\common%d\\ide\\commonextensions\\microsoft\\"
      L6_6 = L6_6(L7_7, L8_8)
      if L6_6 ~= nil then
        L6_6 = mp
        L6_6 = L6_6.CLEAN
        return L6_6
      end
      L6_6 = string
      L6_6 = L6_6.find
      L7_7 = L3_3
      L8_8 = ":\\program files[^\\]*\\microsoft visual studio\\%d%d%d%d\\enterprise\\common%d\\ide\\commonextensions\\microsoft\\"
      L6_6 = L6_6(L7_7, L8_8)
      if L6_6 ~= nil then
        L6_6 = mp
        L6_6 = L6_6.CLEAN
        return L6_6
      end
      L6_6 = string
      L6_6 = L6_6.find
      L7_7 = L3_3
      L8_8 = ":\\program files[^\\]*\\microsoft visual studio\\%d%d%d%d\\community\\common%d\\ide\\commonextensions\\microsoft\\"
      L6_6 = L6_6(L7_7, L8_8)
      if L6_6 ~= nil then
        L6_6 = mp
        L6_6 = L6_6.CLEAN
        return L6_6
      end
      L6_6 = string
      L6_6 = L6_6.find
      L7_7 = L3_3
      L8_8 = ":\\program files[^\\]*\\microsoft visual studio\\%d%d%d%d\\preview\\common%d\\ide\\commonextensions\\microsoft\\"
      L6_6 = L6_6(L7_7, L8_8)
      if L6_6 ~= nil then
        L6_6 = mp
        L6_6 = L6_6.CLEAN
        return L6_6
      end
      L6_6 = string
      L6_6 = L6_6.find
      L7_7 = L3_3
      L8_8 = ":\\program files[^\\]*\\microsoft visual studio\\%d%d%d%d\\buildtools\\common%d\\ide\\commonextensions\\microsoft\\"
      L6_6 = L6_6(L7_7, L8_8)
      if L6_6 ~= nil then
        L6_6 = mp
        L6_6 = L6_6.CLEAN
        return L6_6
      end
    end
    L6_6 = string
    L6_6 = L6_6.find
    L7_7 = L3_3
    L8_8 = ":\\program files[^\\]*\\wsl\\wslg.exe"
    L6_6 = L6_6(L7_7, L8_8)
    if L6_6 ~= nil then
      L6_6 = mp
      L6_6 = L6_6.CLEAN
      return L6_6
    end
    L6_6 = string
    L6_6 = L6_6.find
    L7_7 = L3_3
    L8_8 = ":\\program files[^\\]*\\windows kits\\%d+\\app certification kit\\aitstatic.exe"
    L6_6 = L6_6(L7_7, L8_8)
    if L6_6 ~= nil then
      L6_6 = mp
      L6_6 = L6_6.CLEAN
      return L6_6
    end
    L6_6 = string
    L6_6 = L6_6.find
    L7_7 = L3_3
    L8_8 = ":\\program files[^\\]*\\sophos\\endpoint defense\\sophosna.exe"
    L6_6 = L6_6(L7_7, L8_8)
    if L6_6 ~= nil then
      L6_6 = mp
      L6_6 = L6_6.CLEAN
      return L6_6
    end
  end
else
  L6_6 = string
  L6_6 = L6_6.find
  L7_7 = L3_3
  L8_8 = "\\appdata\\local\\microsoft\\onedrive\\standaloneupdater\\onedrivesetup.*%.exe"
  L6_6 = L6_6(L7_7, L8_8)
  if L6_6 ~= nil then
    L6_6 = mp
    L6_6 = L6_6.CLEAN
    return L6_6
  end
  L6_6 = string
  L6_6 = L6_6.find
  L7_7 = L3_3
  L8_8 = "\\appdata\\local\\microsoft\\onedrive\\update\\onedrivesetup.*%.exe"
  L6_6 = L6_6(L7_7, L8_8)
  if L6_6 ~= nil then
    L6_6 = mp
    L6_6 = L6_6.CLEAN
    return L6_6
  end
  L6_6 = string
  L6_6 = L6_6.find
  L7_7 = L3_3
  L8_8 = "\\appdata\\local\\microsoft\\onedrive\\[%d%.]+\\onedrivesetup.*%.exe"
  L6_6 = L6_6(L7_7, L8_8)
  if L6_6 ~= nil then
    L6_6 = mp
    L6_6 = L6_6.CLEAN
    return L6_6
  end
  L6_6 = string
  L6_6 = L6_6.find
  L7_7 = L3_3
  L8_8 = ":\\programdata\\microsoft\\grouppolicy\\users\\[^\\]+\\datastore\\0\\sysvol\\fcc%.intfcc%.local\\policies\\[^\\]+\\user\\[^\\]+\\logon\\bginfo%.exe"
  L6_6 = L6_6(L7_7, L8_8)
  if L6_6 ~= nil then
    L6_6 = mp
    L6_6 = L6_6.CLEAN
    return L6_6
  end
  L6_6 = string
  L6_6 = L6_6.find
  L7_7 = L3_3
  L8_8 = ":\\programdata\\docker\\windowsfilter\\"
  L9_9 = 1
  L10_10 = true
  L6_6 = L6_6(L7_7, L8_8, L9_9, L10_10)
  if L6_6 ~= nil then
    L6_6 = mp
    L6_6 = L6_6.CLEAN
    return L6_6
  end
  L6_6 = string
  L6_6 = L6_6.find
  L7_7 = L3_3
  L8_8 = ":\\programdata\\dell\\saremediation\\systemrepair\\snapshots\\"
  L9_9 = 1
  L10_10 = true
  L6_6 = L6_6(L7_7, L8_8, L9_9, L10_10)
  if L6_6 ~= nil then
    L6_6 = mp
    L6_6 = L6_6.CLEAN
    return L6_6
  end
  L6_6 = string
  L6_6 = L6_6.find
  L7_7 = L3_3
  L8_8 = ":\\programdata\\dell\\saremediation\\tempdrivers\\dell"
  L9_9 = 1
  L10_10 = true
  L6_6 = L6_6(L7_7, L8_8, L9_9, L10_10)
  if L6_6 ~= nil then
    L6_6 = mp
    L6_6 = L6_6.CLEAN
    return L6_6
  end
end
L6_6 = false
L7_7 = mp
L7_7 = L7_7.get_contextdata
L8_8 = mp
L8_8 = L8_8.CONTEXT_DATA_FILENAME
L7_7 = L7_7(L8_8)
if L7_7 == nil or L7_7 == "" then
  L8_8 = mp
  L8_8 = L8_8.CLEAN
  return L8_8
end
L8_8 = string
L8_8 = L8_8.lower
L9_9 = L7_7
L8_8 = L8_8(L9_9)
L7_7 = L8_8
L8_8 = string
L8_8 = L8_8.match
L9_9 = L7_7
L10_10 = "(%.[^%.]+)$"
L8_8 = L8_8(L9_9, L10_10)
if L8_8 == ".exe" then
  L8_8 = sysio
  L8_8 = L8_8.IsFileExists
  L9_9 = L4_4
  L10_10 = "\\system32\\"
  L11_11 = L7_7
  L9_9 = L9_9 .. L10_10 .. L11_11
  L8_8 = L8_8(L9_9)
  if L8_8 then
    L6_6 = true
  end
  if not L6_6 then
    L8_8 = sysio
    L8_8 = L8_8.IsFileExists
    L9_9 = L4_4
    L10_10 = "\\syswow64\\"
    L11_11 = L7_7
    L9_9 = L9_9 .. L10_10 .. L11_11
    L8_8 = L8_8(L9_9)
    if L8_8 then
      L6_6 = true
    end
  end
end
if not L6_6 then
  L8_8 = MpCommon
  L8_8 = L8_8.GetOriginalFileName
  L9_9 = L2_2
  L8_8 = L8_8(L9_9)
  if L8_8 ~= nil and L8_8 ~= "" then
    L9_9 = nil
    L10_10 = string
    L10_10 = L10_10.match
    L11_11 = L8_8
    L12_12 = "%.([^%.]+)$"
    L10_10 = L10_10(L11_11, L12_12)
    L9_9 = L10_10
    if L9_9 == nil then
      L10_10 = L8_8
      L11_11 = ".exe"
      L8_8 = L10_10 .. L11_11
      L9_9 = "exe"
    end
    if L9_9 == "exe" then
      L10_10 = sysio
      L10_10 = L10_10.IsFileExists
      L11_11 = L4_4
      L12_12 = "\\system32\\"
      L13_13 = L8_8
      L11_11 = L11_11 .. L12_12 .. L13_13
      L10_10 = L10_10(L11_11)
      if L10_10 then
        L6_6 = true
      end
      if not L6_6 then
        L10_10 = sysio
        L10_10 = L10_10.IsFileExists
        L11_11 = L4_4
        L12_12 = "\\syswow64\\"
        L13_13 = L8_8
        L11_11 = L11_11 .. L12_12 .. L13_13
        L10_10 = L10_10(L11_11)
        if L10_10 then
          L6_6 = true
        end
      end
    end
  end
end
if not L6_6 then
  L8_8 = pe
  L8_8 = L8_8.get_versioninfo
  L8_8 = L8_8()
  if L8_8 == nil then
    L9_9 = mp
    L9_9 = L9_9.CLEAN
    return L9_9
  end
  L9_9 = L8_8.OriginalFilename
  if L9_9 == nil then
    L9_9 = mp
    L9_9 = L9_9.CLEAN
    return L9_9
  end
  L9_9 = string
  L9_9 = L9_9.lower
  L10_10 = L8_8.OriginalFilename
  L9_9 = L9_9(L10_10)
  L10_10 = nil
  L11_11 = string
  L11_11 = L11_11.match
  L12_12 = L9_9
  L13_13 = "%.([^%.]+)$"
  L11_11 = L11_11(L12_12, L13_13)
  L10_10 = L11_11
  if L10_10 == nil then
    L11_11 = L9_9
    L12_12 = ".exe"
    L9_9 = L11_11 .. L12_12
  elseif L10_10 ~= "exe" then
    L11_11 = mp
    L11_11 = L11_11.CLEAN
    return L11_11
  end
  L11_11 = mp
  L11_11 = L11_11.get_contextdata
  L12_12 = mp
  L12_12 = L12_12.CONTEXT_DATA_PROCESSNAME
  L11_11 = L11_11(L12_12)
  if L11_11 ~= nil and L11_11 ~= "" then
    L12_12 = string
    L12_12 = L12_12.lower
    L13_13 = L11_11
    L12_12 = L12_12(L13_13)
    L11_11 = L12_12
    if L11_11 == "svchost.exe" then
      L12_12 = mp
      L12_12 = L12_12.get_contextdata
      L13_13 = mp
      L13_13 = L13_13.CONTEXT_DATA_PROCESS_PPID
      L12_12 = L12_12(L13_13)
      if L12_12 ~= nil then
        L13_13 = mp
        L13_13 = L13_13.GetProcessCommandLine
        L13_13 = L13_13(L12_12)
        if L13_13 ~= nil and L13_13 ~= "" then
          L13_13 = string.lower(L13_13)
          if string.match(L13_13, "-s%s+([^%s]+)") == "bits" then
            return mp.CLEAN
          end
        end
      end
    end
  end
  L12_12 = sysio
  L12_12 = L12_12.IsFileExists
  L13_13 = L4_4
  L13_13 = L13_13 .. "\\system32\\" .. L9_9
  L12_12 = L12_12(L13_13)
  if L12_12 then
    L6_6 = true
  end
  if not L6_6 then
    L12_12 = sysio
    L12_12 = L12_12.IsFileExists
    L13_13 = L4_4
    L13_13 = L13_13 .. "\\syswow64\\" .. L9_9
    L12_12 = L12_12(L13_13)
    if L12_12 then
      L6_6 = true
    end
  end
end
if L6_6 then
  L8_8 = mp
  L8_8 = L8_8.set_mpattribute
  L9_9 = "MpDisableMOACSyncInsert"
  L8_8(L9_9)
  L8_8 = mp
  L8_8 = L8_8.set_mpattribute
  L9_9 = "MpDisableCaching"
  L8_8(L9_9)
  L8_8 = MpCommon
  L8_8 = L8_8.GetPersistContextCount
  L9_9 = L2_2
  L8_8 = L8_8(L9_9)
  if L8_8 == 0 then
    L8_8 = {}
    L9_9 = table
    L9_9 = L9_9.insert
    L10_10 = L8_8
    L11_11 = L1_1
    L9_9(L10_10, L11_11)
    L9_9 = MpCommon
    L9_9 = L9_9.SetPersistContext
    L10_10 = L2_2
    L11_11 = L8_8
    L12_12 = 0
    L9_9(L10_10, L11_11, L12_12)
  else
    L8_8 = MpCommon
    L8_8 = L8_8.QueryPersistContext
    L9_9 = L2_2
    L10_10 = L1_1
    L8_8 = L8_8(L9_9, L10_10)
    if not L8_8 then
      L8_8 = MpCommon
      L8_8 = L8_8.AppendPersistContext
      L9_9 = L2_2
      L10_10 = L1_1
      L11_11 = 0
      L8_8(L9_9, L10_10, L11_11)
    end
  end
  L8_8 = mp
  L8_8 = L8_8.INFECTED
  return L8_8
end
L8_8 = mp
L8_8 = L8_8.CLEAN
return L8_8
