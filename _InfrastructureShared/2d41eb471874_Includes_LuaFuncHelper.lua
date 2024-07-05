local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "InEmail"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = ""
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L0_0 = L1_1.p2
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L0_0 = L1_1.p2
  else
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = string
L1_1 = L1_1.match
L2_2 = L0_0
L1_1 = L1_1(L2_2, "^[Hh][Tt][Tt][Pp][Ss]?:[^'\"]+")
if L1_1 ~= nil then
  L2_2 = {}
  L2_2.SIG_CONTEXT = "LuaGen"
  L2_2.CONTENT_SOURCE = "HTML"
  L2_2.FILELESS = "false"
  L2_2.CMDLINE_URL = "false"
  L2_2.BREAK_AT_FIRST_HIT_MALWARE = "60"
  L2_2.BREAK_AT_FIRST_HIT_PHISH = "60"
  L2_2.BREAK_AT_FIRST_HIT_CLEAN = "60"
  L2_2.TAG = "Email"
  if CheckUrlReputationSimple({L1_1}, L2_2, 60) then
    return mp.INFECTED
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
