local L0_0, L1_1, L2_2
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L1_1 = L2_2.utf8p2
  L0_0 = L1_1
  if L0_0 == nil or L0_0 == "" then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = string
  L2_2 = L2_2.lower
  L2_2 = L2_2(mp.ContextualExpandEnvironmentVariables(L0_0))
  L0_0 = L2_2
  L2_2 = sysio
  L2_2 = L2_2.IsFileExists
  L2_2 = L2_2(L0_0)
  if L2_2 then
    L2_2 = string
    L2_2 = L2_2.lower
    L2_2 = L2_2(L1_1)
    if string.sub(L2_2, 1, 1) == "%" and (string.find(L2_2, "%commonprogramfiles%\\system\\wab32.dll", 1, true) or string.find(L2_2, "%CommonProgramFiles(x86)%\\system\\wab32.dll", 1, true)) then
      return mp.CLEAN
    end
    if not string.find(L0_0, "\\outlook express\\wab32.dll", 1, true) then
      bm.add_related_file(L0_0)
      return mp.INFECTED
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
