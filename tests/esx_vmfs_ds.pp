# Copyright (C) 2013 VMware, Inc.
import 'data.pp'

transport { 'vcenter':
  username => $vcenter['username'],
  password => $vcenter['password'],
  server   => $vcenter['server'],
  options  => $vcenter['options'],
}

esx_datastore { "${esx2['hostname']}:test-vmfs-ds01":
  ensure      => present,
  type        => 'vmfs',
  lun         => 4,
  transport   => Transport['vcenter'],
}
