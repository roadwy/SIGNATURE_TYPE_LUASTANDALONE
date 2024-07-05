local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.utf8p1
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L0_0 = L1_1.utf8p1
  end
end
if L0_0 then
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(L2_2)
  L0_0 = L1_1
  L1_1 = L0_0.gsub
  L1_1 = L1_1(L2_2, L3_3, L4_4)
  L0_0 = L1_1
  L1_1 = sysio
  L1_1 = L1_1.RegExpandUserKey
  L1_1 = L1_1(L2_2)
  for L5_5, L6_6 in L2_2(L3_3) do
    AppendToRollingQueue("PoshevinRelatedRegistries", L6_6, nil, 5000)
  end
end
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L2_2())
if L1_1 then
  L2_2(L3_3, L4_4, L5_5, L6_6)
end
if L3_3 ~= nil then
  for _FORV_7_, _FORV_8_ in L4_4(L5_5) do
    if _FORV_8_.image_path ~= nil and _FORV_8_.ppid ~= nil then
      TrackPidAndTechniqueBM(_FORV_8_.ppid, "T1037", "possible_poshevin_child_d")
      return mp.INFECTED
    end
  end
end
return L4_4
