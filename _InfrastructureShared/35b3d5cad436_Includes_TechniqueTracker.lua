local L0_0
if this_sigattrlog[1].matched then
  L0_0 = this_sigattrlog[1].utf8p1
end
if string.sub(L0_0, -4) == ".php" and string.sub(L0_0, 0, 9) == "/var/www/" then
  if sysio.IsFileExists(L0_0) then
    bm.add_related_file(L0_0)
  end
  TrackPidAndTechniqueBM("BM", "T1505.003", "Persistence_Webshell")
  return mp.INFECTED
end
return mp.CLEAN
