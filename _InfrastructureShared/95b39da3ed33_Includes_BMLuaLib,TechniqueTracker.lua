local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].wp2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[1].utf8p2)
elseif this_sigattrlog[2].matched and this_sigattrlog[2].wp2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[2].utf8p2)
elseif this_sigattrlog[3].matched and this_sigattrlog[3].wp2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[3].utf8p2)
elseif this_sigattrlog[4].matched and this_sigattrlog[4].wp2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[4].utf8p2)
elseif this_sigattrlog[5].matched and this_sigattrlog[5].wp2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[5].utf8p2)
elseif this_sigattrlog[6].matched and this_sigattrlog[6].wp2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[6].utf8p2)
end
if L0_0 then
  if this_sigattrlog[2].matched and string.find(L0_0, "copy-as-is", 1, true) and string.find(L0_0, "/usr/share/rear", 1, true) then
    return mp.CLEAN
  end
  if string.find(L0_0, "/etc/sudoers", 1, true) or string.find(L0_0, "/.ssh/id_rsa", 1, true) or string.find(L0_0, "/.ssh/id_rsa.pub", 1, true) or string.find(L0_0, "/.ssh/id_dsa", 1, true) or string.find(L0_0, "/.ssh/id_dsa.pub", 1, true) or string.find(L0_0, "/.ssh/identity", 1, true) or string.find(L0_0, "/.ssh/identity.pub", 1, true) or string.find(L0_0, "/.ssh/ssh_host_dsa_key", 1, true) or string.find(L0_0, "/.ssh/ssh_host_dsa_key.pub", 1, true) or string.find(L0_0, "/.ssh/ssh_host_rsa_key", 1, true) or string.find(L0_0, "/.ssh/ssh_host_rsa_key.pub", 1, true) or string.find(L0_0, "/.ssh/ssh_host_key", 1, true) or string.find(L0_0, "/.ssh/ssh_host_key.pub", 1, true) or string.find(L0_0, "/.ssh/authorized_keys", 1, true) or string.find(L0_0, "/.ssh/known_hosts", 1, true) or string.find(L0_0, "/.bash_history", 1, true) or string.find(L0_0, "/etc/hosts", 1, true) or string.find(L0_0, "/etc/group", 1, true) or string.find(L0_0, "/etc/passwd", 1, true) or string.find(L0_0, "/etc/gshadow", 1, true) or string.find(L0_0, "/etc/shadow", 1, true) or string.find(L0_0, "/.aws/credentials", 1, true) or string.find(L0_0, "/.aws/config", 1, true) or string.find(L0_0, "/.docker/config.json", 1, true) or string.find(L0_0, ".pfx", 1, true) or string.find(L0_0, ".key", 1, true) or string.find(L0_0, ".ppk", 1, true) or string.find(L0_0, ".keytab", 1, true) or string.find(L0_0, ".htpasswd", 1, true) or string.find(L0_0, "private-keys-v1.d", 1, true) or string.find(L0_0, "/secring.gpg", 1, true) then
    reportRelatedBmHits()
    addRelatedProcess()
    TrackPidAndTechniqueBM("BM", "T1552", "CredentialAccess_ArchiveData")
    TrackPidAndTechniqueBM("BM", "T1560", "Collection_ArchiveData")
    RemediateProcessTreeForLinux()
    return mp.INFECTED
  end
end
return mp.CLEAN
