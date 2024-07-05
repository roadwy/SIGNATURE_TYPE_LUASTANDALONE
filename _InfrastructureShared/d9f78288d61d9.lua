local L0_0, L1_1
L0_0 = peattributes
L0_0 = L0_0.no_security
if L0_0 == true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.isdriver
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.HSTR_WEIGHT
if L0_0 >= 20 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "RPF:TopLevelFile"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = {
  L1_1,
  nil,
  "AsusGio",
  nil,
  "AsUpdateIo",
  nil,
  "GLCKIo",
  nil,
  "GDrv",
  nil,
  "GVCIDrv",
  nil,
  "MsIo",
  nil,
  "NTIOLib",
  nil,
  "Semav6msr",
  nil,
  "SegwinDrv",
  nil,
  "Atikia",
  nil,
  "Atillk",
  nil,
  "BSHWMIO",
  nil,
  "BSI2cIo",
  nil,
  "BSMEM",
  nil,
  "BSMI",
  nil,
  "WNBIOs",
  nil,
  "HwOs2EcDev",
  nil,
  "MTC0303",
  nil,
  "NchgBios",
  nil,
  "GenericDrv",
  nil,
  "BSFlash",
  nil,
  "NVFLASH",
  nil,
  "WinPhlash",
  nil,
  "PhyMem",
  nil,
  L1_1,
  nil,
  "PmxDrv",
  nil,
  "UCorew",
  nil,
  "WinFlash",
  nil,
  "Rtkio",
  nil,
  "SuperBmc",
  nil,
  "WinRing0",
  nil,
  "CEDBK",
  nil,
  "TmComm",
  nil,
  "DBUtil_2_3",
  nil,
  "RTCore64",
  nil,
  "EneIo",
  nil,
  "EneTechIo",
  nil,
  "DirectIO64",
  nil,
  "windiskaccess",
  nil,
  "asio2",
  nil,
  "winiob",
  nil,
  "Unlocker",
  nil,
  "EchoDrv",
  nil
}
L1_1 = "AsrDrv"
L1_1 = "PidDrv"
L1_1 = mp
L1_1 = L1_1.hstr_full_log
L1_1 = L1_1()
for _FORV_5_, _FORV_6_ in pairs(L1_1) do
  if _FORV_6_.matched and L0_0[_FORV_5_] then
    mp.set_mpattribute("BM_ESRP:Hstr:" .. L0_0[_FORV_5_])
    return mp.INFECTED
  end
end
return mp.INFECTED
