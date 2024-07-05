local L0_0, L1_1, L2_2, L3_3
L2_2 = this_sigattrlog
L2_2 = L2_2[8]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[8]
  L2_2 = L2_2.utf8p1
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[11]
    L2_2 = L2_2.matched
    if L2_2 then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[11]
      L2_2 = L2_2.utf8p1
      if L2_2 ~= nil then
        L2_2 = this_sigattrlog
        L2_2 = L2_2[8]
        L0_0 = L2_2.utf8p1
        L2_2 = this_sigattrlog
        L2_2 = L2_2[11]
        L1_1 = L2_2.utf8p1
      end
    end
  end
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[9]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[9]
    L2_2 = L2_2.utf8p1
    if L2_2 ~= nil then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[12]
      L2_2 = L2_2.matched
      if L2_2 then
        L2_2 = this_sigattrlog
        L2_2 = L2_2[12]
        L2_2 = L2_2.utf8p1
        if L2_2 ~= nil then
          L2_2 = this_sigattrlog
          L2_2 = L2_2[9]
          L0_0 = L2_2.utf8p1
          L2_2 = this_sigattrlog
          L2_2 = L2_2[12]
          L1_1 = L2_2.utf8p1
        end
      end
    end
  else
    L2_2 = this_sigattrlog
    L2_2 = L2_2[10]
    L2_2 = L2_2.matched
    if L2_2 then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[10]
      L2_2 = L2_2.utf8p1
      if L2_2 ~= nil then
        L2_2 = this_sigattrlog
        L2_2 = L2_2[13]
        L2_2 = L2_2.matched
        if L2_2 then
          L2_2 = this_sigattrlog
          L2_2 = L2_2[13]
          L2_2 = L2_2.utf8p1
          if L2_2 ~= nil then
            L2_2 = this_sigattrlog
            L2_2 = L2_2[10]
            L0_0 = L2_2.utf8p1
            L2_2 = this_sigattrlog
            L2_2 = L2_2[13]
            L1_1 = L2_2.utf8p1
          end
        end
      end
    end
  end
end
if L0_0 and L1_1 then
  L3_3 = L0_0
  L2_2 = L0_0.lower
  L2_2 = L2_2(L3_3)
  L3_3 = L1_1.lower
  L3_3 = L3_3(L1_1)
  if L2_2 ~= L3_3 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
end
L2_2 = mp
L2_2 = L2_2.ContextualExpandEnvironmentVariables
L3_3 = L0_0
L2_2 = L2_2(L3_3)
L0_0 = L2_2
L2_2 = {L3_3}
L3_3 = "cnmss"
L3_3 = contains
L3_3 = L3_3(L0_0, L2_2)
if L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = sysio
L3_3 = L3_3.IsFileExists
L3_3 = L3_3(L0_0)
if L3_3 then
  L3_3 = bm
  L3_3 = L3_3.add_related_file
  L3_3(L0_0)
end
L3_3 = bm
L3_3 = L3_3.add_related_string
L3_3("Office_SusCreate_A", L0_0, bm.RelatedStringBMReport)
L3_3 = {
  "winword.exe",
  "excel.exe",
  "powerpnt.exe",
  "mspub.exe"
}
if IsProcNameInParentProcessTree("BM", L3_3) then
  return mp.INFECTED
end
return mp.CLEAN
