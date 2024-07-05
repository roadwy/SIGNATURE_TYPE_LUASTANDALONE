local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = {}
L0_0["cmd.exe"] = true
L0_0["powershell.exe"] = true
L1_1 = nil
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L1_1 = L2_2.ppid
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[2]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[2]
    L1_1 = L2_2.ppid
  else
    L2_2 = this_sigattrlog
    L2_2 = L2_2[3]
    L2_2 = L2_2.matched
    if L2_2 then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[3]
      L1_1 = L2_2.ppid
    else
      L2_2 = this_sigattrlog
      L2_2 = L2_2[4]
      L2_2 = L2_2.matched
      if L2_2 then
        L2_2 = this_sigattrlog
        L2_2 = L2_2[4]
        L1_1 = L2_2.ppid
      else
        L2_2 = this_sigattrlog
        L2_2 = L2_2[5]
        L2_2 = L2_2.matched
        if L2_2 then
          L2_2 = this_sigattrlog
          L2_2 = L2_2[5]
          L1_1 = L2_2.ppid
        else
          L2_2 = mp
          L2_2 = L2_2.CLEAN
          return L2_2
        end
      end
    end
  end
end
L2_2 = nil
if L3_3 then
  L2_2 = L3_3.ppid
else
  return L3_3
end
for L6_6 = 1, 5 do
  if L6_6 > 6 then
    L7_7 = mp
    L7_7 = L7_7.CLEAN
    return L7_7
  end
  L7_7 = bm
  L7_7 = L7_7.get_process_relationships
  L8_8 = L1_1
  L8_8 = L7_7(L8_8)
  for _FORV_12_, _FORV_13_ in ipairs(L8_8) do
    if _FORV_13_.reason == 1 then
      if _FORV_13_.ppid == L2_2 then
        return mp.INFECTED
      elseif L0_0[string.lower(string.match(_FORV_13_.image_path, "\\([^\\]+)$"))] ~= true then
        mp.ReportLowfi(_FORV_13_.image_path, 4150180286)
        return mp.CLEAN
      end
      L1_1 = _FORV_13_.ppid
    end
  end
end
return L3_3
