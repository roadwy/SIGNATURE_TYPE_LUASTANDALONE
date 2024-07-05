local L0_0
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
TrackPidAndTechniqueBM("BM", "T1571", "CommandAndControl")
TrackPidAndTechniqueBM("BM", "T1021.004", "LateralMovement")
if mp.GetParentProcInfo() ~= nil and (not string.find(L0_0, "/usr/sbin/sshd", -14, true) or not string.find(mp.GetParentProcInfo().image_path, "/usr/sbin/sshd", -14, true)) then
  TrackPidAndTechniqueBM(mp.GetParentProcInfo().ppid, "T1571", "CommandAndControl")
  TrackPidAndTechniqueBM(mp.GetParentProcInfo().ppid, "T1021.004", "LateralMovement")
end
return mp.INFECTED
