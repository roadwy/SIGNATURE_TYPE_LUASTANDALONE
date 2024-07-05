local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L2_2 = this_sigattrlog
L2_2 = L2_2[2]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[2]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[2]
    L0_0 = L2_2.utf8p1
    L2_2 = this_sigattrlog
    L2_2 = L2_2[2]
    L1_1 = L2_2.utf8p2
  end
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[3]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[3]
    L2_2 = L2_2.utf8p2
    if L2_2 ~= nil then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[3]
      L0_0 = L2_2.utf8p1
      L2_2 = this_sigattrlog
      L2_2 = L2_2[3]
      L1_1 = L2_2.utf8p2
    end
  else
    L2_2 = this_sigattrlog
    L2_2 = L2_2[4]
    L2_2 = L2_2.matched
    if L2_2 then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[4]
      L2_2 = L2_2.utf8p2
      if L2_2 ~= nil then
        L2_2 = this_sigattrlog
        L2_2 = L2_2[4]
        L0_0 = L2_2.utf8p1
        L2_2 = this_sigattrlog
        L2_2 = L2_2[4]
        L1_1 = L2_2.utf8p2
      end
    end
  end
end
if L0_0 == nil or L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = L1_1
L3_3 = 0
L4_4 = 0
repeat
  L5_5 = string
  L5_5 = L5_5.gsub
  L6_6 = L2_2
  L6_6 = L5_5(L6_6, "%%(%x%x)", function(A0_7)
    return string.char(tonumber(A0_7, 16))
  end)
  L4_4 = L6_6
  L2_2 = L5_5
  L3_3 = L3_3 + L4_4
until L4_4 == 0
L5_5 = string
L5_5 = L5_5.gsub
L6_6 = L2_2
L6_6 = L5_5(L6_6, "{[^-]*-(.)}", "%1")
L4_4 = L6_6
L2_2 = L5_5
L3_3 = L3_3 + L4_4
L5_5 = string
L5_5 = L5_5.gsub
L6_6 = L2_2
L6_6 = L5_5(L6_6, "[%$}]", "")
L4_4 = L6_6
L2_2 = L5_5
L3_3 = L3_3 + L4_4
if L3_3 < 4 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = string
L5_5 = L5_5.lower
L6_6 = L2_2
L5_5 = L5_5(L6_6)
L6_6 = string
L6_6 = L6_6.find
L6_6 = L6_6(L5_5, "jndi:", 1, true)
if not L6_6 then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = {}
L6_6["[" .. L0_0 .. "]"] = "[" .. L1_1 .. "]"
L6_6.decoded_header = "[" .. L2_2 .. "]"
nri.AddTelemetry(mp.bitor(mp.bitor(nri.Telemetry_HOSTNAME, nri.Telemetry_PATH), nri.Telemetry_QUERY), L6_6)
return mp.INFECTED
