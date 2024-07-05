local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(this_sigattrlog[2].utf8p1)
  L0_0 = L1_1
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[3]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = string
    L1_1 = L1_1.lower
    L1_1 = L1_1(this_sigattrlog[3].utf8p1)
    L0_0 = L1_1
  else
    L1_1 = this_sigattrlog
    L1_1 = L1_1[4]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = string
      L1_1 = L1_1.lower
      L1_1 = L1_1(this_sigattrlog[4].utf8p1)
      L0_0 = L1_1
    else
      L1_1 = this_sigattrlog
      L1_1 = L1_1[5]
      L1_1 = L1_1.matched
      if L1_1 then
        L1_1 = string
        L1_1 = L1_1.lower
        L1_1 = L1_1(this_sigattrlog[5].utf8p1)
        L0_0 = L1_1
      end
    end
  end
end
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.match
  L1_1 = L1_1(L0_0, "\\microsoft\\exchange server\\v%d%d\\frontend\\")
  if L1_1 == nil then
    L1_1 = string
    L1_1 = L1_1.find
    L1_1 = L1_1(L0_0, "\\frontend\\httpproxy\\owa\\", 1, true)
    if L1_1 == nil then
      L1_1 = string
      L1_1 = L1_1.match
      L1_1 = L1_1(L0_0, "\\microsoft\\exchange server\\v%d%d\\clientaccess\\")
    end
  elseif L1_1 ~= nil then
    L1_1 = sysio
    L1_1 = L1_1.IsFileExists
    L1_1 = L1_1(L0_0)
    if L1_1 then
      L1_1 = string
      L1_1 = L1_1.match
      L1_1 = L1_1(L0_0, "(.*\\)[^\\]+$")
      if L1_1 then
        bm.trigger_sig("TriggerShellPath", L1_1)
      end
      mp.ReportLowfi(L0_0, 3467544967)
      bm.add_related_file(L0_0)
      bm.add_threat_file(L0_0)
    end
    L1_1 = mp
    L1_1 = L1_1.INFECTED
    return L1_1
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
