if mp.get_mpattribute("BM_LNK_FILE") then
  return mp.INFECTED
end
mp.set_mpattribute("SCRIPT:Regsvr32")
return mp.CLEAN
