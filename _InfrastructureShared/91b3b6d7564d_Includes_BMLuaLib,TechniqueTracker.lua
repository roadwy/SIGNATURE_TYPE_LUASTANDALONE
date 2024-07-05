local L0_0, L1_1, L2_2
L0_0 = 100000000
L1_1 = bm
L1_1 = L1_1.GetSignatureMatchDuration
L1_1 = L1_1()
if L0_0 < L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = nil
if this_sigattrlog[1].matched and this_sigattrlog[1].wp2 ~= nil then
  L2_2 = string.lower(this_sigattrlog[1].utf8p2)
elseif this_sigattrlog[2].matched and this_sigattrlog[2].wp2 ~= nil then
  L2_2 = string.lower(this_sigattrlog[2].utf8p2)
elseif this_sigattrlog[3].matched and this_sigattrlog[3].wp2 ~= nil then
  L2_2 = string.lower(this_sigattrlog[3].utf8p2)
elseif this_sigattrlog[4].matched and this_sigattrlog[4].wp2 ~= nil then
  L2_2 = string.lower(this_sigattrlog[4].utf8p2)
elseif this_sigattrlog[5].matched and this_sigattrlog[5].wp2 ~= nil then
  L2_2 = string.lower(this_sigattrlog[5].utf8p2)
elseif this_sigattrlog[6].matched and this_sigattrlog[6].wp2 ~= nil then
  L2_2 = string.lower(this_sigattrlog[6].utf8p2)
end
if L2_2 then
  if this_sigattrlog[2].matched and string.find(L2_2, "copy-as-is", 1, true) and string.find(L2_2, "/usr/share/rear", 1, true) then
    return mp.CLEAN
  end
  if #L2_2 >= 2000 then
    TrackPidAndTechniqueBM("BM", "T1560", "Collection_ArchiveData")
    bm.add_related_string("archive_cmd", L2_2, bm.RelatedStringBMReport)
    reportRelatedBmHits()
    return mp.INFECTED
  end
end
return mp.CLEAN
