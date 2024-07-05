local L0_0, L1_1, L2_2
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = string
  L0_0 = L0_0.lower
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.utf8p1
  L0_0 = L0_0(L1_1)
  if L0_0 ~= nil then
    L1_1 = string
    L1_1 = L1_1.match
    L2_2 = L0_0
    L1_1 = L1_1(L2_2, "\\docker\\windowsfilter\\[a-f0-9]*\\files\\windows\\")
    if L1_1 ~= nil then
      L2_2 = string
      L2_2 = L2_2.match
      L2_2 = L2_2(L0_0, "\\system32\\amsi.dll$")
      if L2_2 ~= nil then
        return mp.CLEAN
      end
      L2_2 = string.match(L0_0, "\\syswow64\\amsi.dll$")
      if L2_2 ~= nil then
        return mp.CLEAN
      end
    end
    L2_2 = mp
    L2_2 = L2_2.ContextualExpandEnvironmentVariables
    L2_2 = L2_2(L0_0)
    if L2_2 and string.lower(string.sub(L2_2, 2, 11)) ~= ":\\windows\\" and string.lower(string.sub(L2_2, 2, 11)) ~= "system%\\am" then
      bm.add_related_file(L0_0)
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
