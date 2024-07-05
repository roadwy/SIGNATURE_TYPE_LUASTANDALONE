local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(MpCommon.PathToWin32Path(bm.get_imagepath()))
bm.add_threat_file(L0_0)
return mp.INFECTED
