local L0_0, L1_1
L1_1 = MpCommon
L1_1 = L1_1.NidSearch
L1_1 = L1_1(mp.NID_DISABLE_NW_REPORTING, 1)
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = MpCommon
L1_1 = L1_1.NidSearch
L1_1 = L1_1(mp.NID_ENABLE_NW_REPORTING, 1)
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L0_0 = L1_1.utf8p2
    if L0_0 ~= nil then
      L1_1 = nil
      if string.match(L0_0, "^\"%z[^\"]*\"%z") ~= nil then
        L1_1 = string.gsub(string.match(L0_0, "\"%z[^\"]*\"%z"), "\"%z", "")
      elseif string.match(L0_0, "%.%ze%zx%ze%z") ~= nil then
        L1_1 = string.match(L0_0, "%.%ze%zx%ze%z")
      elseif string.match(string.lower(L0_0), "%.%zd%zl%zl%z") ~= nil then
        L1_1 = string.match(L0_0, "%.%zd%zl%zl%z")
      end
      if L1_1 ~= nil then
        mp.ReportLowfi(L1_1, 1795012340)
      end
    end
  end
  L1_1 = mp
  L1_1 = L1_1.INFECTED
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
