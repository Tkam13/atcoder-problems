# めぐる式二分探索

def binary_search(arr, key)
  ng = -1　# 解が存在しない値
  ok = arr.size # 解が存在する値
  # 最小値を求める、ok,ngをひっくり返すと最大値になる

  while (ok - ng).abs > 1
    mid = (ok + ng) / 2
    # 条件をif文で指定する
    if arr[mid] >= key
      ok = mid
    else
      ng = mid
    end
  end
  ok
end
