
MODULE = Sigar   PACKAGE = Sigar   PREFIX = sigar_

Sigar::Uptime
uptime(sigar)
    Sigar sigar

    PREINIT:
    int status;

    CODE:
    RETVAL = safemalloc(sizeof(*RETVAL));
    if ((status = sigar_uptime_get(sigar, RETVAL)) != SIGAR_OK) {
        SIGAR_CROAK(sigar, "uptime");
    }

    OUTPUT:
    RETVAL

MODULE = Sigar   PACKAGE = Sigar::Uptime   PREFIX = sigar_

void
DESTROY(obj)
    Sigar::Uptime obj

    CODE:
    safefree(obj);

double
uptime(uptime)
    Sigar::Uptime uptime

    CODE:
    RETVAL = uptime->uptime;

    OUTPUT:
    RETVAL


MODULE = Sigar   PACKAGE = Sigar   PREFIX = sigar_


MODULE = Sigar   PACKAGE = Sigar::NetStat   PREFIX = sigar_

void
DESTROY(obj)
    Sigar::NetStat obj

    CODE:
    safefree(obj);

IV
tcp_inbound_total(net_stat)
    Sigar::NetStat net_stat

    CODE:
    RETVAL = net_stat->tcp_inbound_total;

    OUTPUT:
    RETVAL

IV
tcp_outbound_total(net_stat)
    Sigar::NetStat net_stat

    CODE:
    RETVAL = net_stat->tcp_outbound_total;

    OUTPUT:
    RETVAL

IV
all_inbound_total(net_stat)
    Sigar::NetStat net_stat

    CODE:
    RETVAL = net_stat->all_inbound_total;

    OUTPUT:
    RETVAL

IV
all_outbound_total(net_stat)
    Sigar::NetStat net_stat

    CODE:
    RETVAL = net_stat->all_outbound_total;

    OUTPUT:
    RETVAL


MODULE = Sigar   PACKAGE = Sigar   PREFIX = sigar_

Sigar::DirStat
dir_stat(sigar, name)
    Sigar sigar
    const char * name

    PREINIT:
    int status;

    CODE:
    RETVAL = safemalloc(sizeof(*RETVAL));
    if ((status = sigar_dir_stat_get(sigar, name, RETVAL)) != SIGAR_OK) {
        SIGAR_CROAK(sigar, "dir_stat");
    }

    OUTPUT:
    RETVAL

MODULE = Sigar   PACKAGE = Sigar::DirStat   PREFIX = sigar_

void
DESTROY(obj)
    Sigar::DirStat obj

    CODE:
    safefree(obj);

sigar_uint64_t
total(dir_stat)
    Sigar::DirStat dir_stat

    CODE:
    RETVAL = dir_stat->total;

    OUTPUT:
    RETVAL

sigar_uint64_t
files(dir_stat)
    Sigar::DirStat dir_stat

    CODE:
    RETVAL = dir_stat->files;

    OUTPUT:
    RETVAL

sigar_uint64_t
subdirs(dir_stat)
    Sigar::DirStat dir_stat

    CODE:
    RETVAL = dir_stat->subdirs;

    OUTPUT:
    RETVAL

sigar_uint64_t
symlinks(dir_stat)
    Sigar::DirStat dir_stat

    CODE:
    RETVAL = dir_stat->symlinks;

    OUTPUT:
    RETVAL

sigar_uint64_t
chrdevs(dir_stat)
    Sigar::DirStat dir_stat

    CODE:
    RETVAL = dir_stat->chrdevs;

    OUTPUT:
    RETVAL

sigar_uint64_t
blkdevs(dir_stat)
    Sigar::DirStat dir_stat

    CODE:
    RETVAL = dir_stat->blkdevs;

    OUTPUT:
    RETVAL

sigar_uint64_t
sockets(dir_stat)
    Sigar::DirStat dir_stat

    CODE:
    RETVAL = dir_stat->sockets;

    OUTPUT:
    RETVAL

sigar_uint64_t
disk_usage(dir_stat)
    Sigar::DirStat dir_stat

    CODE:
    RETVAL = dir_stat->disk_usage;

    OUTPUT:
    RETVAL


MODULE = Sigar   PACKAGE = Sigar   PREFIX = sigar_


MODULE = Sigar   PACKAGE = Sigar::CpuPerc   PREFIX = sigar_

void
DESTROY(obj)
    Sigar::CpuPerc obj

    CODE:
    safefree(obj);

double
user(cpu_perc)
    Sigar::CpuPerc cpu_perc

    CODE:
    RETVAL = cpu_perc->user;

    OUTPUT:
    RETVAL

double
sys(cpu_perc)
    Sigar::CpuPerc cpu_perc

    CODE:
    RETVAL = cpu_perc->sys;

    OUTPUT:
    RETVAL

double
nice(cpu_perc)
    Sigar::CpuPerc cpu_perc

    CODE:
    RETVAL = cpu_perc->nice;

    OUTPUT:
    RETVAL

double
idle(cpu_perc)
    Sigar::CpuPerc cpu_perc

    CODE:
    RETVAL = cpu_perc->idle;

    OUTPUT:
    RETVAL

double
wait(cpu_perc)
    Sigar::CpuPerc cpu_perc

    CODE:
    RETVAL = cpu_perc->wait;

    OUTPUT:
    RETVAL

double
irq(cpu_perc)
    Sigar::CpuPerc cpu_perc

    CODE:
    RETVAL = cpu_perc->irq;

    OUTPUT:
    RETVAL

double
soft_irq(cpu_perc)
    Sigar::CpuPerc cpu_perc

    CODE:
    RETVAL = cpu_perc->soft_irq;

    OUTPUT:
    RETVAL

double
stolen(cpu_perc)
    Sigar::CpuPerc cpu_perc

    CODE:
    RETVAL = cpu_perc->stolen;

    OUTPUT:
    RETVAL

double
combined(cpu_perc)
    Sigar::CpuPerc cpu_perc

    CODE:
    RETVAL = cpu_perc->combined;

    OUTPUT:
    RETVAL


MODULE = Sigar   PACKAGE = Sigar   PREFIX = sigar_

Sigar::ResourceLimit
resource_limit(sigar)
    Sigar sigar

    PREINIT:
    int status;

    CODE:
    RETVAL = safemalloc(sizeof(*RETVAL));
    if ((status = sigar_resource_limit_get(sigar, RETVAL)) != SIGAR_OK) {
        SIGAR_CROAK(sigar, "resource_limit");
    }

    OUTPUT:
    RETVAL

MODULE = Sigar   PACKAGE = Sigar::ResourceLimit   PREFIX = sigar_

void
DESTROY(obj)
    Sigar::ResourceLimit obj

    CODE:
    safefree(obj);

sigar_uint64_t
cpu_cur(resource_limit)
    Sigar::ResourceLimit resource_limit

    CODE:
    RETVAL = resource_limit->cpu_cur;

    OUTPUT:
    RETVAL

sigar_uint64_t
cpu_max(resource_limit)
    Sigar::ResourceLimit resource_limit

    CODE:
    RETVAL = resource_limit->cpu_max;

    OUTPUT:
    RETVAL

sigar_uint64_t
file_size_cur(resource_limit)
    Sigar::ResourceLimit resource_limit

    CODE:
    RETVAL = resource_limit->file_size_cur;

    OUTPUT:
    RETVAL

sigar_uint64_t
file_size_max(resource_limit)
    Sigar::ResourceLimit resource_limit

    CODE:
    RETVAL = resource_limit->file_size_max;

    OUTPUT:
    RETVAL

sigar_uint64_t
pipe_size_max(resource_limit)
    Sigar::ResourceLimit resource_limit

    CODE:
    RETVAL = resource_limit->pipe_size_max;

    OUTPUT:
    RETVAL

sigar_uint64_t
pipe_size_cur(resource_limit)
    Sigar::ResourceLimit resource_limit

    CODE:
    RETVAL = resource_limit->pipe_size_cur;

    OUTPUT:
    RETVAL

sigar_uint64_t
data_cur(resource_limit)
    Sigar::ResourceLimit resource_limit

    CODE:
    RETVAL = resource_limit->data_cur;

    OUTPUT:
    RETVAL

sigar_uint64_t
data_max(resource_limit)
    Sigar::ResourceLimit resource_limit

    CODE:
    RETVAL = resource_limit->data_max;

    OUTPUT:
    RETVAL

sigar_uint64_t
stack_cur(resource_limit)
    Sigar::ResourceLimit resource_limit

    CODE:
    RETVAL = resource_limit->stack_cur;

    OUTPUT:
    RETVAL

sigar_uint64_t
stack_max(resource_limit)
    Sigar::ResourceLimit resource_limit

    CODE:
    RETVAL = resource_limit->stack_max;

    OUTPUT:
    RETVAL

sigar_uint64_t
core_cur(resource_limit)
    Sigar::ResourceLimit resource_limit

    CODE:
    RETVAL = resource_limit->core_cur;

    OUTPUT:
    RETVAL

sigar_uint64_t
core_max(resource_limit)
    Sigar::ResourceLimit resource_limit

    CODE:
    RETVAL = resource_limit->core_max;

    OUTPUT:
    RETVAL

sigar_uint64_t
memory_cur(resource_limit)
    Sigar::ResourceLimit resource_limit

    CODE:
    RETVAL = resource_limit->memory_cur;

    OUTPUT:
    RETVAL

sigar_uint64_t
memory_max(resource_limit)
    Sigar::ResourceLimit resource_limit

    CODE:
    RETVAL = resource_limit->memory_max;

    OUTPUT:
    RETVAL

sigar_uint64_t
processes_cur(resource_limit)
    Sigar::ResourceLimit resource_limit

    CODE:
    RETVAL = resource_limit->processes_cur;

    OUTPUT:
    RETVAL

sigar_uint64_t
processes_max(resource_limit)
    Sigar::ResourceLimit resource_limit

    CODE:
    RETVAL = resource_limit->processes_max;

    OUTPUT:
    RETVAL

sigar_uint64_t
open_files_cur(resource_limit)
    Sigar::ResourceLimit resource_limit

    CODE:
    RETVAL = resource_limit->open_files_cur;

    OUTPUT:
    RETVAL

sigar_uint64_t
open_files_max(resource_limit)
    Sigar::ResourceLimit resource_limit

    CODE:
    RETVAL = resource_limit->open_files_max;

    OUTPUT:
    RETVAL

sigar_uint64_t
virtual_memory_cur(resource_limit)
    Sigar::ResourceLimit resource_limit

    CODE:
    RETVAL = resource_limit->virtual_memory_cur;

    OUTPUT:
    RETVAL

sigar_uint64_t
virtual_memory_max(resource_limit)
    Sigar::ResourceLimit resource_limit

    CODE:
    RETVAL = resource_limit->virtual_memory_max;

    OUTPUT:
    RETVAL


MODULE = Sigar   PACKAGE = Sigar   PREFIX = sigar_

Sigar::NfsServerV3
nfs_server_v3(sigar)
    Sigar sigar

    PREINIT:
    int status;

    CODE:
    RETVAL = safemalloc(sizeof(*RETVAL));
    if ((status = sigar_nfs_server_v3_get(sigar, RETVAL)) != SIGAR_OK) {
        SIGAR_CROAK(sigar, "nfs_server_v3");
    }

    OUTPUT:
    RETVAL

MODULE = Sigar   PACKAGE = Sigar::NfsServerV3   PREFIX = sigar_

void
DESTROY(obj)
    Sigar::NfsServerV3 obj

    CODE:
    safefree(obj);

sigar_uint64_t
null(nfs_server_v3)
    Sigar::NfsServerV3 nfs_server_v3

    CODE:
    RETVAL = nfs_server_v3->null;

    OUTPUT:
    RETVAL

sigar_uint64_t
getattr(nfs_server_v3)
    Sigar::NfsServerV3 nfs_server_v3

    CODE:
    RETVAL = nfs_server_v3->getattr;

    OUTPUT:
    RETVAL

sigar_uint64_t
setattr(nfs_server_v3)
    Sigar::NfsServerV3 nfs_server_v3

    CODE:
    RETVAL = nfs_server_v3->setattr;

    OUTPUT:
    RETVAL

sigar_uint64_t
lookup(nfs_server_v3)
    Sigar::NfsServerV3 nfs_server_v3

    CODE:
    RETVAL = nfs_server_v3->lookup;

    OUTPUT:
    RETVAL

sigar_uint64_t
access(nfs_server_v3)
    Sigar::NfsServerV3 nfs_server_v3

    CODE:
    RETVAL = nfs_server_v3->access;

    OUTPUT:
    RETVAL

sigar_uint64_t
readlink(nfs_server_v3)
    Sigar::NfsServerV3 nfs_server_v3

    CODE:
    RETVAL = nfs_server_v3->readlink;

    OUTPUT:
    RETVAL

sigar_uint64_t
read(nfs_server_v3)
    Sigar::NfsServerV3 nfs_server_v3

    CODE:
    RETVAL = nfs_server_v3->read;

    OUTPUT:
    RETVAL

sigar_uint64_t
write(nfs_server_v3)
    Sigar::NfsServerV3 nfs_server_v3

    CODE:
    RETVAL = nfs_server_v3->write;

    OUTPUT:
    RETVAL

sigar_uint64_t
create(nfs_server_v3)
    Sigar::NfsServerV3 nfs_server_v3

    CODE:
    RETVAL = nfs_server_v3->create;

    OUTPUT:
    RETVAL

sigar_uint64_t
mkdir(nfs_server_v3)
    Sigar::NfsServerV3 nfs_server_v3

    CODE:
    RETVAL = nfs_server_v3->mkdir;

    OUTPUT:
    RETVAL

sigar_uint64_t
symlink(nfs_server_v3)
    Sigar::NfsServerV3 nfs_server_v3

    CODE:
    RETVAL = nfs_server_v3->symlink;

    OUTPUT:
    RETVAL

sigar_uint64_t
mknod(nfs_server_v3)
    Sigar::NfsServerV3 nfs_server_v3

    CODE:
    RETVAL = nfs_server_v3->mknod;

    OUTPUT:
    RETVAL

sigar_uint64_t
remove(nfs_server_v3)
    Sigar::NfsServerV3 nfs_server_v3

    CODE:
    RETVAL = nfs_server_v3->remove;

    OUTPUT:
    RETVAL

sigar_uint64_t
rmdir(nfs_server_v3)
    Sigar::NfsServerV3 nfs_server_v3

    CODE:
    RETVAL = nfs_server_v3->rmdir;

    OUTPUT:
    RETVAL

sigar_uint64_t
rename(nfs_server_v3)
    Sigar::NfsServerV3 nfs_server_v3

    CODE:
    RETVAL = nfs_server_v3->rename;

    OUTPUT:
    RETVAL

sigar_uint64_t
link(nfs_server_v3)
    Sigar::NfsServerV3 nfs_server_v3

    CODE:
    RETVAL = nfs_server_v3->link;

    OUTPUT:
    RETVAL

sigar_uint64_t
readdir(nfs_server_v3)
    Sigar::NfsServerV3 nfs_server_v3

    CODE:
    RETVAL = nfs_server_v3->readdir;

    OUTPUT:
    RETVAL

sigar_uint64_t
readdirplus(nfs_server_v3)
    Sigar::NfsServerV3 nfs_server_v3

    CODE:
    RETVAL = nfs_server_v3->readdirplus;

    OUTPUT:
    RETVAL

sigar_uint64_t
fsstat(nfs_server_v3)
    Sigar::NfsServerV3 nfs_server_v3

    CODE:
    RETVAL = nfs_server_v3->fsstat;

    OUTPUT:
    RETVAL

sigar_uint64_t
fsinfo(nfs_server_v3)
    Sigar::NfsServerV3 nfs_server_v3

    CODE:
    RETVAL = nfs_server_v3->fsinfo;

    OUTPUT:
    RETVAL

sigar_uint64_t
pathconf(nfs_server_v3)
    Sigar::NfsServerV3 nfs_server_v3

    CODE:
    RETVAL = nfs_server_v3->pathconf;

    OUTPUT:
    RETVAL

sigar_uint64_t
commit(nfs_server_v3)
    Sigar::NfsServerV3 nfs_server_v3

    CODE:
    RETVAL = nfs_server_v3->commit;

    OUTPUT:
    RETVAL


MODULE = Sigar   PACKAGE = Sigar   PREFIX = sigar_

Sigar::FileAttrs
file_attrs(sigar, name)
    Sigar sigar
    const char * name

    PREINIT:
    int status;

    CODE:
    RETVAL = safemalloc(sizeof(*RETVAL));
    if ((status = sigar_file_attrs_get(sigar, name, RETVAL)) != SIGAR_OK) {
        SIGAR_CROAK(sigar, "file_attrs");
    }

    OUTPUT:
    RETVAL

MODULE = Sigar   PACKAGE = Sigar::FileAttrs   PREFIX = sigar_

void
DESTROY(obj)
    Sigar::FileAttrs obj

    CODE:
    safefree(obj);

sigar_uint64_t
permissions(file_attrs)
    Sigar::FileAttrs file_attrs

    CODE:
    RETVAL = file_attrs->permissions;

    OUTPUT:
    RETVAL

IV
type(file_attrs)
    Sigar::FileAttrs file_attrs

    CODE:
    RETVAL = file_attrs->type;

    OUTPUT:
    RETVAL

sigar_uint64_t
uid(file_attrs)
    Sigar::FileAttrs file_attrs

    CODE:
    RETVAL = file_attrs->uid;

    OUTPUT:
    RETVAL

sigar_uint64_t
gid(file_attrs)
    Sigar::FileAttrs file_attrs

    CODE:
    RETVAL = file_attrs->gid;

    OUTPUT:
    RETVAL

sigar_uint64_t
inode(file_attrs)
    Sigar::FileAttrs file_attrs

    CODE:
    RETVAL = file_attrs->inode;

    OUTPUT:
    RETVAL

sigar_uint64_t
device(file_attrs)
    Sigar::FileAttrs file_attrs

    CODE:
    RETVAL = file_attrs->device;

    OUTPUT:
    RETVAL

sigar_uint64_t
nlink(file_attrs)
    Sigar::FileAttrs file_attrs

    CODE:
    RETVAL = file_attrs->nlink;

    OUTPUT:
    RETVAL

sigar_uint64_t
size(file_attrs)
    Sigar::FileAttrs file_attrs

    CODE:
    RETVAL = file_attrs->size;

    OUTPUT:
    RETVAL

sigar_uint64_t
atime(file_attrs)
    Sigar::FileAttrs file_attrs

    CODE:
    RETVAL = file_attrs->atime;

    OUTPUT:
    RETVAL

sigar_uint64_t
ctime(file_attrs)
    Sigar::FileAttrs file_attrs

    CODE:
    RETVAL = file_attrs->ctime;

    OUTPUT:
    RETVAL

sigar_uint64_t
mtime(file_attrs)
    Sigar::FileAttrs file_attrs

    CODE:
    RETVAL = file_attrs->mtime;

    OUTPUT:
    RETVAL


MODULE = Sigar   PACKAGE = Sigar   PREFIX = sigar_

Sigar::Cpu
cpu(sigar)
    Sigar sigar

    PREINIT:
    int status;

    CODE:
    RETVAL = safemalloc(sizeof(*RETVAL));
    if ((status = sigar_cpu_get(sigar, RETVAL)) != SIGAR_OK) {
        SIGAR_CROAK(sigar, "cpu");
    }

    OUTPUT:
    RETVAL

MODULE = Sigar   PACKAGE = Sigar::Cpu   PREFIX = sigar_

void
DESTROY(obj)
    Sigar::Cpu obj

    CODE:
    safefree(obj);

sigar_uint64_t
user(cpu)
    Sigar::Cpu cpu

    CODE:
    RETVAL = cpu->user;

    OUTPUT:
    RETVAL

sigar_uint64_t
sys(cpu)
    Sigar::Cpu cpu

    CODE:
    RETVAL = cpu->sys;

    OUTPUT:
    RETVAL

sigar_uint64_t
nice(cpu)
    Sigar::Cpu cpu

    CODE:
    RETVAL = cpu->nice;

    OUTPUT:
    RETVAL

sigar_uint64_t
idle(cpu)
    Sigar::Cpu cpu

    CODE:
    RETVAL = cpu->idle;

    OUTPUT:
    RETVAL

sigar_uint64_t
wait(cpu)
    Sigar::Cpu cpu

    CODE:
    RETVAL = cpu->wait;

    OUTPUT:
    RETVAL

sigar_uint64_t
irq(cpu)
    Sigar::Cpu cpu

    CODE:
    RETVAL = cpu->irq;

    OUTPUT:
    RETVAL

sigar_uint64_t
soft_irq(cpu)
    Sigar::Cpu cpu

    CODE:
    RETVAL = cpu->soft_irq;

    OUTPUT:
    RETVAL

sigar_uint64_t
stolen(cpu)
    Sigar::Cpu cpu

    CODE:
    RETVAL = cpu->stolen;

    OUTPUT:
    RETVAL

sigar_uint64_t
total(cpu)
    Sigar::Cpu cpu

    CODE:
    RETVAL = cpu->total;

    OUTPUT:
    RETVAL


MODULE = Sigar   PACKAGE = Sigar   PREFIX = sigar_

Sigar::NfsClientV2
nfs_client_v2(sigar)
    Sigar sigar

    PREINIT:
    int status;

    CODE:
    RETVAL = safemalloc(sizeof(*RETVAL));
    if ((status = sigar_nfs_client_v2_get(sigar, RETVAL)) != SIGAR_OK) {
        SIGAR_CROAK(sigar, "nfs_client_v2");
    }

    OUTPUT:
    RETVAL

MODULE = Sigar   PACKAGE = Sigar::NfsClientV2   PREFIX = sigar_

void
DESTROY(obj)
    Sigar::NfsClientV2 obj

    CODE:
    safefree(obj);

sigar_uint64_t
null(nfs_client_v2)
    Sigar::NfsClientV2 nfs_client_v2

    CODE:
    RETVAL = nfs_client_v2->null;

    OUTPUT:
    RETVAL

sigar_uint64_t
getattr(nfs_client_v2)
    Sigar::NfsClientV2 nfs_client_v2

    CODE:
    RETVAL = nfs_client_v2->getattr;

    OUTPUT:
    RETVAL

sigar_uint64_t
setattr(nfs_client_v2)
    Sigar::NfsClientV2 nfs_client_v2

    CODE:
    RETVAL = nfs_client_v2->setattr;

    OUTPUT:
    RETVAL

sigar_uint64_t
root(nfs_client_v2)
    Sigar::NfsClientV2 nfs_client_v2

    CODE:
    RETVAL = nfs_client_v2->root;

    OUTPUT:
    RETVAL

sigar_uint64_t
lookup(nfs_client_v2)
    Sigar::NfsClientV2 nfs_client_v2

    CODE:
    RETVAL = nfs_client_v2->lookup;

    OUTPUT:
    RETVAL

sigar_uint64_t
readlink(nfs_client_v2)
    Sigar::NfsClientV2 nfs_client_v2

    CODE:
    RETVAL = nfs_client_v2->readlink;

    OUTPUT:
    RETVAL

sigar_uint64_t
read(nfs_client_v2)
    Sigar::NfsClientV2 nfs_client_v2

    CODE:
    RETVAL = nfs_client_v2->read;

    OUTPUT:
    RETVAL

sigar_uint64_t
writecache(nfs_client_v2)
    Sigar::NfsClientV2 nfs_client_v2

    CODE:
    RETVAL = nfs_client_v2->writecache;

    OUTPUT:
    RETVAL

sigar_uint64_t
write(nfs_client_v2)
    Sigar::NfsClientV2 nfs_client_v2

    CODE:
    RETVAL = nfs_client_v2->write;

    OUTPUT:
    RETVAL

sigar_uint64_t
create(nfs_client_v2)
    Sigar::NfsClientV2 nfs_client_v2

    CODE:
    RETVAL = nfs_client_v2->create;

    OUTPUT:
    RETVAL

sigar_uint64_t
remove(nfs_client_v2)
    Sigar::NfsClientV2 nfs_client_v2

    CODE:
    RETVAL = nfs_client_v2->remove;

    OUTPUT:
    RETVAL

sigar_uint64_t
rename(nfs_client_v2)
    Sigar::NfsClientV2 nfs_client_v2

    CODE:
    RETVAL = nfs_client_v2->rename;

    OUTPUT:
    RETVAL

sigar_uint64_t
link(nfs_client_v2)
    Sigar::NfsClientV2 nfs_client_v2

    CODE:
    RETVAL = nfs_client_v2->link;

    OUTPUT:
    RETVAL

sigar_uint64_t
symlink(nfs_client_v2)
    Sigar::NfsClientV2 nfs_client_v2

    CODE:
    RETVAL = nfs_client_v2->symlink;

    OUTPUT:
    RETVAL

sigar_uint64_t
mkdir(nfs_client_v2)
    Sigar::NfsClientV2 nfs_client_v2

    CODE:
    RETVAL = nfs_client_v2->mkdir;

    OUTPUT:
    RETVAL

sigar_uint64_t
rmdir(nfs_client_v2)
    Sigar::NfsClientV2 nfs_client_v2

    CODE:
    RETVAL = nfs_client_v2->rmdir;

    OUTPUT:
    RETVAL

sigar_uint64_t
readdir(nfs_client_v2)
    Sigar::NfsClientV2 nfs_client_v2

    CODE:
    RETVAL = nfs_client_v2->readdir;

    OUTPUT:
    RETVAL

sigar_uint64_t
fsstat(nfs_client_v2)
    Sigar::NfsClientV2 nfs_client_v2

    CODE:
    RETVAL = nfs_client_v2->fsstat;

    OUTPUT:
    RETVAL


MODULE = Sigar   PACKAGE = Sigar   PREFIX = sigar_

Sigar::DiskUsage
disk_usage(sigar, name)
    Sigar sigar
    const char * name

    PREINIT:
    int status;

    CODE:
    RETVAL = safemalloc(sizeof(*RETVAL));
    if ((status = sigar_disk_usage_get(sigar, name, RETVAL)) != SIGAR_OK) {
        SIGAR_CROAK(sigar, "disk_usage");
    }

    OUTPUT:
    RETVAL

MODULE = Sigar   PACKAGE = Sigar::DiskUsage   PREFIX = sigar_

void
DESTROY(obj)
    Sigar::DiskUsage obj

    CODE:
    safefree(obj);

sigar_uint64_t
reads(disk_usage)
    Sigar::DiskUsage disk_usage

    CODE:
    RETVAL = disk_usage->reads;

    OUTPUT:
    RETVAL

sigar_uint64_t
writes(disk_usage)
    Sigar::DiskUsage disk_usage

    CODE:
    RETVAL = disk_usage->writes;

    OUTPUT:
    RETVAL

sigar_uint64_t
read_bytes(disk_usage)
    Sigar::DiskUsage disk_usage

    CODE:
    RETVAL = disk_usage->read_bytes;

    OUTPUT:
    RETVAL

sigar_uint64_t
write_bytes(disk_usage)
    Sigar::DiskUsage disk_usage

    CODE:
    RETVAL = disk_usage->write_bytes;

    OUTPUT:
    RETVAL

double
queue(disk_usage)
    Sigar::DiskUsage disk_usage

    CODE:
    RETVAL = disk_usage->queue;

    OUTPUT:
    RETVAL

double
service_time(disk_usage)
    Sigar::DiskUsage disk_usage

    CODE:
    RETVAL = disk_usage->service_time;

    OUTPUT:
    RETVAL


MODULE = Sigar   PACKAGE = Sigar   PREFIX = sigar_


MODULE = Sigar   PACKAGE = Sigar::CpuInfo   PREFIX = sigar_

void
DESTROY(obj)
    Sigar::CpuInfo obj

    CODE:
    safefree(obj);

char *
vendor(cpu_info)
    Sigar::CpuInfo cpu_info

    CODE:
    RETVAL = cpu_info->vendor;

    OUTPUT:
    RETVAL

char *
model(cpu_info)
    Sigar::CpuInfo cpu_info

    CODE:
    RETVAL = cpu_info->model;

    OUTPUT:
    RETVAL

IV
mhz(cpu_info)
    Sigar::CpuInfo cpu_info

    CODE:
    RETVAL = cpu_info->mhz;

    OUTPUT:
    RETVAL

sigar_uint64_t
cache_size(cpu_info)
    Sigar::CpuInfo cpu_info

    CODE:
    RETVAL = cpu_info->cache_size;

    OUTPUT:
    RETVAL

IV
total_cores(cpu_info)
    Sigar::CpuInfo cpu_info

    CODE:
    RETVAL = cpu_info->total_cores;

    OUTPUT:
    RETVAL

IV
total_sockets(cpu_info)
    Sigar::CpuInfo cpu_info

    CODE:
    RETVAL = cpu_info->total_sockets;

    OUTPUT:
    RETVAL

IV
cores_per_socket(cpu_info)
    Sigar::CpuInfo cpu_info

    CODE:
    RETVAL = cpu_info->cores_per_socket;

    OUTPUT:
    RETVAL


MODULE = Sigar   PACKAGE = Sigar   PREFIX = sigar_


MODULE = Sigar   PACKAGE = Sigar::FileSystem   PREFIX = sigar_

void
DESTROY(obj)
    Sigar::FileSystem obj

    CODE:
    safefree(obj);

char *
dir_name(file_system)
    Sigar::FileSystem file_system

    CODE:
    RETVAL = file_system->dir_name;

    OUTPUT:
    RETVAL

char *
dev_name(file_system)
    Sigar::FileSystem file_system

    CODE:
    RETVAL = file_system->dev_name;

    OUTPUT:
    RETVAL

char *
type_name(file_system)
    Sigar::FileSystem file_system

    CODE:
    RETVAL = file_system->type_name;

    OUTPUT:
    RETVAL

char *
sys_type_name(file_system)
    Sigar::FileSystem file_system

    CODE:
    RETVAL = file_system->sys_type_name;

    OUTPUT:
    RETVAL

char *
options(file_system)
    Sigar::FileSystem file_system

    CODE:
    RETVAL = file_system->options;

    OUTPUT:
    RETVAL

IV
type(file_system)
    Sigar::FileSystem file_system

    CODE:
    RETVAL = file_system->type;

    OUTPUT:
    RETVAL

sigar_uint64_t
flags(file_system)
    Sigar::FileSystem file_system

    CODE:
    RETVAL = file_system->flags;

    OUTPUT:
    RETVAL


MODULE = Sigar   PACKAGE = Sigar   PREFIX = sigar_


MODULE = Sigar   PACKAGE = Sigar::Who   PREFIX = sigar_

void
DESTROY(obj)
    Sigar::Who obj

    CODE:
    safefree(obj);

char *
user(who)
    Sigar::Who who

    CODE:
    RETVAL = who->user;

    OUTPUT:
    RETVAL

char *
device(who)
    Sigar::Who who

    CODE:
    RETVAL = who->device;

    OUTPUT:
    RETVAL

char *
host(who)
    Sigar::Who who

    CODE:
    RETVAL = who->host;

    OUTPUT:
    RETVAL

sigar_uint64_t
time(who)
    Sigar::Who who

    CODE:
    RETVAL = who->time;

    OUTPUT:
    RETVAL


MODULE = Sigar   PACKAGE = Sigar   PREFIX = sigar_

Sigar::Swap
swap(sigar)
    Sigar sigar

    PREINIT:
    int status;

    CODE:
    RETVAL = safemalloc(sizeof(*RETVAL));
    if ((status = sigar_swap_get(sigar, RETVAL)) != SIGAR_OK) {
        SIGAR_CROAK(sigar, "swap");
    }

    OUTPUT:
    RETVAL

MODULE = Sigar   PACKAGE = Sigar::Swap   PREFIX = sigar_

void
DESTROY(obj)
    Sigar::Swap obj

    CODE:
    safefree(obj);

sigar_uint64_t
total(swap)
    Sigar::Swap swap

    CODE:
    RETVAL = swap->total;

    OUTPUT:
    RETVAL

sigar_uint64_t
used(swap)
    Sigar::Swap swap

    CODE:
    RETVAL = swap->used;

    OUTPUT:
    RETVAL

sigar_uint64_t
free(swap)
    Sigar::Swap swap

    CODE:
    RETVAL = swap->free;

    OUTPUT:
    RETVAL

sigar_uint64_t
page_in(swap)
    Sigar::Swap swap

    CODE:
    RETVAL = swap->page_in;

    OUTPUT:
    RETVAL

sigar_uint64_t
page_out(swap)
    Sigar::Swap swap

    CODE:
    RETVAL = swap->page_out;

    OUTPUT:
    RETVAL


MODULE = Sigar   PACKAGE = Sigar   PREFIX = sigar_

Sigar::ProcTime
proc_time(sigar, pid)
    Sigar sigar
    sigar_pid_t pid

    PREINIT:
    int status;

    CODE:
    RETVAL = safemalloc(sizeof(*RETVAL));
    if ((status = sigar_proc_time_get(sigar, pid, RETVAL)) != SIGAR_OK) {
        SIGAR_CROAK(sigar, "proc_time");
    }

    OUTPUT:
    RETVAL

MODULE = Sigar   PACKAGE = Sigar::ProcTime   PREFIX = sigar_

void
DESTROY(obj)
    Sigar::ProcTime obj

    CODE:
    safefree(obj);

sigar_uint64_t
start_time(proc_time)
    Sigar::ProcTime proc_time

    CODE:
    RETVAL = proc_time->start_time;

    OUTPUT:
    RETVAL

sigar_uint64_t
user(proc_time)
    Sigar::ProcTime proc_time

    CODE:
    RETVAL = proc_time->user;

    OUTPUT:
    RETVAL

sigar_uint64_t
sys(proc_time)
    Sigar::ProcTime proc_time

    CODE:
    RETVAL = proc_time->sys;

    OUTPUT:
    RETVAL

sigar_uint64_t
total(proc_time)
    Sigar::ProcTime proc_time

    CODE:
    RETVAL = proc_time->total;

    OUTPUT:
    RETVAL


MODULE = Sigar   PACKAGE = Sigar   PREFIX = sigar_

Sigar::FileSystemUsage
file_system_usage(sigar, name)
    Sigar sigar
    const char * name

    PREINIT:
    int status;

    CODE:
    RETVAL = safemalloc(sizeof(*RETVAL));
    if ((status = sigar_file_system_usage_get(sigar, name, RETVAL)) != SIGAR_OK) {
        SIGAR_CROAK(sigar, "file_system_usage");
    }

    OUTPUT:
    RETVAL

MODULE = Sigar   PACKAGE = Sigar::FileSystemUsage   PREFIX = sigar_

void
DESTROY(obj)
    Sigar::FileSystemUsage obj

    CODE:
    safefree(obj);

sigar_uint64_t
total(file_system_usage)
    Sigar::FileSystemUsage file_system_usage

    CODE:
    RETVAL = file_system_usage->total;

    OUTPUT:
    RETVAL

sigar_uint64_t
free(file_system_usage)
    Sigar::FileSystemUsage file_system_usage

    CODE:
    RETVAL = file_system_usage->free;

    OUTPUT:
    RETVAL

sigar_uint64_t
used(file_system_usage)
    Sigar::FileSystemUsage file_system_usage

    CODE:
    RETVAL = file_system_usage->used;

    OUTPUT:
    RETVAL

sigar_uint64_t
avail(file_system_usage)
    Sigar::FileSystemUsage file_system_usage

    CODE:
    RETVAL = file_system_usage->avail;

    OUTPUT:
    RETVAL

sigar_uint64_t
files(file_system_usage)
    Sigar::FileSystemUsage file_system_usage

    CODE:
    RETVAL = file_system_usage->files;

    OUTPUT:
    RETVAL

sigar_uint64_t
free_files(file_system_usage)
    Sigar::FileSystemUsage file_system_usage

    CODE:
    RETVAL = file_system_usage->free_files;

    OUTPUT:
    RETVAL

sigar_uint64_t
disk_reads(file_system_usage)
    Sigar::FileSystemUsage file_system_usage

    CODE:
    RETVAL = file_system_usage->disk_reads;

    OUTPUT:
    RETVAL

sigar_uint64_t
disk_writes(file_system_usage)
    Sigar::FileSystemUsage file_system_usage

    CODE:
    RETVAL = file_system_usage->disk_writes;

    OUTPUT:
    RETVAL

sigar_uint64_t
disk_read_bytes(file_system_usage)
    Sigar::FileSystemUsage file_system_usage

    CODE:
    RETVAL = file_system_usage->disk_read_bytes;

    OUTPUT:
    RETVAL

sigar_uint64_t
disk_write_bytes(file_system_usage)
    Sigar::FileSystemUsage file_system_usage

    CODE:
    RETVAL = file_system_usage->disk_write_bytes;

    OUTPUT:
    RETVAL

double
disk_queue(file_system_usage)
    Sigar::FileSystemUsage file_system_usage

    CODE:
    RETVAL = file_system_usage->disk_queue;

    OUTPUT:
    RETVAL

double
disk_service_time(file_system_usage)
    Sigar::FileSystemUsage file_system_usage

    CODE:
    RETVAL = file_system_usage->disk_service_time;

    OUTPUT:
    RETVAL

double
use_percent(file_system_usage)
    Sigar::FileSystemUsage file_system_usage

    CODE:
    RETVAL = file_system_usage->use_percent;

    OUTPUT:
    RETVAL


MODULE = Sigar   PACKAGE = Sigar   PREFIX = sigar_

Sigar::ProcMem
proc_mem(sigar, pid)
    Sigar sigar
    sigar_pid_t pid

    PREINIT:
    int status;

    CODE:
    RETVAL = safemalloc(sizeof(*RETVAL));
    if ((status = sigar_proc_mem_get(sigar, pid, RETVAL)) != SIGAR_OK) {
        SIGAR_CROAK(sigar, "proc_mem");
    }

    OUTPUT:
    RETVAL

MODULE = Sigar   PACKAGE = Sigar::ProcMem   PREFIX = sigar_

void
DESTROY(obj)
    Sigar::ProcMem obj

    CODE:
    safefree(obj);

sigar_uint64_t
size(proc_mem)
    Sigar::ProcMem proc_mem

    CODE:
    RETVAL = proc_mem->size;

    OUTPUT:
    RETVAL

sigar_uint64_t
resident(proc_mem)
    Sigar::ProcMem proc_mem

    CODE:
    RETVAL = proc_mem->resident;

    OUTPUT:
    RETVAL

sigar_uint64_t
share(proc_mem)
    Sigar::ProcMem proc_mem

    CODE:
    RETVAL = proc_mem->share;

    OUTPUT:
    RETVAL

sigar_uint64_t
minor_faults(proc_mem)
    Sigar::ProcMem proc_mem

    CODE:
    RETVAL = proc_mem->minor_faults;

    OUTPUT:
    RETVAL

sigar_uint64_t
major_faults(proc_mem)
    Sigar::ProcMem proc_mem

    CODE:
    RETVAL = proc_mem->major_faults;

    OUTPUT:
    RETVAL

sigar_uint64_t
page_faults(proc_mem)
    Sigar::ProcMem proc_mem

    CODE:
    RETVAL = proc_mem->page_faults;

    OUTPUT:
    RETVAL


MODULE = Sigar   PACKAGE = Sigar   PREFIX = sigar_

Sigar::ThreadCpu
thread_cpu(sigar, pid)
    Sigar sigar
    sigar_pid_t pid

    PREINIT:
    int status;

    CODE:
    RETVAL = safemalloc(sizeof(*RETVAL));
    if ((status = sigar_thread_cpu_get(sigar, pid, RETVAL)) != SIGAR_OK) {
        SIGAR_CROAK(sigar, "thread_cpu");
    }

    OUTPUT:
    RETVAL

MODULE = Sigar   PACKAGE = Sigar::ThreadCpu   PREFIX = sigar_

void
DESTROY(obj)
    Sigar::ThreadCpu obj

    CODE:
    safefree(obj);

sigar_uint64_t
user(thread_cpu)
    Sigar::ThreadCpu thread_cpu

    CODE:
    RETVAL = thread_cpu->user;

    OUTPUT:
    RETVAL

sigar_uint64_t
sys(thread_cpu)
    Sigar::ThreadCpu thread_cpu

    CODE:
    RETVAL = thread_cpu->sys;

    OUTPUT:
    RETVAL

sigar_uint64_t
total(thread_cpu)
    Sigar::ThreadCpu thread_cpu

    CODE:
    RETVAL = thread_cpu->total;

    OUTPUT:
    RETVAL


MODULE = Sigar   PACKAGE = Sigar   PREFIX = sigar_


MODULE = Sigar   PACKAGE = Sigar::NetRoute   PREFIX = sigar_

void
DESTROY(obj)
    Sigar::NetRoute obj

    CODE:
    safefree(obj);

Sigar::NetAddress
destination(net_route)
    Sigar::NetRoute net_route

    CODE:
    RETVAL = net_route->destination;

    OUTPUT:
    RETVAL

Sigar::NetAddress
gateway(net_route)
    Sigar::NetRoute net_route

    CODE:
    RETVAL = net_route->gateway;

    OUTPUT:
    RETVAL

sigar_uint64_t
flags(net_route)
    Sigar::NetRoute net_route

    CODE:
    RETVAL = net_route->flags;

    OUTPUT:
    RETVAL

sigar_uint64_t
refcnt(net_route)
    Sigar::NetRoute net_route

    CODE:
    RETVAL = net_route->refcnt;

    OUTPUT:
    RETVAL

sigar_uint64_t
use(net_route)
    Sigar::NetRoute net_route

    CODE:
    RETVAL = net_route->use;

    OUTPUT:
    RETVAL

sigar_uint64_t
metric(net_route)
    Sigar::NetRoute net_route

    CODE:
    RETVAL = net_route->metric;

    OUTPUT:
    RETVAL

Sigar::NetAddress
mask(net_route)
    Sigar::NetRoute net_route

    CODE:
    RETVAL = net_route->mask;

    OUTPUT:
    RETVAL

sigar_uint64_t
mtu(net_route)
    Sigar::NetRoute net_route

    CODE:
    RETVAL = net_route->mtu;

    OUTPUT:
    RETVAL

sigar_uint64_t
window(net_route)
    Sigar::NetRoute net_route

    CODE:
    RETVAL = net_route->window;

    OUTPUT:
    RETVAL

sigar_uint64_t
irtt(net_route)
    Sigar::NetRoute net_route

    CODE:
    RETVAL = net_route->irtt;

    OUTPUT:
    RETVAL

char *
ifname(net_route)
    Sigar::NetRoute net_route

    CODE:
    RETVAL = net_route->ifname;

    OUTPUT:
    RETVAL


MODULE = Sigar   PACKAGE = Sigar   PREFIX = sigar_

Sigar::ProcStat
proc_stat(sigar)
    Sigar sigar

    PREINIT:
    int status;

    CODE:
    RETVAL = safemalloc(sizeof(*RETVAL));
    if ((status = sigar_proc_stat_get(sigar, RETVAL)) != SIGAR_OK) {
        SIGAR_CROAK(sigar, "proc_stat");
    }

    OUTPUT:
    RETVAL

MODULE = Sigar   PACKAGE = Sigar::ProcStat   PREFIX = sigar_

void
DESTROY(obj)
    Sigar::ProcStat obj

    CODE:
    safefree(obj);

sigar_uint64_t
total(proc_stat)
    Sigar::ProcStat proc_stat

    CODE:
    RETVAL = proc_stat->total;

    OUTPUT:
    RETVAL

sigar_uint64_t
idle(proc_stat)
    Sigar::ProcStat proc_stat

    CODE:
    RETVAL = proc_stat->idle;

    OUTPUT:
    RETVAL

sigar_uint64_t
running(proc_stat)
    Sigar::ProcStat proc_stat

    CODE:
    RETVAL = proc_stat->running;

    OUTPUT:
    RETVAL

sigar_uint64_t
sleeping(proc_stat)
    Sigar::ProcStat proc_stat

    CODE:
    RETVAL = proc_stat->sleeping;

    OUTPUT:
    RETVAL

sigar_uint64_t
stopped(proc_stat)
    Sigar::ProcStat proc_stat

    CODE:
    RETVAL = proc_stat->stopped;

    OUTPUT:
    RETVAL

sigar_uint64_t
zombie(proc_stat)
    Sigar::ProcStat proc_stat

    CODE:
    RETVAL = proc_stat->zombie;

    OUTPUT:
    RETVAL

sigar_uint64_t
threads(proc_stat)
    Sigar::ProcStat proc_stat

    CODE:
    RETVAL = proc_stat->threads;

    OUTPUT:
    RETVAL


MODULE = Sigar   PACKAGE = Sigar   PREFIX = sigar_

Sigar::NetInterfaceConfig
net_interface_config(sigar, name)
    Sigar sigar
    const char * name

    PREINIT:
    int status;

    CODE:
    RETVAL = safemalloc(sizeof(*RETVAL));
    if ((status = sigar_net_interface_config_get(sigar, name, RETVAL)) != SIGAR_OK) {
        SIGAR_CROAK(sigar, "net_interface_config");
    }

    OUTPUT:
    RETVAL

MODULE = Sigar   PACKAGE = Sigar::NetInterfaceConfig   PREFIX = sigar_

void
DESTROY(obj)
    Sigar::NetInterfaceConfig obj

    CODE:
    safefree(obj);

char *
name(net_interface_config)
    Sigar::NetInterfaceConfig net_interface_config

    CODE:
    RETVAL = net_interface_config->name;

    OUTPUT:
    RETVAL

Sigar::NetAddress
hwaddr(net_interface_config)
    Sigar::NetInterfaceConfig net_interface_config

    CODE:
    RETVAL = net_interface_config->hwaddr;

    OUTPUT:
    RETVAL

char *
type(net_interface_config)
    Sigar::NetInterfaceConfig net_interface_config

    CODE:
    RETVAL = net_interface_config->type;

    OUTPUT:
    RETVAL

char *
description(net_interface_config)
    Sigar::NetInterfaceConfig net_interface_config

    CODE:
    RETVAL = net_interface_config->description;

    OUTPUT:
    RETVAL

Sigar::NetAddress
address(net_interface_config)
    Sigar::NetInterfaceConfig net_interface_config

    CODE:
    RETVAL = net_interface_config->address;

    OUTPUT:
    RETVAL

Sigar::NetAddress
destination(net_interface_config)
    Sigar::NetInterfaceConfig net_interface_config

    CODE:
    RETVAL = net_interface_config->destination;

    OUTPUT:
    RETVAL

Sigar::NetAddress
broadcast(net_interface_config)
    Sigar::NetInterfaceConfig net_interface_config

    CODE:
    RETVAL = net_interface_config->broadcast;

    OUTPUT:
    RETVAL

Sigar::NetAddress
netmask(net_interface_config)
    Sigar::NetInterfaceConfig net_interface_config

    CODE:
    RETVAL = net_interface_config->netmask;

    OUTPUT:
    RETVAL

sigar_uint64_t
flags(net_interface_config)
    Sigar::NetInterfaceConfig net_interface_config

    CODE:
    RETVAL = net_interface_config->flags;

    OUTPUT:
    RETVAL

sigar_uint64_t
mtu(net_interface_config)
    Sigar::NetInterfaceConfig net_interface_config

    CODE:
    RETVAL = net_interface_config->mtu;

    OUTPUT:
    RETVAL

sigar_uint64_t
metric(net_interface_config)
    Sigar::NetInterfaceConfig net_interface_config

    CODE:
    RETVAL = net_interface_config->metric;

    OUTPUT:
    RETVAL


MODULE = Sigar   PACKAGE = Sigar   PREFIX = sigar_

Sigar::NetInfo
net_info(sigar)
    Sigar sigar

    PREINIT:
    int status;

    CODE:
    RETVAL = safemalloc(sizeof(*RETVAL));
    if ((status = sigar_net_info_get(sigar, RETVAL)) != SIGAR_OK) {
        SIGAR_CROAK(sigar, "net_info");
    }

    OUTPUT:
    RETVAL

MODULE = Sigar   PACKAGE = Sigar::NetInfo   PREFIX = sigar_

void
DESTROY(obj)
    Sigar::NetInfo obj

    CODE:
    safefree(obj);

char *
default_gateway(net_info)
    Sigar::NetInfo net_info

    CODE:
    RETVAL = net_info->default_gateway;

    OUTPUT:
    RETVAL

char *
host_name(net_info)
    Sigar::NetInfo net_info

    CODE:
    RETVAL = net_info->host_name;

    OUTPUT:
    RETVAL

char *
domain_name(net_info)
    Sigar::NetInfo net_info

    CODE:
    RETVAL = net_info->domain_name;

    OUTPUT:
    RETVAL

char *
primary_dns(net_info)
    Sigar::NetInfo net_info

    CODE:
    RETVAL = net_info->primary_dns;

    OUTPUT:
    RETVAL

char *
secondary_dns(net_info)
    Sigar::NetInfo net_info

    CODE:
    RETVAL = net_info->secondary_dns;

    OUTPUT:
    RETVAL


MODULE = Sigar   PACKAGE = Sigar   PREFIX = sigar_

Sigar::SysInfo
sys_info(sigar)
    Sigar sigar

    PREINIT:
    int status;

    CODE:
    RETVAL = safemalloc(sizeof(*RETVAL));
    if ((status = sigar_sys_info_get(sigar, RETVAL)) != SIGAR_OK) {
        SIGAR_CROAK(sigar, "sys_info");
    }

    OUTPUT:
    RETVAL

MODULE = Sigar   PACKAGE = Sigar::SysInfo   PREFIX = sigar_

void
DESTROY(obj)
    Sigar::SysInfo obj

    CODE:
    safefree(obj);

char *
name(sys_info)
    Sigar::SysInfo sys_info

    CODE:
    RETVAL = sys_info->name;

    OUTPUT:
    RETVAL

char *
version(sys_info)
    Sigar::SysInfo sys_info

    CODE:
    RETVAL = sys_info->version;

    OUTPUT:
    RETVAL

char *
arch(sys_info)
    Sigar::SysInfo sys_info

    CODE:
    RETVAL = sys_info->arch;

    OUTPUT:
    RETVAL

char *
machine(sys_info)
    Sigar::SysInfo sys_info

    CODE:
    RETVAL = sys_info->machine;

    OUTPUT:
    RETVAL

char *
description(sys_info)
    Sigar::SysInfo sys_info

    CODE:
    RETVAL = sys_info->description;

    OUTPUT:
    RETVAL

char *
patch_level(sys_info)
    Sigar::SysInfo sys_info

    CODE:
    RETVAL = sys_info->patch_level;

    OUTPUT:
    RETVAL

char *
vendor(sys_info)
    Sigar::SysInfo sys_info

    CODE:
    RETVAL = sys_info->vendor;

    OUTPUT:
    RETVAL

char *
vendor_version(sys_info)
    Sigar::SysInfo sys_info

    CODE:
    RETVAL = sys_info->vendor_version;

    OUTPUT:
    RETVAL

char *
vendor_name(sys_info)
    Sigar::SysInfo sys_info

    CODE:
    RETVAL = sys_info->vendor_name;

    OUTPUT:
    RETVAL

char *
vendor_code_name(sys_info)
    Sigar::SysInfo sys_info

    CODE:
    RETVAL = sys_info->vendor_code_name;

    OUTPUT:
    RETVAL


MODULE = Sigar   PACKAGE = Sigar   PREFIX = sigar_

Sigar::Mem
mem(sigar)
    Sigar sigar

    PREINIT:
    int status;

    CODE:
    RETVAL = safemalloc(sizeof(*RETVAL));
    if ((status = sigar_mem_get(sigar, RETVAL)) != SIGAR_OK) {
        SIGAR_CROAK(sigar, "mem");
    }

    OUTPUT:
    RETVAL

MODULE = Sigar   PACKAGE = Sigar::Mem   PREFIX = sigar_

void
DESTROY(obj)
    Sigar::Mem obj

    CODE:
    safefree(obj);

sigar_uint64_t
total(mem)
    Sigar::Mem mem

    CODE:
    RETVAL = mem->total;

    OUTPUT:
    RETVAL

sigar_uint64_t
ram(mem)
    Sigar::Mem mem

    CODE:
    RETVAL = mem->ram;

    OUTPUT:
    RETVAL

sigar_uint64_t
used(mem)
    Sigar::Mem mem

    CODE:
    RETVAL = mem->used;

    OUTPUT:
    RETVAL

sigar_uint64_t
free(mem)
    Sigar::Mem mem

    CODE:
    RETVAL = mem->free;

    OUTPUT:
    RETVAL

sigar_uint64_t
actual_used(mem)
    Sigar::Mem mem

    CODE:
    RETVAL = mem->actual_used;

    OUTPUT:
    RETVAL

sigar_uint64_t
actual_free(mem)
    Sigar::Mem mem

    CODE:
    RETVAL = mem->actual_free;

    OUTPUT:
    RETVAL

double
used_percent(mem)
    Sigar::Mem mem

    CODE:
    RETVAL = mem->used_percent;

    OUTPUT:
    RETVAL

double
free_percent(mem)
    Sigar::Mem mem

    CODE:
    RETVAL = mem->free_percent;

    OUTPUT:
    RETVAL


MODULE = Sigar   PACKAGE = Sigar   PREFIX = sigar_

Sigar::NfsClientV3
nfs_client_v3(sigar)
    Sigar sigar

    PREINIT:
    int status;

    CODE:
    RETVAL = safemalloc(sizeof(*RETVAL));
    if ((status = sigar_nfs_client_v3_get(sigar, RETVAL)) != SIGAR_OK) {
        SIGAR_CROAK(sigar, "nfs_client_v3");
    }

    OUTPUT:
    RETVAL

MODULE = Sigar   PACKAGE = Sigar::NfsClientV3   PREFIX = sigar_

void
DESTROY(obj)
    Sigar::NfsClientV3 obj

    CODE:
    safefree(obj);

sigar_uint64_t
null(nfs_client_v3)
    Sigar::NfsClientV3 nfs_client_v3

    CODE:
    RETVAL = nfs_client_v3->null;

    OUTPUT:
    RETVAL

sigar_uint64_t
getattr(nfs_client_v3)
    Sigar::NfsClientV3 nfs_client_v3

    CODE:
    RETVAL = nfs_client_v3->getattr;

    OUTPUT:
    RETVAL

sigar_uint64_t
setattr(nfs_client_v3)
    Sigar::NfsClientV3 nfs_client_v3

    CODE:
    RETVAL = nfs_client_v3->setattr;

    OUTPUT:
    RETVAL

sigar_uint64_t
lookup(nfs_client_v3)
    Sigar::NfsClientV3 nfs_client_v3

    CODE:
    RETVAL = nfs_client_v3->lookup;

    OUTPUT:
    RETVAL

sigar_uint64_t
access(nfs_client_v3)
    Sigar::NfsClientV3 nfs_client_v3

    CODE:
    RETVAL = nfs_client_v3->access;

    OUTPUT:
    RETVAL

sigar_uint64_t
readlink(nfs_client_v3)
    Sigar::NfsClientV3 nfs_client_v3

    CODE:
    RETVAL = nfs_client_v3->readlink;

    OUTPUT:
    RETVAL

sigar_uint64_t
read(nfs_client_v3)
    Sigar::NfsClientV3 nfs_client_v3

    CODE:
    RETVAL = nfs_client_v3->read;

    OUTPUT:
    RETVAL

sigar_uint64_t
write(nfs_client_v3)
    Sigar::NfsClientV3 nfs_client_v3

    CODE:
    RETVAL = nfs_client_v3->write;

    OUTPUT:
    RETVAL

sigar_uint64_t
create(nfs_client_v3)
    Sigar::NfsClientV3 nfs_client_v3

    CODE:
    RETVAL = nfs_client_v3->create;

    OUTPUT:
    RETVAL

sigar_uint64_t
mkdir(nfs_client_v3)
    Sigar::NfsClientV3 nfs_client_v3

    CODE:
    RETVAL = nfs_client_v3->mkdir;

    OUTPUT:
    RETVAL

sigar_uint64_t
symlink(nfs_client_v3)
    Sigar::NfsClientV3 nfs_client_v3

    CODE:
    RETVAL = nfs_client_v3->symlink;

    OUTPUT:
    RETVAL

sigar_uint64_t
mknod(nfs_client_v3)
    Sigar::NfsClientV3 nfs_client_v3

    CODE:
    RETVAL = nfs_client_v3->mknod;

    OUTPUT:
    RETVAL

sigar_uint64_t
remove(nfs_client_v3)
    Sigar::NfsClientV3 nfs_client_v3

    CODE:
    RETVAL = nfs_client_v3->remove;

    OUTPUT:
    RETVAL

sigar_uint64_t
rmdir(nfs_client_v3)
    Sigar::NfsClientV3 nfs_client_v3

    CODE:
    RETVAL = nfs_client_v3->rmdir;

    OUTPUT:
    RETVAL

sigar_uint64_t
rename(nfs_client_v3)
    Sigar::NfsClientV3 nfs_client_v3

    CODE:
    RETVAL = nfs_client_v3->rename;

    OUTPUT:
    RETVAL

sigar_uint64_t
link(nfs_client_v3)
    Sigar::NfsClientV3 nfs_client_v3

    CODE:
    RETVAL = nfs_client_v3->link;

    OUTPUT:
    RETVAL

sigar_uint64_t
readdir(nfs_client_v3)
    Sigar::NfsClientV3 nfs_client_v3

    CODE:
    RETVAL = nfs_client_v3->readdir;

    OUTPUT:
    RETVAL

sigar_uint64_t
readdirplus(nfs_client_v3)
    Sigar::NfsClientV3 nfs_client_v3

    CODE:
    RETVAL = nfs_client_v3->readdirplus;

    OUTPUT:
    RETVAL

sigar_uint64_t
fsstat(nfs_client_v3)
    Sigar::NfsClientV3 nfs_client_v3

    CODE:
    RETVAL = nfs_client_v3->fsstat;

    OUTPUT:
    RETVAL

sigar_uint64_t
fsinfo(nfs_client_v3)
    Sigar::NfsClientV3 nfs_client_v3

    CODE:
    RETVAL = nfs_client_v3->fsinfo;

    OUTPUT:
    RETVAL

sigar_uint64_t
pathconf(nfs_client_v3)
    Sigar::NfsClientV3 nfs_client_v3

    CODE:
    RETVAL = nfs_client_v3->pathconf;

    OUTPUT:
    RETVAL

sigar_uint64_t
commit(nfs_client_v3)
    Sigar::NfsClientV3 nfs_client_v3

    CODE:
    RETVAL = nfs_client_v3->commit;

    OUTPUT:
    RETVAL


MODULE = Sigar   PACKAGE = Sigar   PREFIX = sigar_

Sigar::DirUsage
dir_usage(sigar, name)
    Sigar sigar
    const char * name

    PREINIT:
    int status;

    CODE:
    RETVAL = safemalloc(sizeof(*RETVAL));
    if ((status = sigar_dir_usage_get(sigar, name, RETVAL)) != SIGAR_OK) {
        SIGAR_CROAK(sigar, "dir_usage");
    }

    OUTPUT:
    RETVAL

MODULE = Sigar   PACKAGE = Sigar::DirUsage   PREFIX = sigar_

void
DESTROY(obj)
    Sigar::DirUsage obj

    CODE:
    safefree(obj);

sigar_uint64_t
total(dir_usage)
    Sigar::DirUsage dir_usage

    CODE:
    RETVAL = dir_usage->total;

    OUTPUT:
    RETVAL

sigar_uint64_t
files(dir_usage)
    Sigar::DirUsage dir_usage

    CODE:
    RETVAL = dir_usage->files;

    OUTPUT:
    RETVAL

sigar_uint64_t
subdirs(dir_usage)
    Sigar::DirUsage dir_usage

    CODE:
    RETVAL = dir_usage->subdirs;

    OUTPUT:
    RETVAL

sigar_uint64_t
symlinks(dir_usage)
    Sigar::DirUsage dir_usage

    CODE:
    RETVAL = dir_usage->symlinks;

    OUTPUT:
    RETVAL

sigar_uint64_t
chrdevs(dir_usage)
    Sigar::DirUsage dir_usage

    CODE:
    RETVAL = dir_usage->chrdevs;

    OUTPUT:
    RETVAL

sigar_uint64_t
blkdevs(dir_usage)
    Sigar::DirUsage dir_usage

    CODE:
    RETVAL = dir_usage->blkdevs;

    OUTPUT:
    RETVAL

sigar_uint64_t
sockets(dir_usage)
    Sigar::DirUsage dir_usage

    CODE:
    RETVAL = dir_usage->sockets;

    OUTPUT:
    RETVAL

sigar_uint64_t
disk_usage(dir_usage)
    Sigar::DirUsage dir_usage

    CODE:
    RETVAL = dir_usage->disk_usage;

    OUTPUT:
    RETVAL


MODULE = Sigar   PACKAGE = Sigar   PREFIX = sigar_


MODULE = Sigar   PACKAGE = Sigar::NetConnection   PREFIX = sigar_

void
DESTROY(obj)
    Sigar::NetConnection obj

    CODE:
    safefree(obj);

sigar_uint64_t
local_port(net_connection)
    Sigar::NetConnection net_connection

    CODE:
    RETVAL = net_connection->local_port;

    OUTPUT:
    RETVAL

Sigar::NetAddress
local_address(net_connection)
    Sigar::NetConnection net_connection

    CODE:
    RETVAL = net_connection->local_address;

    OUTPUT:
    RETVAL

sigar_uint64_t
remote_port(net_connection)
    Sigar::NetConnection net_connection

    CODE:
    RETVAL = net_connection->remote_port;

    OUTPUT:
    RETVAL

Sigar::NetAddress
remote_address(net_connection)
    Sigar::NetConnection net_connection

    CODE:
    RETVAL = net_connection->remote_address;

    OUTPUT:
    RETVAL

IV
type(net_connection)
    Sigar::NetConnection net_connection

    CODE:
    RETVAL = net_connection->type;

    OUTPUT:
    RETVAL

IV
state(net_connection)
    Sigar::NetConnection net_connection

    CODE:
    RETVAL = net_connection->state;

    OUTPUT:
    RETVAL

sigar_uint64_t
send_queue(net_connection)
    Sigar::NetConnection net_connection

    CODE:
    RETVAL = net_connection->send_queue;

    OUTPUT:
    RETVAL

sigar_uint64_t
receive_queue(net_connection)
    Sigar::NetConnection net_connection

    CODE:
    RETVAL = net_connection->receive_queue;

    OUTPUT:
    RETVAL


MODULE = Sigar   PACKAGE = Sigar   PREFIX = sigar_

Sigar::Tcp
tcp(sigar)
    Sigar sigar

    PREINIT:
    int status;

    CODE:
    RETVAL = safemalloc(sizeof(*RETVAL));
    if ((status = sigar_tcp_get(sigar, RETVAL)) != SIGAR_OK) {
        SIGAR_CROAK(sigar, "tcp");
    }

    OUTPUT:
    RETVAL

MODULE = Sigar   PACKAGE = Sigar::Tcp   PREFIX = sigar_

void
DESTROY(obj)
    Sigar::Tcp obj

    CODE:
    safefree(obj);

sigar_uint64_t
active_opens(tcp)
    Sigar::Tcp tcp

    CODE:
    RETVAL = tcp->active_opens;

    OUTPUT:
    RETVAL

sigar_uint64_t
passive_opens(tcp)
    Sigar::Tcp tcp

    CODE:
    RETVAL = tcp->passive_opens;

    OUTPUT:
    RETVAL

sigar_uint64_t
attempt_fails(tcp)
    Sigar::Tcp tcp

    CODE:
    RETVAL = tcp->attempt_fails;

    OUTPUT:
    RETVAL

sigar_uint64_t
estab_resets(tcp)
    Sigar::Tcp tcp

    CODE:
    RETVAL = tcp->estab_resets;

    OUTPUT:
    RETVAL

sigar_uint64_t
curr_estab(tcp)
    Sigar::Tcp tcp

    CODE:
    RETVAL = tcp->curr_estab;

    OUTPUT:
    RETVAL

sigar_uint64_t
in_segs(tcp)
    Sigar::Tcp tcp

    CODE:
    RETVAL = tcp->in_segs;

    OUTPUT:
    RETVAL

sigar_uint64_t
out_segs(tcp)
    Sigar::Tcp tcp

    CODE:
    RETVAL = tcp->out_segs;

    OUTPUT:
    RETVAL

sigar_uint64_t
retrans_segs(tcp)
    Sigar::Tcp tcp

    CODE:
    RETVAL = tcp->retrans_segs;

    OUTPUT:
    RETVAL

sigar_uint64_t
in_errs(tcp)
    Sigar::Tcp tcp

    CODE:
    RETVAL = tcp->in_errs;

    OUTPUT:
    RETVAL

sigar_uint64_t
out_rsts(tcp)
    Sigar::Tcp tcp

    CODE:
    RETVAL = tcp->out_rsts;

    OUTPUT:
    RETVAL


MODULE = Sigar   PACKAGE = Sigar   PREFIX = sigar_

Sigar::NetInterfaceStat
net_interface_stat(sigar, name)
    Sigar sigar
    const char * name

    PREINIT:
    int status;

    CODE:
    RETVAL = safemalloc(sizeof(*RETVAL));
    if ((status = sigar_net_interface_stat_get(sigar, name, RETVAL)) != SIGAR_OK) {
        SIGAR_CROAK(sigar, "net_interface_stat");
    }

    OUTPUT:
    RETVAL

MODULE = Sigar   PACKAGE = Sigar::NetInterfaceStat   PREFIX = sigar_

void
DESTROY(obj)
    Sigar::NetInterfaceStat obj

    CODE:
    safefree(obj);

sigar_uint64_t
rx_bytes(net_interface_stat)
    Sigar::NetInterfaceStat net_interface_stat

    CODE:
    RETVAL = net_interface_stat->rx_bytes;

    OUTPUT:
    RETVAL

sigar_uint64_t
rx_packets(net_interface_stat)
    Sigar::NetInterfaceStat net_interface_stat

    CODE:
    RETVAL = net_interface_stat->rx_packets;

    OUTPUT:
    RETVAL

sigar_uint64_t
rx_errors(net_interface_stat)
    Sigar::NetInterfaceStat net_interface_stat

    CODE:
    RETVAL = net_interface_stat->rx_errors;

    OUTPUT:
    RETVAL

sigar_uint64_t
rx_dropped(net_interface_stat)
    Sigar::NetInterfaceStat net_interface_stat

    CODE:
    RETVAL = net_interface_stat->rx_dropped;

    OUTPUT:
    RETVAL

sigar_uint64_t
rx_overruns(net_interface_stat)
    Sigar::NetInterfaceStat net_interface_stat

    CODE:
    RETVAL = net_interface_stat->rx_overruns;

    OUTPUT:
    RETVAL

sigar_uint64_t
rx_frame(net_interface_stat)
    Sigar::NetInterfaceStat net_interface_stat

    CODE:
    RETVAL = net_interface_stat->rx_frame;

    OUTPUT:
    RETVAL

sigar_uint64_t
tx_bytes(net_interface_stat)
    Sigar::NetInterfaceStat net_interface_stat

    CODE:
    RETVAL = net_interface_stat->tx_bytes;

    OUTPUT:
    RETVAL

sigar_uint64_t
tx_packets(net_interface_stat)
    Sigar::NetInterfaceStat net_interface_stat

    CODE:
    RETVAL = net_interface_stat->tx_packets;

    OUTPUT:
    RETVAL

sigar_uint64_t
tx_errors(net_interface_stat)
    Sigar::NetInterfaceStat net_interface_stat

    CODE:
    RETVAL = net_interface_stat->tx_errors;

    OUTPUT:
    RETVAL

sigar_uint64_t
tx_dropped(net_interface_stat)
    Sigar::NetInterfaceStat net_interface_stat

    CODE:
    RETVAL = net_interface_stat->tx_dropped;

    OUTPUT:
    RETVAL

sigar_uint64_t
tx_overruns(net_interface_stat)
    Sigar::NetInterfaceStat net_interface_stat

    CODE:
    RETVAL = net_interface_stat->tx_overruns;

    OUTPUT:
    RETVAL

sigar_uint64_t
tx_collisions(net_interface_stat)
    Sigar::NetInterfaceStat net_interface_stat

    CODE:
    RETVAL = net_interface_stat->tx_collisions;

    OUTPUT:
    RETVAL

sigar_uint64_t
tx_carrier(net_interface_stat)
    Sigar::NetInterfaceStat net_interface_stat

    CODE:
    RETVAL = net_interface_stat->tx_carrier;

    OUTPUT:
    RETVAL

sigar_uint64_t
speed(net_interface_stat)
    Sigar::NetInterfaceStat net_interface_stat

    CODE:
    RETVAL = net_interface_stat->speed;

    OUTPUT:
    RETVAL


MODULE = Sigar   PACKAGE = Sigar   PREFIX = sigar_

Sigar::ProcCred
proc_cred(sigar, pid)
    Sigar sigar
    sigar_pid_t pid

    PREINIT:
    int status;

    CODE:
    RETVAL = safemalloc(sizeof(*RETVAL));
    if ((status = sigar_proc_cred_get(sigar, pid, RETVAL)) != SIGAR_OK) {
        SIGAR_CROAK(sigar, "proc_cred");
    }

    OUTPUT:
    RETVAL

MODULE = Sigar   PACKAGE = Sigar::ProcCred   PREFIX = sigar_

void
DESTROY(obj)
    Sigar::ProcCred obj

    CODE:
    safefree(obj);

sigar_uint64_t
uid(proc_cred)
    Sigar::ProcCred proc_cred

    CODE:
    RETVAL = proc_cred->uid;

    OUTPUT:
    RETVAL

sigar_uint64_t
gid(proc_cred)
    Sigar::ProcCred proc_cred

    CODE:
    RETVAL = proc_cred->gid;

    OUTPUT:
    RETVAL

sigar_uint64_t
euid(proc_cred)
    Sigar::ProcCred proc_cred

    CODE:
    RETVAL = proc_cred->euid;

    OUTPUT:
    RETVAL

sigar_uint64_t
egid(proc_cred)
    Sigar::ProcCred proc_cred

    CODE:
    RETVAL = proc_cred->egid;

    OUTPUT:
    RETVAL


MODULE = Sigar   PACKAGE = Sigar   PREFIX = sigar_

Sigar::ProcFd
proc_fd(sigar, pid)
    Sigar sigar
    sigar_pid_t pid

    PREINIT:
    int status;

    CODE:
    RETVAL = safemalloc(sizeof(*RETVAL));
    if ((status = sigar_proc_fd_get(sigar, pid, RETVAL)) != SIGAR_OK) {
        SIGAR_CROAK(sigar, "proc_fd");
    }

    OUTPUT:
    RETVAL

MODULE = Sigar   PACKAGE = Sigar::ProcFd   PREFIX = sigar_

void
DESTROY(obj)
    Sigar::ProcFd obj

    CODE:
    safefree(obj);

sigar_uint64_t
total(proc_fd)
    Sigar::ProcFd proc_fd

    CODE:
    RETVAL = proc_fd->total;

    OUTPUT:
    RETVAL


MODULE = Sigar   PACKAGE = Sigar   PREFIX = sigar_

Sigar::ProcCredName
proc_cred_name(sigar, pid)
    Sigar sigar
    sigar_pid_t pid

    PREINIT:
    int status;

    CODE:
    RETVAL = safemalloc(sizeof(*RETVAL));
    if ((status = sigar_proc_cred_name_get(sigar, pid, RETVAL)) != SIGAR_OK) {
        SIGAR_CROAK(sigar, "proc_cred_name");
    }

    OUTPUT:
    RETVAL

MODULE = Sigar   PACKAGE = Sigar::ProcCredName   PREFIX = sigar_

void
DESTROY(obj)
    Sigar::ProcCredName obj

    CODE:
    safefree(obj);

char *
user(proc_cred_name)
    Sigar::ProcCredName proc_cred_name

    CODE:
    RETVAL = proc_cred_name->user;

    OUTPUT:
    RETVAL

char *
group(proc_cred_name)
    Sigar::ProcCredName proc_cred_name

    CODE:
    RETVAL = proc_cred_name->group;

    OUTPUT:
    RETVAL


MODULE = Sigar   PACKAGE = Sigar   PREFIX = sigar_

Sigar::ProcCpu
proc_cpu(sigar, pid)
    Sigar sigar
    sigar_pid_t pid

    PREINIT:
    int status;

    CODE:
    RETVAL = safemalloc(sizeof(*RETVAL));
    if ((status = sigar_proc_cpu_get(sigar, pid, RETVAL)) != SIGAR_OK) {
        SIGAR_CROAK(sigar, "proc_cpu");
    }

    OUTPUT:
    RETVAL

MODULE = Sigar   PACKAGE = Sigar::ProcCpu   PREFIX = sigar_

void
DESTROY(obj)
    Sigar::ProcCpu obj

    CODE:
    safefree(obj);

double
percent(proc_cpu)
    Sigar::ProcCpu proc_cpu

    CODE:
    RETVAL = proc_cpu->percent;

    OUTPUT:
    RETVAL

sigar_uint64_t
last_time(proc_cpu)
    Sigar::ProcCpu proc_cpu

    CODE:
    RETVAL = proc_cpu->last_time;

    OUTPUT:
    RETVAL

sigar_uint64_t
start_time(proc_cpu)
    Sigar::ProcCpu proc_cpu

    CODE:
    RETVAL = proc_cpu->start_time;

    OUTPUT:
    RETVAL

sigar_uint64_t
user(proc_cpu)
    Sigar::ProcCpu proc_cpu

    CODE:
    RETVAL = proc_cpu->user;

    OUTPUT:
    RETVAL

sigar_uint64_t
sys(proc_cpu)
    Sigar::ProcCpu proc_cpu

    CODE:
    RETVAL = proc_cpu->sys;

    OUTPUT:
    RETVAL

sigar_uint64_t
total(proc_cpu)
    Sigar::ProcCpu proc_cpu

    CODE:
    RETVAL = proc_cpu->total;

    OUTPUT:
    RETVAL


MODULE = Sigar   PACKAGE = Sigar   PREFIX = sigar_

Sigar::NfsServerV2
nfs_server_v2(sigar)
    Sigar sigar

    PREINIT:
    int status;

    CODE:
    RETVAL = safemalloc(sizeof(*RETVAL));
    if ((status = sigar_nfs_server_v2_get(sigar, RETVAL)) != SIGAR_OK) {
        SIGAR_CROAK(sigar, "nfs_server_v2");
    }

    OUTPUT:
    RETVAL

MODULE = Sigar   PACKAGE = Sigar::NfsServerV2   PREFIX = sigar_

void
DESTROY(obj)
    Sigar::NfsServerV2 obj

    CODE:
    safefree(obj);

sigar_uint64_t
null(nfs_server_v2)
    Sigar::NfsServerV2 nfs_server_v2

    CODE:
    RETVAL = nfs_server_v2->null;

    OUTPUT:
    RETVAL

sigar_uint64_t
getattr(nfs_server_v2)
    Sigar::NfsServerV2 nfs_server_v2

    CODE:
    RETVAL = nfs_server_v2->getattr;

    OUTPUT:
    RETVAL

sigar_uint64_t
setattr(nfs_server_v2)
    Sigar::NfsServerV2 nfs_server_v2

    CODE:
    RETVAL = nfs_server_v2->setattr;

    OUTPUT:
    RETVAL

sigar_uint64_t
root(nfs_server_v2)
    Sigar::NfsServerV2 nfs_server_v2

    CODE:
    RETVAL = nfs_server_v2->root;

    OUTPUT:
    RETVAL

sigar_uint64_t
lookup(nfs_server_v2)
    Sigar::NfsServerV2 nfs_server_v2

    CODE:
    RETVAL = nfs_server_v2->lookup;

    OUTPUT:
    RETVAL

sigar_uint64_t
readlink(nfs_server_v2)
    Sigar::NfsServerV2 nfs_server_v2

    CODE:
    RETVAL = nfs_server_v2->readlink;

    OUTPUT:
    RETVAL

sigar_uint64_t
read(nfs_server_v2)
    Sigar::NfsServerV2 nfs_server_v2

    CODE:
    RETVAL = nfs_server_v2->read;

    OUTPUT:
    RETVAL

sigar_uint64_t
writecache(nfs_server_v2)
    Sigar::NfsServerV2 nfs_server_v2

    CODE:
    RETVAL = nfs_server_v2->writecache;

    OUTPUT:
    RETVAL

sigar_uint64_t
write(nfs_server_v2)
    Sigar::NfsServerV2 nfs_server_v2

    CODE:
    RETVAL = nfs_server_v2->write;

    OUTPUT:
    RETVAL

sigar_uint64_t
create(nfs_server_v2)
    Sigar::NfsServerV2 nfs_server_v2

    CODE:
    RETVAL = nfs_server_v2->create;

    OUTPUT:
    RETVAL

sigar_uint64_t
remove(nfs_server_v2)
    Sigar::NfsServerV2 nfs_server_v2

    CODE:
    RETVAL = nfs_server_v2->remove;

    OUTPUT:
    RETVAL

sigar_uint64_t
rename(nfs_server_v2)
    Sigar::NfsServerV2 nfs_server_v2

    CODE:
    RETVAL = nfs_server_v2->rename;

    OUTPUT:
    RETVAL

sigar_uint64_t
link(nfs_server_v2)
    Sigar::NfsServerV2 nfs_server_v2

    CODE:
    RETVAL = nfs_server_v2->link;

    OUTPUT:
    RETVAL

sigar_uint64_t
symlink(nfs_server_v2)
    Sigar::NfsServerV2 nfs_server_v2

    CODE:
    RETVAL = nfs_server_v2->symlink;

    OUTPUT:
    RETVAL

sigar_uint64_t
mkdir(nfs_server_v2)
    Sigar::NfsServerV2 nfs_server_v2

    CODE:
    RETVAL = nfs_server_v2->mkdir;

    OUTPUT:
    RETVAL

sigar_uint64_t
rmdir(nfs_server_v2)
    Sigar::NfsServerV2 nfs_server_v2

    CODE:
    RETVAL = nfs_server_v2->rmdir;

    OUTPUT:
    RETVAL

sigar_uint64_t
readdir(nfs_server_v2)
    Sigar::NfsServerV2 nfs_server_v2

    CODE:
    RETVAL = nfs_server_v2->readdir;

    OUTPUT:
    RETVAL

sigar_uint64_t
fsstat(nfs_server_v2)
    Sigar::NfsServerV2 nfs_server_v2

    CODE:
    RETVAL = nfs_server_v2->fsstat;

    OUTPUT:
    RETVAL


MODULE = Sigar   PACKAGE = Sigar   PREFIX = sigar_

Sigar::ProcState
proc_state(sigar, pid)
    Sigar sigar
    sigar_pid_t pid

    PREINIT:
    int status;

    CODE:
    RETVAL = safemalloc(sizeof(*RETVAL));
    if ((status = sigar_proc_state_get(sigar, pid, RETVAL)) != SIGAR_OK) {
        SIGAR_CROAK(sigar, "proc_state");
    }

    OUTPUT:
    RETVAL

MODULE = Sigar   PACKAGE = Sigar::ProcState   PREFIX = sigar_

void
DESTROY(obj)
    Sigar::ProcState obj

    CODE:
    safefree(obj);

char
state(proc_state)
    Sigar::ProcState proc_state

    CODE:
    RETVAL = proc_state->state;

    OUTPUT:
    RETVAL

char *
name(proc_state)
    Sigar::ProcState proc_state

    CODE:
    RETVAL = proc_state->name;

    OUTPUT:
    RETVAL

sigar_uint64_t
ppid(proc_state)
    Sigar::ProcState proc_state

    CODE:
    RETVAL = proc_state->ppid;

    OUTPUT:
    RETVAL

IV
tty(proc_state)
    Sigar::ProcState proc_state

    CODE:
    RETVAL = proc_state->tty;

    OUTPUT:
    RETVAL

IV
nice(proc_state)
    Sigar::ProcState proc_state

    CODE:
    RETVAL = proc_state->nice;

    OUTPUT:
    RETVAL

IV
priority(proc_state)
    Sigar::ProcState proc_state

    CODE:
    RETVAL = proc_state->priority;

    OUTPUT:
    RETVAL

sigar_uint64_t
threads(proc_state)
    Sigar::ProcState proc_state

    CODE:
    RETVAL = proc_state->threads;

    OUTPUT:
    RETVAL

IV
processor(proc_state)
    Sigar::ProcState proc_state

    CODE:
    RETVAL = proc_state->processor;

    OUTPUT:
    RETVAL


MODULE = Sigar   PACKAGE = Sigar   PREFIX = sigar_

Sigar::ProcExe
proc_exe(sigar, pid)
    Sigar sigar
    sigar_pid_t pid

    PREINIT:
    int status;

    CODE:
    RETVAL = safemalloc(sizeof(*RETVAL));
    if ((status = sigar_proc_exe_get(sigar, pid, RETVAL)) != SIGAR_OK) {
        SIGAR_CROAK(sigar, "proc_exe");
    }

    OUTPUT:
    RETVAL

MODULE = Sigar   PACKAGE = Sigar::ProcExe   PREFIX = sigar_

void
DESTROY(obj)
    Sigar::ProcExe obj

    CODE:
    safefree(obj);

char *
name(proc_exe)
    Sigar::ProcExe proc_exe

    CODE:
    RETVAL = proc_exe->name;

    OUTPUT:
    RETVAL

char *
cwd(proc_exe)
    Sigar::ProcExe proc_exe

    CODE:
    RETVAL = proc_exe->cwd;

    OUTPUT:
    RETVAL

