local L0_0, L1_1, L2_2, L3_3
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.getfilename
L3_3 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L3_3, L1_1())
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = sysio
L1_1 = L1_1.GetFileLastWriteTime
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L2_2 = sysio
L2_2 = L2_2.GetLastResult
L2_2 = L2_2()
L2_2 = L2_2.Success
if L2_2 and L1_1 and L1_1 ~= 0 then
  L2_2 = L1_1 / 10000000
  L1_1 = L2_2 - 11644473600
end
L2_2 = MpCommon
L2_2 = L2_2.GetCurrentTimeT
L2_2 = L2_2()
if L2_2 then
  if not (L1_1 > L2_2) then
    L3_3 = L2_2 - L1_1
  elseif L3_3 > 345600 then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
end
L3_3 = L0_0.match
L3_3 = L3_3(L0_0, "(.+\\)([^\\]+)$")
if L3_3 == nil or L3_3(L0_0, "(.+\\)([^\\]+)$") == nil then
  return mp.CLEAN
end
if string.match(L3_3, "\\program files\\") or string.match(L3_3, "\\program files (x86)\\") or string.match(L3_3, "\\apache\\") or string.match(L3_3, "\\oracle\\") or string.match(L3_3, "\\eclipse\\") or string.match(L3_3, "\\org.eclipse.") or string.match(L3_3, "\\netbeans\\") or string.match(L3_3, "\\onedrive\\") or string.match(L3_3, "\\modules\\") or string.match(L3_3, "\\lib\\") or string.match(L3_3, "\\repository\\") or string.match(L3_3, "\\plugin") or string.match(L3_3, "\\bin\\") or string.match(L3_3, "minecraft\\") then
  mp.set_mpattribute("Lua:JarPathExclusionList")
end
if not mp.get_mpattribute("LUA:FileSizeGT4M.A") and not mp.get_mpattribute("Lua:JarPathExclusionList") and mp.get_mpattribute("Lua:HasMotw") and getAgePrev(false) and getAgePrev(false) <= 100 then
  return mp.INFECTED
end
return mp.CLEAN
