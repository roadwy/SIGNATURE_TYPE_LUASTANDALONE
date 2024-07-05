local L0_0, L1_1, L2_2
L2_2 = this_sigattrlog
L2_2 = L2_2[2]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[2]
  L0_0 = L2_2.ppid
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[3]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[3]
    L0_0 = L2_2.ppid
  else
    L2_2 = this_sigattrlog
    L2_2 = L2_2[4]
    L2_2 = L2_2.matched
    if L2_2 then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[4]
      L0_0 = L2_2.ppid
    else
      L2_2 = this_sigattrlog
      L2_2 = L2_2[5]
      L2_2 = L2_2.matched
      if L2_2 then
        L2_2 = this_sigattrlog
        L2_2 = L2_2[5]
        L0_0 = L2_2.ppid
      else
        L2_2 = this_sigattrlog
        L2_2 = L2_2[6]
        L2_2 = L2_2.matched
        if L2_2 then
          L2_2 = this_sigattrlog
          L2_2 = L2_2[6]
          L0_0 = L2_2.ppid
        end
      end
    end
  end
end
L2_2 = this_sigattrlog
L2_2 = L2_2[7]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[7]
  L1_1 = L2_2.utf8p1
end
if L0_0 == nil or L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = bm
L2_2 = L2_2.get_process_notifications
L2_2 = L2_2(L0_0)
if L2_2 ~= nil then
  for _FORV_6_, _FORV_7_ in ipairs(L2_2) do
    if _FORV_7_.tag == 4 and _FORV_7_.rawutf8p1 == L1_1 then
      return mp.INFECTED
    end
  end
end
return mp.CLEAN
