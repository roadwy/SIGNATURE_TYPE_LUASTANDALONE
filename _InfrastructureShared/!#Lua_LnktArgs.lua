if not mp.get_mpattribute("PACKED_WITH:[CMDEmbedded]") then
  return mp.CLEAN
end
if mp.getfilesize() > 1024 then
  mp.set_mpattribute("LnkArggt400b")
elseif mp.getfilesize() > 512 then
  mp.set_mpattribute("LnkArggt200b")
elseif mp.getfilesize() > 256 then
  mp.set_mpattribute("LnkArggt100b")
elseif mp.getfilesize() > 128 then
  mp.set_mpattribute("LnkArggt80b")
elseif mp.getfilesize() > 80 then
  mp.set_mpattribute("LnkArggt50b")
end
return mp.CLEAN
