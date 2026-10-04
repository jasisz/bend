# A Nat hidden behind a rewrite crosses the JS effect seam as a BigInt,
# exactly like a direct Nat. The evidence is erased, so the foreign body
# receives only n.
import Base

law host_is_bigint:
  for -e: {0 == 0 : U32}
  for  n: (%h@e : Data; Nat)
  IO(U32)

def host_is_bigint(e, n):
  import "./marshal_rwt_nat.js"

def main() -> IO(Unit):
  do IO<Unit>:
    yes : U32 <- host_is_bigint({==}, 7n)
    IO.print(U32.show(yes))

#|1
