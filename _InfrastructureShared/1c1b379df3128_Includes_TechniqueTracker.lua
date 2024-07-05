local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = bm
L0_0 = L0_0.GetSignatureMatchDuration
L0_0 = L0_0()
if L0_0 > 6000000000 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0, L1_1, L2_2 = nil, nil, nil
L3_3 = this_sigattrlog
L3_3 = L3_3[2]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[2]
  L3_3 = L3_3.timestamp
  if L3_3 ~= nil then
    L3_3 = this_sigattrlog
    L3_3 = L3_3[2]
    L3_3 = L3_3.utf8p1
    if L3_3 ~= nil then
      L3_3 = this_sigattrlog
      L3_3 = L3_3[2]
      L0_0 = L3_3.timestamp
      L3_3 = string
      L3_3 = L3_3.lower
      L4_4 = this_sigattrlog
      L4_4 = L4_4[2]
      L4_4 = L4_4.utf8p1
      L3_3 = L3_3(L4_4)
      L1_1 = L3_3
      L3_3 = this_sigattrlog
      L3_3 = L3_3[2]
      L2_2 = L3_3.ppid
    end
  end
end
L3_3, L4_4 = nil, nil
if this_sigattrlog[4].matched and this_sigattrlog[4].timestamp ~= nil and this_sigattrlog[4].utf8p1 ~= nil then
  L3_3 = this_sigattrlog[4].timestamp
  L4_4 = string.lower(this_sigattrlog[4].utf8p1)
end
if L1_1 == L4_4 and L0_0 < L3_3 then
  TrackPidAndTechniqueBM(L2_2, "susp_spoolhack", "priteshel_a")
  return mp.INFECTED
end
return mp.CLEAN
