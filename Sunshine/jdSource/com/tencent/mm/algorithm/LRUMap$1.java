package com.tencent.mm.algorithm;

import java.util.Comparator;
import java.util.Map.Entry;

class LRUMap$1
  implements Comparator<Map.Entry<K, LRUMap<K, O>.TimeVal<O>>>
{
  LRUMap$1(LRUMap paramLRUMap) {}
  
  public int compare(Map.Entry<K, LRUMap<K, O>.TimeVal<O>> paramEntry1, Map.Entry<K, LRUMap<K, O>.TimeVal<O>> paramEntry2)
  {
    return ((LRUMap.TimeVal)paramEntry1.getValue()).t.compareTo(((LRUMap.TimeVal)paramEntry2.getValue()).t);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/algorithm/LRUMap$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */