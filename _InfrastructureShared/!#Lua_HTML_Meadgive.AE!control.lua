local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "SCRIPT:HTML/Meadgive.AE!obj"
L0_0 = L0_0(L1_1)
if L0_0 then
  L0_0 = string
  L0_0 = L0_0.lower
  L1_1 = tostring
  L2_2 = headerpage
  L3_3 = L1_1(L2_2)
  L0_0 = L0_0(L1_1, L2_2, L3_3, L1_1(L2_2))
  L1_1 = string
  L1_1 = L1_1.match
  L2_2 = L0_0
  L3_3 = "value=\"http://%w+%.%a+%.(%a+)/%w+\""
  L1_1 = L1_1(L2_2, L3_3)
  if L1_1 == nil then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = {
    L3_3,
    "download",
    "online",
    "party",
    "pw",
    "racing",
    "review",
    "site",
    "space",
    "stream",
    "trade",
    "webcam",
    "website"
  }
  L3_3 = "date"
  L3_3 = #L2_2
  for _FORV_7_ = 1, L3_3 do
    if L2_2[_FORV_7_] == L1_1 then
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
