local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.IsHipsRuleEnabled
L1_1 = "5beb7efe-fd9a-4556-801d-275e5ffc04cc"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.INFECTED
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "Nscript:Type_js"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.get_mpattribute
  L1_1 = "Nscript:Type_vbs"
  L0_0 = L0_0(L1_1)
else
  if L0_0 then
    L0_0 = mp
    L0_0 = L0_0.get_mpattribute
    L1_1 = "Nscript:Type_ps"
    L0_0 = L0_0(L1_1)
    if not L0_0 then
      L0_0 = mp
      L0_0 = L0_0.get_mpattribute
      L1_1 = "Lua:ProgrammingLangFileExtension"
      L0_0 = L0_0(L1_1)
    end
end
elseif L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.FILEPATH_QUERY_FULL
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_LOWERCASE
L3_3 = L1_1(L2_2, L3_3)
L0_0 = L0_0(L1_1, L2_2, L3_3, L1_1(L2_2, L3_3))
if L0_0 == nil or L0_0 == "" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = MpCommon
L1_1 = L1_1.PathToWin32Path
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L0_0 = L1_1
L1_1 = string
L1_1 = L1_1.sub
L2_2 = L0_0
L3_3 = -5
L1_1 = L1_1(L2_2, L3_3)
L2_2 = string
L2_2 = L2_2.sub
L3_3 = L1_1
L2_2 = L2_2(L3_3, -4)
if L1_1 == ".psd1" or L1_1 == ".psm1" or L1_1 == "s1xml" or L2_2 == ".ps1" or L1_1 == ".psrc" or L1_1 == ".pssc" or L1_1 == "cdxml" then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.find
L3_3 = L3_3(L0_0, ">%[msilres")
if L3_3 then
  L3_3 = mp
  L3_3 = L3_3.set_mpattribute
  L3_3("LUA:InsideMSILRES")
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.IsPathExcludedForHipsRule
L3_3 = L3_3(L0_0, "5beb7efe-fd9a-4556-801d-275e5ffc04cc")
if L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.IsTrustedFile
L3_3 = L3_3(false)
if L3_3 == true then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.find
L3_3 = L3_3(L0_0, "\\appdata\\roaming\\microsoft\\office\\16.0\\[^\\]+\\proofing\\")
if L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
else
  L3_3 = string
  L3_3 = L3_3.find
  L3_3 = L3_3(L0_0, "\\program files[^\\]*\\microsoft office\\root\\office%d+\\%d+\\%a+naivebayescommandranker.txt")
  if L3_3 then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  else
    L3_3 = string
    L3_3 = L3_3.find
    L3_3 = L3_3(L0_0, "\\windows\\imecache\\[^\\]+\\appdeploytoolkit\\appdeploytoolkitmain.cs")
    if L3_3 then
      L3_3 = mp
      L3_3 = L3_3.CLEAN
      return L3_3
    else
      L3_3 = string
      L3_3 = L3_3.find
      L3_3 = L3_3(L0_0, "\\windows\\ccmcache\\[^\\]+\\appdeploytoolkit\\appdeploytoolkitmain.cs")
      if L3_3 then
        L3_3 = mp
        L3_3 = L3_3.CLEAN
        return L3_3
      end
    end
  end
end
L3_3 = string
L3_3 = L3_3.find
L3_3 = L3_3(L0_0, "\\windowspowershell\\v1.0\\modules\\", 1, true)
if L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
else
  L3_3 = string
  L3_3 = L3_3.find
  L3_3 = L3_3(L0_0, "\\eceagentservice\\[^\\]+\\[^\\]+%.psd1$")
  if L3_3 then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
end
L3_3 = mp
L3_3 = L3_3.get_contextdata
L3_3 = L3_3(mp.CONTEXT_DATA_PROCESSNAME)
if L3_3 == nil then
  return mp.CLEAN
end
if ({
  ["cscript.exe"] = "",
  ["wscript.exe"] = "",
  ["winword.exe"] = "",
  ["powerpnt.exe"] = "",
  ["excel.exe"] = "",
  ["powershell.exe"] = ""
})[string.lower(L3_3)] or mp.get_mpattribute("BM_CSCRIPT_EXE") or mp.get_mpattribute("BM_POWERSHELL_EXE") or mp.get_mpattribute("BM_POWERSHELL_ISE_EXE") or mp.get_mpattribute("BM_WSCRIPT_EXE") then
  return mp.INFECTED
end
return mp.CLEAN
