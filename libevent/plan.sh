pkg_origin=bixu
pkg_name=libevent
pkg_version=2.0.22
pkg_maintainer="Blake Irvin <blake.irvin@gmail.com>"
pkg_license=('MIT')
pkg_source=https://github.com/${pkg_name}/${pkg_name}/releases/download/release-${pkg_version}-stable/${pkg_name}-${pkg_version}-stable.tar.gz
pkg_shasum=71c2c49f0adadacfdbe6332a372c38cf9c8b7895bb73dabeaa53cdcc1d4e1fa3
pkg_dirname=${pkg_name}-${pkg_version}-stable
pkg_deps=(core/glibc)
pkg_build_deps=(core/cacerts core/gcc core/make)
pkg_bin_dirs=(bin)
pkg_include_dirs=(include)
pkg_lib_dirs=(lib)
pkg_svc_run="bin/memcached"
pkg_expose=(11211)

do_build() {
  ./configure
  make
}
