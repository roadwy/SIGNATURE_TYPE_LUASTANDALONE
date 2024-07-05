local L0_0, L1_1, L2_2, L3_3, L4_4
L2_2 = this_sigattrlog
L2_2 = L2_2[10]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[10]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[10]
    L0_0 = L2_2.utf8p2
  end
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[11]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[11]
    L2_2 = L2_2.utf8p2
    if L2_2 ~= nil then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[11]
      L0_0 = L2_2.utf8p2
    end
  else
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
end
L2_2 = contains
L3_3 = L0_0
L4_4 = "%-[eE][ncodemaNCODEMA]*%s+"
L2_2 = L2_2(L3_3, L4_4, false)
if L2_2 then
  L2_2 = NormalizeCmdline
  L3_3 = "powershell"
  L4_4 = L0_0
  L2_2 = L2_2(L3_3, L4_4)
  L1_1 = L2_2
  L2_2 = contains
  L3_3 = L1_1
  L4_4 = "{0}"
  L2_2 = L2_2(L3_3, L4_4)
  if L2_2 then
    L0_0 = L1_1
  end
end
L2_2 = {L3_3, L4_4}
L3_3 = "[CloudMan]"
L4_4 = "/oauth2/v2.0/token"
L3_3 = contains
L4_4 = L0_0
L3_3 = L3_3(L4_4, L2_2)
if L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.gsub
L4_4 = L0_0
L3_3 = L3_3(L4_4, "%'%'%+%'%'", "")
L0_0 = L3_3
L3_3 = "(?:\\{\\d+\\}(?:\\w+)?(?:\\{\\d+\\})?){3,10}.{1,10}-f"
L4_4 = false
L4_4, _ = MpCommon.StringRegExpSearch(L3_3, L0_0)
if L4_4 == true then
  bm.add_related_string("PShellEnc_cmdline", L0_0, bm.RelatedStringBMReport)
  return mp.INFECTED
end
return mp.CLEAN
