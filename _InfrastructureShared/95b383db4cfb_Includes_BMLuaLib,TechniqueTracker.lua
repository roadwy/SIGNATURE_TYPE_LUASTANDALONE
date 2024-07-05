local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.wp1
  if L1_1 ~= nil then
    L1_1 = string
    L1_1 = L1_1.lower
    L1_1 = L1_1(this_sigattrlog[1].utf8p1)
    L0_0 = L1_1
  end
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L1_1 = L1_1.wp1
    if L1_1 ~= nil then
      L1_1 = string
      L1_1 = L1_1.lower
      L1_1 = L1_1(this_sigattrlog[2].utf8p1)
      L0_0 = L1_1
    end
  end
end
if L0_0 ~= nil then
  L1_1 = L0_0.match
  L1_1 = L1_1(L0_0, "^/.+/(.+)$")
  if L1_1 ~= nil and string.sub(L1_1, 1, 1) == "!" and string.sub(L1_1, -5) == "!.txt" and L1_1:len() > 10 and L1_1:len() < 25 and reportGenericRansomwareRQ("genf_linux_ransom_meta") == mp.INFECTED then
    TrackPidAndTechniqueBM("BM", "T1486", "Impact_FileEncryption")
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
