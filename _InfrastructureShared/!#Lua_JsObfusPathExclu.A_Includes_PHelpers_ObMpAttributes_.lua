local L0_0, L1_1, L2_2, L3_3
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.getfilename
L3_3 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L3_3, L1_1())
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.sub
  L2_2 = L0_0
  L3_3 = -3
  L1_1 = L1_1(L2_2, L3_3)
  L2_2 = string
  L2_2 = L2_2.sub
  L3_3 = L0_0
  L2_2 = L2_2(L3_3, -4)
  L3_3 = L0_0.match
  L3_3 = L3_3(L0_0, "%->.+/")
  if not L3_3 then
    L3_3 = L0_0.match
    L3_3 = L3_3(L0_0, "%->.+\\")
    if not L3_3 then
      L3_3 = L0_0.match
      L3_3 = L3_3(L0_0, "%->.+%->")
    end
  elseif L3_3 then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  if L1_1 == ".js" or L2_2 == ".jse" or L2_2 == ".vbs" or L2_2 == ".vbe" or L2_2 == ".wsf" then
    L3_3 = MpCommon
    L3_3 = L3_3.PathToWin32Path
    L3_3 = L3_3(mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)))
    if L3_3 == nil then
      return mp.CLEAN
    end
    if true == IsInternetCache(L3_3) then
      return mp.INFECTED
    end
    if L3_3:find(":\\users\\[^\\]+\\appdata\\local\\temp", 1, true) and string.match(L3_3, "\\appdata\\local\\temp\\(.+)") and not string.match(L3_3, "\\appdata\\local\\temp\\(.+)"):find("\\", 1, true) then
      mp.set_mpattribute("Lua:JsObfusPathInclusion.A")
    end
    if L3_3:find("\\program files\\", 1, true) or L3_3:find("\\clientaccess\\owa\\prem\\", 1, true) or L3_3:find(":\\windows\\", 1, true) or L3_3:find(":\\program files (x86)\\", 1, true) or L3_3:find("\\google\\chrome\\user data\\default\\extensions\\", 1, true) or L3_3:find("\\google\\chrome\\user data\\profile", 1, true) or L3_3:find("\\device\\harddiskvolume", 1, true) or L3_3:find(":\\inetpub\\", 1, true) or L3_3:find("\\netlogon\\", 1, true) or L3_3:find(":\\programdata\\microsoft\\grouppolicy\\users\\", 1, true) or L3_3:find("\\mozilla\\firefox\\profiles\\", 1, true) or L3_3:find("\\programdata\\lenovo\\userguide", 1, true) or L3_3:find("\\google\\chrome\\user data\\default\\extensions", 1, true) or L3_3:find("documents and settings", 1, true) then
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
