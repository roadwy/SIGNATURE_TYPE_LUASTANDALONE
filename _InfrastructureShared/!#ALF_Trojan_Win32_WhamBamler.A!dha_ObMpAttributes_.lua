local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 100000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = pe
L1_1 = L1_1.get_versioninfo
L1_1 = L1_1()
if L1_1 ~= nil then
  L2_2 = L1_1.FileVersion
  if L2_2 == "2001.12.8530.16385" then
    L2_2 = L1_1.ProductName
    if L2_2 == "Microsoft\194\174 Windows\194\174 Operating System" then
      L2_2 = L1_1.CompanyName
      if L2_2 == "Microsoft Corporation" then
        L2_2 = L1_1.OriginalFilename
        L3_3 = L2_2
        L2_2 = L2_2.find
        L2_2 = L2_2(L3_3, ".dll", 1, true)
        if L2_2 then
          L2_2 = L1_1.OriginalFilename
          if L2_2 ~= "msdtcVSp1res.dll" then
            L2_2 = L1_1.OriginalFilename
            if L2_2 ~= "TxfLog.dll" then
              L2_2 = sysio
              L2_2 = L2_2.RegOpenKey
              L3_3 = "HKLM\\SOFTWARE\\Microsoft\\Cryptography"
              L2_2 = L2_2(L3_3)
              if L2_2 ~= nil then
                L3_3 = sysio
                L3_3 = L3_3.GetRegValueAsString
                L3_3 = L3_3(L2_2, "MachineGuid")
                if L3_3 ~= nil then
                  mp.set_mpattribute(string.format("MpInternal_researchdata=CryptoMachineGuid=%s", L3_3))
                end
              end
              L3_3 = mp
              L3_3 = L3_3.INFECTED
              return L3_3
            end
          end
        end
      end
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
