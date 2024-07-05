local L0_0, L1_1, L2_2, L3_3
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L1_1 = L0_0()
L2_2, L3_3 = nil, nil
for _FORV_7_, _FORV_8_ in ipairs(L0_0) do
  if _FORV_8_.image_path ~= nil and mp.bitand(_FORV_8_.reason_ex, 1) == 1 then
    L2_2 = string.lower(_FORV_8_.image_path)
    if L2_2:find("excel.exe") or L2_2:find("winword.exe") then
      L3_3 = string.lower(mp.GetProcessCommandLine(_FORV_8_.ppid))
      if string.find(L3_3, "rs4_winatp-intro-invoice", 1, true) or string.find(L3_3, "onboardingwindows11tomicrosoftdefender", 1, true) then
        return mp.CLEAN
      end
      return mp.INFECTED
    end
  end
end
return mp.CLEAN
