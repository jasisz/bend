function host_is_bigint(n) {
  return typeof n === "bigint" ? 1 : 0;
}

io_eff(CID(host_is_bigint), host_is_bigint);
