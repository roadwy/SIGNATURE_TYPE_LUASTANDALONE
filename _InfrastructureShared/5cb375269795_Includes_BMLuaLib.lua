local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = L0_0.command_line
if L1_1 ~= nil then
  L2_2 = string
  L2_2 = L2_2.match
  L3_3 = L1_1
  L2_2 = L2_2(L3_3, L4_4)
  if L2_2 then
    L3_3 = {
      L4_4,
      L5_5,
      L6_6,
      L7_7,
      L8_8,
      "http-post-form",
      "https-get-form",
      "https-post-form",
      "https-get",
      "https-head",
      "imap",
      "ldap2",
      "ldap3",
      "mssql",
      "mysql",
      "postgres",
      "pcanywhere",
      "pop3",
      "redis",
      "rexec",
      "rlogin",
      "rsh",
      "smb",
      "smb2",
      "socks5",
      "ssh",
      "sshkey",
      "telnet",
      "vnc",
      "snmp",
      "smtp",
      "smtp-enum",
      "irc",
      "rdp",
      "radmin"
    }
    L7_7 = "http-post"
    L8_8 = "http-get-form"
    for L7_7, L8_8 in L4_4(L5_5) do
      if string.find(L2_2, L8_8, 1, true) then
        return mp.INFECTED
      end
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
