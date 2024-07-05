local L0_0, L1_1, L2_2
L2_2 = this_sigattrlog
L2_2 = L2_2[5]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[5]
  L0_0 = L2_2.utf8p1
end
L2_2 = this_sigattrlog
L2_2 = L2_2[8]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[8]
  L1_1 = L2_2.utf8p2
end
if L0_0 then
  L2_2 = string
  L2_2 = L2_2.lower
  L2_2 = L2_2(L0_0)
  L0_0 = L2_2
  L2_2 = string
  L2_2 = L2_2.find
  L2_2 = L2_2(L0_0, "\\services.exe", -13, true)
  if L2_2 then
    L2_2 = string
    L2_2 = L2_2.find
    L2_2 = L2_2(L0_0, "\\windows\\system32\\", -30, true)
    if not L2_2 then
      L2_2 = string
      L2_2 = L2_2.find
      L2_2 = L2_2(L0_0, "\\windows\\winsxs\\", 1, true)
    elseif L2_2 then
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
  end
  L2_2 = string
  L2_2 = L2_2.find
  L2_2 = L2_2(L0_0, "\\reg.exe", -8, true)
  if not L2_2 then
    L2_2 = string
    L2_2 = L2_2.find
    L2_2 = L2_2(L0_0, "\\regedit.exe", -12, true)
    if not L2_2 then
      L2_2 = string
      L2_2 = L2_2.find
      L2_2 = L2_2(L0_0, "\\powershell.exe", -15, true)
      if not L2_2 then
        L2_2 = string
        L2_2 = L2_2.find
        L2_2 = L2_2(L0_0, "\\cmd.exe", -8, true)
      end
    end
  elseif L2_2 then
    L2_2 = bm
    L2_2 = L2_2.get_process_relationships
    L2_2 = L2_2()
    if L2_2 then
      for _FORV_7_, _FORV_8_ in ipairs(L2_2) do
        if _FORV_8_.ppid and mp.bitand(_FORV_8_.reason_ex, 1) == 1 then
          bm.add_related_process(_FORV_8_.ppid)
        end
      end
    end
  end
end
if L1_1 then
  L2_2 = string
  L2_2 = L2_2.lower
  L2_2 = L2_2(L1_1)
  L1_1 = L2_2
  L2_2 = string
  L2_2 = L2_2.find
  L2_2 = L2_2(L1_1, "\\programdata\\microsoft\\windows defender\\definition updates\\{%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x}\\mpksldrv%.sys")
  if L2_2 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
end
L2_2 = mp
L2_2 = L2_2.INFECTED
return L2_2
