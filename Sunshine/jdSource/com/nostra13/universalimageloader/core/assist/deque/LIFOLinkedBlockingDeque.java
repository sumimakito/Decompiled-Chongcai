package com.nostra13.universalimageloader.core.assist.deque;

public class LIFOLinkedBlockingDeque<T>
  extends LinkedBlockingDeque<T>
{
  private static final long serialVersionUID = -4114786347960826192L;
  
  public boolean offer(T paramT)
  {
    return super.offerFirst(paramT);
  }
  
  public T remove()
  {
    return (T)super.removeFirst();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/nostra13/universalimageloader/core/assist/deque/LIFOLinkedBlockingDeque.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */