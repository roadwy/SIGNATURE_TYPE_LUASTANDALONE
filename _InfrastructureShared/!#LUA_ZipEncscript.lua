if not mp.get_mpattribute("PACKED_WITH:(EncScript)") then
  return mp.CLEAN
end
if mp.getfilename():match(".[zr][ia][pr].*.[jv][sb][es]?.*(EncScript)") then
  return mp.INFECTED
end
return mp.CLEAN
