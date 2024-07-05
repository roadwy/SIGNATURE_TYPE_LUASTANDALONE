local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
elseif L0_0 == L1_1 then
  L1_1 = {
    L2_2,
    L3_3,
    L4_4,
    L5_5,
    L6_6,
    L7_7,
    L8_8,
    "/etc/rc.local",
    "/etc/systemd/system",
    "/lib/systemd/system",
    "/tmp",
    "/usr/lib/systemd/system",
    "/var/lock",
    "/var/mail",
    "/var/spool/cron",
    "/var/spool/cron/crontabs",
    "/var/spool/mail",
    "/var/tmp"
  }
  L2_2 = "/.config/systemd/user"
  L6_6 = "/etc/init.d"
  L7_7 = "/etc/rc.d/init.d"
  L8_8 = "/etc/rc.d/rc"
  L2_2 = mp
  L2_2 = L2_2.getfilename
  L8_8 = L3_3(L4_4, L5_5)
  L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L3_3(L4_4, L5_5))
  for L6_6 = 1, #L1_1 do
    L7_7 = L1_1[L6_6]
    L8_8 = L7_7.len
    L8_8 = L8_8(L7_7)
    if L2_2:sub(0, L8_8) == L7_7 then
      return mp.LOWFI
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
