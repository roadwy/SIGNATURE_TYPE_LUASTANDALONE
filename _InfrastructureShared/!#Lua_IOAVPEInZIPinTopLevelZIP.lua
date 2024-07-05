if mp.get_mpattribute("//GIOAVZIPinTopLevelZIP") and not mp.get_mpattribute("//GIOAVPEInZIPinTopLevelZIP") then
  mp.set_mpattribute("Lua:IOAVPEInZIPinTopLevelZIP")
  mp.set_mpattribute("//GIOAVPEInZIPinTopLevelZIP")
  mp.set_mpattribute("MpNonCachedLowfi")
end
if mp.get_mpattribute("//GIOAVZIPinTopLevelUncompressedZip") and not mp.get_mpattribute("//GIOAVPEInZIPinTopLevelUncompressedZip") then
  mp.set_mpattribute("Lua:IOAVPEInZIPinTopLevelUncompressedZip")
  mp.set_mpattribute("//GIOAVPEInZIPinTopLevelUncompressedZip")
  mp.set_mpattribute("MpNonCachedLowfi")
end
return mp.CLEAN
