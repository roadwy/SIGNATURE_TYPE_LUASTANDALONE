local L0_0, L1_1
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
  end
end
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.find
  L1_1 = L1_1(L0_0, "\\microsoft\\exchange server\\v[1-9][0-9]\\frontend\\")
  if L1_1 == nil then
    L1_1 = string
    L1_1 = L1_1.find
    L1_1 = L1_1(L0_0, "\\frontend\\httpproxy\\owa\\", 1, true)
    if L1_1 == nil then
      L1_1 = string
      L1_1 = L1_1.find
      L1_1 = L1_1(L0_0, "\\inetpub\\wwwroot\\", 1, true)
      if L1_1 == nil then
        L1_1 = string
        L1_1 = L1_1.find
        L1_1 = L1_1(L0_0, "\\microsoft\\exchange server\\v[1-9][0-9]\\clientaccess\\")
      end
    end
  elseif L1_1 ~= nil then
    L1_1 = IsExchangeServer
    L1_1 = L1_1()
    if L1_1 then
      L1_1 = string
      L1_1 = L1_1.match
      L1_1 = L1_1(L0_0, "(.*\\)[^\\]+$")
      if L1_1 then
        bm.trigger_sig("TriggerShellPath", L1_1)
      end
      mp.ReportLowfi(L0_0, 1067831818)
      bm.add_related_file(L0_0)
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
