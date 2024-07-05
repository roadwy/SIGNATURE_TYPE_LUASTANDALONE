local L0_0, L1_1, L2_2
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L0_0 = "webservice_childproc"
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.matched
  if L1_1 then
    L0_0 = "webserver_childproc"
  else
    L1_1 = this_sigattrlog
    L1_1 = L1_1[3]
    L1_1 = L1_1.matched
    if L1_1 then
      L0_0 = "dbservice_childproc"
    end
  end
end
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = bm
L1_1 = L1_1.get_process_relationships
L2_2 = L1_1()
for _FORV_6_, _FORV_7_ in ipairs(L2_2) do
  if mp.bitand(_FORV_7_.reason_ex, 1) == 1 then
    TrackPidAndTechniqueBM(_FORV_7_.ppid, "T1190", L0_0, 7200)
  end
end
return mp.CLEAN
