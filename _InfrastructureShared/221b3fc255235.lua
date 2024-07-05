function reportwinlogon(A0_0)
  local L1_1, L2_2, L3_3, L4_4, L5_5
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(L2_2)
  for L5_5 in L2_2(L3_3, L4_4) do
    if L5_5:find("recycle", 1, true) then
      mp.ReportLowfi(L5_5, 3865603081)
    end
  end
end
if this_sigattrlog[1].matched then
  mp.ReportLowfi(this_sigattrlog[1].utf8p2, 3865603081)
end
if this_sigattrlog[2].matched then
  mp.ReportLowfi(this_sigattrlog[2].utf8p2, 3865603081)
end
if this_sigattrlog[3].matched then
  reportwinlogon(this_sigattrlog[3].utf8p2)
end
if this_sigattrlog[4].matched then
  reportwinlogon(this_sigattrlog[4].utf8p2)
end
if this_sigattrlog[5].matched then
  mp.ReportLowfi(this_sigattrlog[5].utf8p2, 3865603081)
end
if this_sigattrlog[6].matched then
  mp.ReportLowfi(this_sigattrlog[6].utf8p2, 3865603081)
end
if this_sigattrlog[7].matched then
  reportwinlogon(this_sigattrlog[7].utf8p2)
end
if this_sigattrlog[8].matched then
  reportwinlogon(this_sigattrlog[8].utf8p2)
end
if this_sigattrlog[9].matched then
  mp.ReportLowfi(this_sigattrlog[9].utf8p2, 3865603081)
end
if this_sigattrlog[10].matched then
  mp.ReportLowfi(this_sigattrlog[10].utf8p2, 3865603081)
end
if this_sigattrlog[11].matched then
  reportwinlogon(this_sigattrlog[11].utf8p2)
end
if this_sigattrlog[12].matched then
  reportwinlogon(this_sigattrlog[12].utf8p2)
end
return mp.INFECTED
