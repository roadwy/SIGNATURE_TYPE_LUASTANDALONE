local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 271360 and L0_0 <= 2170880 then
  L1_1 = mp
  L1_1 = L1_1.set_mpattribute
  L2_2 = "Lua:PST.Has.ASPXExt.InInterestingA"
  L1_1(L2_2)
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = MpCommon
L2_2 = L2_2.PathToWin32Path
L3_3 = mp
L3_3 = L3_3.getfilename
L3_3 = L3_3(mp.FILEPATH_QUERY_FULL)
L3_3 = L2_2(L3_3, L3_3(mp.FILEPATH_QUERY_FULL))
L1_1 = L1_1(L2_2, L3_3, L2_2(L3_3, L3_3(mp.FILEPATH_QUERY_FULL)))
L2_2 = string
L2_2 = L2_2.find
L3_3 = L1_1
L2_2 = L2_2(L3_3, "\\microsoft\\exchange server\\v%d%d\\frontend\\")
if L2_2 == nil then
  L2_2 = string
  L2_2 = L2_2.find
  L3_3 = L1_1
  L2_2 = L2_2(L3_3, "\\frontend\\httpproxy\\owa\\", 1, true)
  if L2_2 == nil then
    L2_2 = string
    L2_2 = L2_2.find
    L3_3 = L1_1
    L2_2 = L2_2(L3_3, "\\inetpub\\wwwroot\\", 1, true)
    if L2_2 == nil then
      L2_2 = string
      L2_2 = L2_2.find
      L3_3 = L1_1
      L2_2 = L2_2(L3_3, "\\microsoft\\exchange server\\v%d%d\\clientaccess\\")
    end
  end
elseif L2_2 ~= nil then
  L2_2 = mp
  L2_2 = L2_2.set_mpattribute
  L3_3 = "Lua:PST.SuspPath"
  L2_2(L3_3)
end
if L0_0 ~= 271360 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.readprotection
L3_3 = false
L2_2(L3_3)
L2_2 = mp
L2_2 = L2_2.readfile
L3_3 = 20480
L2_2 = L2_2(L3_3, 65536)
L3_3 = string
L3_3 = L3_3.lower
L3_3 = L3_3(tostring(L2_2))
if string.find(L3_3, "script language=", 1, true) == nil and string.find(L3_3, "page language=", 1, true) == nil then
  return mp.CLEAN
end
if string.find(L3_3, "uploadfile", 1, true) ~= nil or string.find(L3_3, "eval", 1, true) ~= nil or string.find(L3_3, "exec_code", 1, true) ~= nil then
  mp.set_mpattribute("Lua:Shell_CVE-2021-31207")
elseif string.find(L3_3, "jscript", 1, true) ~= nil or string.find(L3_3, "\"c#\"", 1, true) ~= nil or string.find(L3_3, "server", 1, true) ~= nil then
  mp.set_mpattribute("Lua:Suspicious.CVE-2021-31207")
  if string.find(L3_3, "powershell", 1, true) ~= nil or string.find(L3_3, "page_load", 1, true) ~= nil or string.find(L3_3, "scriptText", 1, true) ~= nil then
    mp.set_mpattribute("Lua:PowerShell_CVE-2021-31207")
  end
end
return mp.CLEAN
