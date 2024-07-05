local L0_0, L1_1, L2_2, L3_3
L0_0 = peattributes
L0_0 = L0_0.isdriver
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.no_security
if L0_0 == true then
  L0_0 = mp
  L0_0 = L0_0.set_mpattribute
  L1_1 = "BM_ESRP:Lua:UnsignedDriver"
  L0_0(L1_1)
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pe
L0_0 = L0_0.get_versioninfo
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.set_mpattribute
  L2_2 = "BM_ESRP:Lua:UnversionedSignedDriver"
  L1_1(L2_2)
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.OriginalFilename
if L1_1 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.OriginalFilename
L2_2 = L1_1
L1_1 = L1_1.lower
L1_1 = L1_1(L2_2)
L2_2 = L1_1
L1_1 = L1_1.match
L3_3 = "(.+)%."
L1_1 = L1_1(L2_2, L3_3)
if L1_1 == nil then
  L2_2 = L0_0.OriginalFilename
  L3_3 = L2_2
  L2_2 = L2_2.lower
  L2_2 = L2_2(L3_3)
  L1_1 = L2_2
end
L2_2 = false
L3_3 = mp
L3_3 = L3_3.getfilename
L3_3 = L3_3(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if L3_3 ~= nil then
  L3_3 = string.sub(L3_3, 0, -5)
  if L3_3 ~= nil and string.find(L3_3, L1_1, 1, true) == nil then
    mp.set_mpattribute("BM_ESRP:Lua:RenamedSignedDriver")
    L2_2 = true
  end
end
if L2_2 == false then
  mp.set_mpattribute("BM_ESRP:Lua:VersionedSignedDriver")
end
if ({
  aiwsys = "Aiwsys",
  bandai = "Bandai",
  capcom = "Capcom",
  cpuz = "Cpuz",
  elbycdio = "Elbycdio",
  goad = "Goad",
  initdrv = "Initdrv",
  jtaxdfgznc = "Jtaxdfgznc",
  kmclass_x64 = "Kmclass_x64",
  libnicm = "Libnicm",
  nicm = "Nicm",
  nscm = "Nscm",
  rwdrv = "Rwdrv",
  termdd = "Termdd",
  tlsdrivegtw = "Tlsdrivegtw",
  vboxdrv = "Vboxdrv",
  xueman3 = "Xueman3",
  HwOs2Ec = "HwOs2Ec",
  phymem = "Phymem",
  asrdrv = "AsrDrv",
  atillk64 = "AtiLlk",
  bs_hwmio64_w10 = "BS_HWMIO64_W10",
  bs_i2cio = "BS_I2c64",
  bsmi = "BSMIx64",
  ucorew64 = "Ucorew64",
  ucoresys = "Ucoresys",
  amifldrv64 = "amifldrv64",
  glckio2 = "GLCKIO2",
  gvcidrv = "GVCIDrv",
  gdrv = "GDrv",
  gvcidrv64 = "GVCIDrv64",
  segwindrv = "segwindrv",
  segwindrvx64 = "segwindrvx64",
  msio64 = "MSIO64",
  ntiolib_x64 = "NTIOLib_X64",
  ntiolib = "NTIOLib",
  nbiolib_x64 = "NBIOLib_X64",
  nbiolib = "NBIOLib",
  winring0x64 = "WinRing0x64",
  winring0 = "WinRing0",
  modapi = "MODAPI",
  nvflash = "NvFlash",
  rtkio64 = "rtkio64",
  rtkio86 = "rtkio86",
  rtkiow8x86 = "rtkiow8x86",
  rtkiow8x64 = "rtkiow8x64",
  rtkiow10x86 = "rtkiow10x86",
  rtkiow10x64 = "rtkiow10x64",
  speedfan = "speedfan",
  sfdrvx32 = "speedfan",
  sfdrvx64 = "speedfan",
  kevp64 = "powertool",
  amdryzenmasterdriver = "amdryzenmaster"
})[L1_1] ~= nil then
  mp.set_mpattribute("BM_ESRP:Lua:" .. ({
    aiwsys = "Aiwsys",
    bandai = "Bandai",
    capcom = "Capcom",
    cpuz = "Cpuz",
    elbycdio = "Elbycdio",
    goad = "Goad",
    initdrv = "Initdrv",
    jtaxdfgznc = "Jtaxdfgznc",
    kmclass_x64 = "Kmclass_x64",
    libnicm = "Libnicm",
    nicm = "Nicm",
    nscm = "Nscm",
    rwdrv = "Rwdrv",
    termdd = "Termdd",
    tlsdrivegtw = "Tlsdrivegtw",
    vboxdrv = "Vboxdrv",
    xueman3 = "Xueman3",
    HwOs2Ec = "HwOs2Ec",
    phymem = "Phymem",
    asrdrv = "AsrDrv",
    atillk64 = "AtiLlk",
    bs_hwmio64_w10 = "BS_HWMIO64_W10",
    bs_i2cio = "BS_I2c64",
    bsmi = "BSMIx64",
    ucorew64 = "Ucorew64",
    ucoresys = "Ucoresys",
    amifldrv64 = "amifldrv64",
    glckio2 = "GLCKIO2",
    gvcidrv = "GVCIDrv",
    gdrv = "GDrv",
    gvcidrv64 = "GVCIDrv64",
    segwindrv = "segwindrv",
    segwindrvx64 = "segwindrvx64",
    msio64 = "MSIO64",
    ntiolib_x64 = "NTIOLib_X64",
    ntiolib = "NTIOLib",
    nbiolib_x64 = "NBIOLib_X64",
    nbiolib = "NBIOLib",
    winring0x64 = "WinRing0x64",
    winring0 = "WinRing0",
    modapi = "MODAPI",
    nvflash = "NvFlash",
    rtkio64 = "rtkio64",
    rtkio86 = "rtkio86",
    rtkiow8x86 = "rtkiow8x86",
    rtkiow8x64 = "rtkiow8x64",
    rtkiow10x86 = "rtkiow10x86",
    rtkiow10x64 = "rtkiow10x64",
    speedfan = "speedfan",
    sfdrvx32 = "speedfan",
    sfdrvx64 = "speedfan",
    kevp64 = "powertool",
    amdryzenmasterdriver = "amdryzenmaster"
  })[L1_1])
end
if pe.get_fixedversioninfo().FileVersion ~= nil then
  ({}).cpuz = {
    "cpuz_asr_driver",
    0,
    281474976972803
  }
  ;({}).elbycdio = {
    "elby_asr_driver",
    0,
    1688849860460546
  }
  ;({}).libnicm = {
    "libnicm_asr_driver",
    0,
    844429225820160
  }
  ;({}).mtcbsv64 = {
    "mtcbsv64_asr_driver",
    0,
    5910983100858368
  }
  ;({}).nicm = {
    "nicm_asr_driver",
    0,
    844429225820160
  }
  ;({}).nscm = {
    "nscm_asr_driver",
    0,
    844429225820160
  }
  ;({}).sandra = {
    "sandra_asr_driver",
    0,
    2814801306714112
  }
  ;({}).rtkio64 = {
    "rtkio64_asr_driver",
    0,
    0
  }
  ;({}).rtkiow10x64 = {
    "rtkiow10x64_asr_driver",
    0,
    0
  }
  ;({}).rtkiow8x64 = {
    "rtkiow8x64_asr_driver",
    0,
    0
  }
  ;({}).bsmi = {
    "bsmi_asr_driver",
    0,
    281474976710659
  }
  ;({}).bs_hwmio64_w10 = {
    "bs_hwmio64_asr_driver",
    0,
    2814749885515776
  }
  ;({}).bs_i2cio = {
    "biostar_io_asr_driver",
    0,
    281479271677952
  }
  ;({}).ntiolib = {
    "ntiolib_asr_driver",
    0,
    281474976710656
  }
  ;({}).nchgbios2x64 = {
    "nchgbios2x64_asr_driver",
    0,
    1125908497039360
  }
  ;({}).segwindrvx64 = {
    "segwindrvx64_asr_driver",
    0,
    28147497671524352
  }
  ;({}).gdrv = {
    "gdrv_asr_driver",
    0,
    0
  }
  ;({})["kernel-bridge"] = {
    "kernelbridge_asr_driver",
    0,
    0
  }
  ;({}).rwdrv = {
    "rwdrv_asr_driver",
    0,
    0
  }
  ;({}).speedfan = {
    "speedfan_asr_driver",
    0,
    0
  }
  ;({}).sfdrvx32 = {
    "speedfan_asr_driver",
    0,
    0
  }
  ;({}).sfdrvx64 = {
    "speedfan_asr_driver",
    0,
    0
  }
  ;({}).kevp64 = {
    "powertoolx64_asr_driver",
    0,
    0
  }
  ;({}).amdryzenmasterdriver = {
    "amdryzenmaster_asr_driver",
    0,
    281496451547136
  }
  ;({}).viragt = {
    "viragt_asr_driver",
    0,
    281818574094336
  }
  ;({}).viragt64 = {
    "viragt64_asr_driver",
    0,
    281474976710679
  }
  ;({}).kprocesshacker = {
    "processhacker_asr_driver",
    0,
    0
  }
  ;({}).physmem = {
    "physicalmem_asr_driver",
    0,
    0
  }
  ;({}).phymem = {
    "phymem_asr_driver",
    0,
    0
  }
  ;({}).amp = {
    "sm_amp_asr_driver",
    0,
    0
  }
  ;({}).iqvw64 = {
    "iqvw64_asr_driver",
    0,
    281492156579861
  }
  ;({}).winring0 = {
    "winring0_asr_driver",
    0,
    0
  }
  ;({}).hpportiox64 = {
    "hpportiox64_asr_driver",
    0,
    0
  }
  ;({}).lha = {
    "lha_asr_driver",
    0,
    0
  }
  ;({}).gmer64 = {
    "gmer_asr_driver",
    0,
    0
  }
  ;({}).pchunter = {
    "pchunter_asr_driver",
    0,
    0
  }
  ;({}).tvichw64 = {
    "tvicp_asr_driver",
    0,
    0
  }
  ;({}).tvicport = {
    "tvicf_asr_driver",
    0,
    0
  }
  ;({}).ssport = {
    "ssport_asr_driver",
    281474976710656,
    281474976710656
  }
  ;({}).vmdrv = {
    "vmdrv_asr_driver",
    0,
    0
  }
  ;({}).aswarpot = {
    "aswarpot_asr_driver",
    0,
    5910995985760255
  }
  ;({}).bs_rcio64 = {
    "bs_rcio64_asr_driver",
    0,
    0
  }
  ;({}).atszio = {
    "atszio_asr_driver",
    0,
    8590000135
  }
  ;({}).lgcoretemp = {
    "lgcoretemp_asr_driver",
    0,
    281474976710657
  }
  ;({}).sandbox = {
    "agsandbox_asr_driver",
    0,
    0
  }
  ;({}).amdpowerprofiler = {
    "amdpowerprofiler_asr_driver",
    1688849860263936,
    1688854155231232
  }
  ;({}).aswsnx = {
    "aswsnx_asr_driver",
    0,
    4785083194015744
  }
  ;({}).asrdrv = {
    "asrdrv_asr_driver",
    0,
    0
  }
  ;({}).hwos2ec = {
    "hwos2ec_asr_driver",
    0,
    281474976710657
  }
  ;({}).bs_def64 = {
    "bsdef64_asr_driver",
    0,
    0
  }
  ;({}).lenovodiagnosticsdriver = {
    "lenovodiag_asr_driver",
    0,
    562949953421311
  }
  ;({}).superbmc = {
    "superbmc_asr_driver",
    0,
    562949953421312
  }
  ;({}).procexp = {
    "procexp_asr_driver",
    0,
    4785074604081151
  }
  ;({}).iobitunlocker = {
    "iobitunlocker_asr_driver",
    0,
    0
  }
  ;({}).agent64 = {
    "agent64_asr_driver",
    0,
    0
  }
  ;({}).nvflash = {
    "nvflash_asr_driver",
    0,
    281513631416320
  }
  ;({}).inpoutx64 = {
    "inpoutx64_asr_driver",
    0,
    0
  }
  ;({}).alsysio = {
    "alsysio_asr_driver",
    0,
    562949954011136
  }
  ;({}).atillk64 = {
    "atillk64_asr_driver",
    0,
    0
  }
  ;({}).hw = {
    "hw_asr_driver",
    0,
    0
  }
  ;({}).wiseunlo = {
    "wiseunlo_asr_driver",
    0,
    0
  }
  ;({}).klmd = {
    "klmd_asr_driver",
    0,
    563005787996170
  }
  ;({}).tmel = {
    "tmel_asr_driver",
    0,
    0
  }
  ;({}).lv561v64 = {
    "lv561v64_asr_driver",
    0,
    0
  }
  ;({}).symelam = {
    "symelam_asr_driver",
    0,
    562967133290579
  }
  ;({}).hwrwdrv = {
    "hwrwdrv_asr_driver",
    0,
    0
  }
  ;({}).monitor = {
    "monitor_asr_driver",
    0,
    281483566645259
  }
  ;({}).otipcibus64 = {
    "otipcibus64_asr_driver",
    0,
    0
  }
  ;({}).asrsetupdrv103 = {
    "asrsetupdrv_asr_driver",
    0,
    0
  }
  ;({}).hardwarering0 = {
    "hwring0_asr_driver",
    0,
    0
  }
  ;({}).mydrivers = {
    "dghwmonitor_asr_driver",
    0,
    0
  }
  ;({}).driver7 = {
    "ectool_asr_driver",
    0,
    0
  }
  ;({}).iuforcedelete = {
    "iuforcedelete_asr_driver",
    0,
    0
  }
  ;({}).aswelam = {
    "avgelam_asr_driver",
    0,
    6192475283718143
  }
  ;({}).avgelam = {
    "avgelam_asr_driver",
    0,
    6192475283718143
  }
  ;({}).eelam = {
    "eelam_asr_driver",
    0,
    2814749768155136
  }
  ;({}).rzpnk = {
    "rzpnk_asr_driver",
    0,
    0
  }
  ;({}).hwinfo64a = {
    "hwinfo_asr_driver",
    0,
    2253251512631296
  }
  ;({}).hwinfo64i = {
    "hwinfo_asr_driver",
    0,
    2253251512631296
  }
  ;({}).eio = {
    "eio_asr_driver",
    0,
    0
  }
  ;({}).bsmem64_w10 = {
    "bsmiw10_asr_driver",
    0,
    0
  }
  ;({}).aswsp = {
    "aswsp_asr_driver",
    0,
    5629533893951488
  }
  ;({}).ctiio64 = {
    "ctiio64_asr_driver",
    0,
    281479273185685
  }
  ;({}).msio64 = {
    "msio64_asr_driver",
    0,
    281487863120277
  }
  ;({}).msio32 = {
    "msio32_asr_driver",
    0,
    281487863120277
  }
  ;({}).pcdsrvc = {
    "pcdsrvc_asr_driver",
    0,
    1688862745165823
  }
  ;({})["corsair ll access"] = {
    "corsairllaccess_asr_driver",
    0,
    281474978283519
  }
  ;({}).openlibsys = {
    "openlibsys_asr_driver",
    0,
    0
  }
  ;({}).sysdrv3s = {
    "sysdrv3s_asr_driver",
    0,
    844450699935744
  }
  ;({}).iomem = {
    "iomem_asr_driver",
    562958543355904,
    562962838323200
  }
  ;({}).etdsupp = {
    "etdsupport_asr_driver",
    0,
    0
  }
  ;({}).athr = {
    "qcamain10x64_asr_driver",
    3377699720527872,
    3377699720528698
  }
  ;({}).truesight = {
    "truesight_asr_driver",
    0,
    844429225099264
  }
  ;({}).nvoclock = {
    "nvoclock_asr_driver",
    0,
    0
  }
  ;({}).ashitio_drv = {
    "ashitio_asr_driver",
    0,
    7599824371187714
  }
  ;({}).iomap = {
    "iomap_asr_driver",
    0,
    0
  }
  ;({}).atlaccess = {
    "atlaccess_asr_driver",
    0,
    0
  }
  ;({}).computerz = {
    "computerz_asr_driver",
    0,
    0
  }
  ;({}).vdbsv64 = {
    "vdbsv64_asr_driver",
    0,
    0
  }
  ;({}).cp2x72c = {
    "cp2x72c_asr_driver",
    0,
    0
  }
  ;({}).wirwadrv = {
    "wirwadrv_asr_driver",
    0,
    0
  }
  ;({}).cg6kwin2k = {
    "cg6kwin2k_asr_driver",
    0,
    0
  }
  ;({}).gdrv3 = {
    "gdrv3_asr_driver",
    0,
    281479271677959
  }
  ;({}).sbiosio64 = {
    "sbiosio64_asr_driver",
    0,
    0
  }
  ;({}).ngiodriver = {
    "ngiodriver_asr_driver",
    0,
    0
  }
  ;({}).stdcdrv64 = {
    "stdcdrv64_asr_driver",
    0,
    0
  }
  ;({}).stdcdrvws64 = {
    "stdcdrvws64_asr_driver",
    0,
    0
  }
  ;({}).rtif = {
    "rtif_asr_driver",
    0,
    0
  }
  ;({}).fpcie2com = {
    "fpcie2com_asr_driver",
    0,
    0
  }
  ;({}).rtport = {
    "rtport_asr_driver",
    0,
    0
  }
  ;({}).pdfwkrnl = {
    "pdfwkrnl_asr_driver",
    0,
    0
  }
  ;({}).avalueio = {
    "avalueio_asr_driver",
    0,
    0
  }
  ;({}).hwdetectng = {
    "hwdetectng_asr_driver",
    0,
    0
  }
  ;({}).appid = {
    "appid_asr_driver",
    0,
    0
  }
  ;({}).windbg = {
    "windbg_asr_driver",
    0,
    0
  }
  if ({})[L1_1] ~= nil and (pe.get_fixedversioninfo().FileVersion >= ({})[L1_1][2] and pe.get_fixedversioninfo().FileVersion <= ({})[L1_1][3] or ({})[L1_1][2] == 0 and ({})[L1_1][3] == 0) then
    if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
      mp.set_mpattribute("BM_ESRP:Lua:" .. ({})[L1_1][1])
      mp.set_mpattribute("BM_ESRP:Lua:VulnerableAsrDriverMatched")
    else
      mp.set_mpattribute("BM_ESRP:Lua:VulnerableAsrNotOnClose")
      mp.set_mpattribute("VulnDrv:Lua:" .. ({})[L1_1][1])
    end
  end
end
return mp.CLEAN
