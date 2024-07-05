if mp.get_mpattribute("//AGGREGATOR:GIOAVTopLevelZIP") and not mp.get_mpattribute("//GIOAVZIPinTopLevelZIP") and mp.HEADERPAGE_SZ > 8 and mp.readu_u32(headerpage, 1) == 67324752 then
  mp.set_mpattribute("//GIOAVZIPinTopLevelZIP")
end
if mp.get_mpattribute("//AGGREGATOR:GIOAVTopLevelUncompressedZip") and not mp.get_mpattribute("//GIOAVZIPinTopLevelUncompressedZip") and mp.HEADERPAGE_SZ > 8 and mp.readu_u32(headerpage, 1) == 67324752 then
  mp.set_mpattribute("//GIOAVZIPinTopLevelUncompressedZip")
end
return mp.CLEAN
