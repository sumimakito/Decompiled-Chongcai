package cn.apppark.vertify.activity.free.self;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.util.ArrayList;
import javax.microedition.khronos.opengles.GL10;

public class Ball720
{
  int a = 0;
  int b;
  public float mAngleX;
  public float mAngleY;
  public float mAngleZ;
  private IntBuffer mNormalBuffer;
  private FloatBuffer mTextureBuffer;
  private IntBuffer mVertexBuffer;
  
  public Ball720(int paramInt1, int paramInt2)
  {
    this.b = paramInt2;
    Object localObject3 = generateTexCoor(32, 16);
    paramInt2 = 0;
    int i = localObject3.length;
    Object localObject2 = new ArrayList();
    Object localObject1 = new ArrayList();
    for (float f1 = 90.0F; f1 > -90.0F; f1 -= 11.25F) {
      for (float f2 = 360.0F; f2 > 0.0F; f2 -= 11.25F)
      {
        double d = paramInt1 * 10000 * Math.cos(Math.toRadians(f1));
        int j = (int)(Math.cos(Math.toRadians(f2)) * d);
        int k = (int)(d * Math.sin(Math.toRadians(f2)));
        int m = (int)(paramInt1 * 10000 * Math.sin(Math.toRadians(f1)));
        d = paramInt1 * 10000 * Math.cos(Math.toRadians(f1 - 11.25F));
        int n = (int)(Math.cos(Math.toRadians(f2)) * d);
        int i1 = (int)(d * Math.sin(Math.toRadians(f2)));
        int i2 = (int)(paramInt1 * 10000 * Math.sin(Math.toRadians(f1 - 11.25F)));
        d = paramInt1 * 10000 * Math.cos(Math.toRadians(f1 - 11.25F));
        int i3 = (int)(Math.cos(Math.toRadians(f2 - 11.25F)) * d);
        int i4 = (int)(d * Math.sin(Math.toRadians(f2 - 11.25F)));
        int i5 = (int)(paramInt1 * 10000 * Math.sin(Math.toRadians(f1 - 11.25F)));
        d = paramInt1 * 10000 * Math.cos(Math.toRadians(f1));
        int i6 = (int)(Math.cos(Math.toRadians(f2 - 11.25F)) * d);
        int i7 = (int)(d * Math.sin(Math.toRadians(f2 - 11.25F)));
        int i8 = (int)(paramInt1 * 10000 * Math.sin(Math.toRadians(f1)));
        ((ArrayList)localObject2).add(Integer.valueOf(j));
        ((ArrayList)localObject2).add(Integer.valueOf(m));
        ((ArrayList)localObject2).add(Integer.valueOf(k));
        ((ArrayList)localObject2).add(Integer.valueOf(n));
        ((ArrayList)localObject2).add(Integer.valueOf(i2));
        ((ArrayList)localObject2).add(Integer.valueOf(i1));
        ((ArrayList)localObject2).add(Integer.valueOf(i6));
        ((ArrayList)localObject2).add(Integer.valueOf(i8));
        ((ArrayList)localObject2).add(Integer.valueOf(i7));
        ((ArrayList)localObject2).add(Integer.valueOf(i6));
        ((ArrayList)localObject2).add(Integer.valueOf(i8));
        ((ArrayList)localObject2).add(Integer.valueOf(i7));
        ((ArrayList)localObject2).add(Integer.valueOf(n));
        ((ArrayList)localObject2).add(Integer.valueOf(i2));
        ((ArrayList)localObject2).add(Integer.valueOf(i1));
        ((ArrayList)localObject2).add(Integer.valueOf(i3));
        ((ArrayList)localObject2).add(Integer.valueOf(i5));
        ((ArrayList)localObject2).add(Integer.valueOf(i4));
        j = paramInt2 + 1;
        ((ArrayList)localObject1).add(Float.valueOf(localObject3[(paramInt2 % i)]));
        paramInt2 = j + 1;
        ((ArrayList)localObject1).add(Float.valueOf(localObject3[(j % i)]));
        j = paramInt2 + 1;
        ((ArrayList)localObject1).add(Float.valueOf(localObject3[(paramInt2 % i)]));
        paramInt2 = j + 1;
        ((ArrayList)localObject1).add(Float.valueOf(localObject3[(j % i)]));
        j = paramInt2 + 1;
        ((ArrayList)localObject1).add(Float.valueOf(localObject3[(paramInt2 % i)]));
        paramInt2 = j + 1;
        ((ArrayList)localObject1).add(Float.valueOf(localObject3[(j % i)]));
        j = paramInt2 + 1;
        ((ArrayList)localObject1).add(Float.valueOf(localObject3[(paramInt2 % i)]));
        paramInt2 = j + 1;
        ((ArrayList)localObject1).add(Float.valueOf(localObject3[(j % i)]));
        j = paramInt2 + 1;
        ((ArrayList)localObject1).add(Float.valueOf(localObject3[(paramInt2 % i)]));
        paramInt2 = j + 1;
        ((ArrayList)localObject1).add(Float.valueOf(localObject3[(j % i)]));
        j = paramInt2 + 1;
        ((ArrayList)localObject1).add(Float.valueOf(localObject3[(paramInt2 % i)]));
        paramInt2 = j + 1;
        ((ArrayList)localObject1).add(Float.valueOf(localObject3[(j % i)]));
      }
    }
    this.a = (((ArrayList)localObject2).size() / 3);
    localObject3 = new int[this.a * 3];
    paramInt1 = 0;
    while (paramInt1 < ((ArrayList)localObject2).size())
    {
      localObject3[paramInt1] = ((Integer)((ArrayList)localObject2).get(paramInt1)).intValue();
      paramInt1 += 1;
    }
    localObject2 = ByteBuffer.allocateDirect(localObject3.length * 4);
    ((ByteBuffer)localObject2).order(ByteOrder.nativeOrder());
    this.mVertexBuffer = ((ByteBuffer)localObject2).asIntBuffer();
    this.mVertexBuffer.put((int[])localObject3);
    this.mVertexBuffer.position(0);
    ByteBuffer.allocateDirect(localObject3.length * 4).order(ByteOrder.nativeOrder());
    this.mNormalBuffer = ((ByteBuffer)localObject2).asIntBuffer();
    this.mNormalBuffer.put((int[])localObject3);
    this.mNormalBuffer.position(0);
    localObject2 = new float[((ArrayList)localObject1).size()];
    paramInt1 = 0;
    while (paramInt1 < ((ArrayList)localObject1).size())
    {
      localObject2[paramInt1] = ((Float)((ArrayList)localObject1).get(paramInt1)).floatValue();
      paramInt1 += 1;
    }
    localObject1 = ByteBuffer.allocateDirect(localObject2.length * 4);
    ((ByteBuffer)localObject1).order(ByteOrder.nativeOrder());
    this.mTextureBuffer = ((ByteBuffer)localObject1).asFloatBuffer();
    this.mTextureBuffer.put((float[])localObject2);
    this.mTextureBuffer.position(0);
  }
  
  public void drawSelf(GL10 paramGL10)
  {
    paramGL10.glRotatef(this.mAngleZ, 0.0F, 0.0F, 1.0F);
    paramGL10.glRotatef(this.mAngleX, 1.0F, 0.0F, 0.0F);
    paramGL10.glRotatef(this.mAngleY, 0.0F, 1.0F, 0.0F);
    paramGL10.glEnableClientState(32884);
    paramGL10.glVertexPointer(3, 5132, 0, this.mVertexBuffer);
    paramGL10.glEnableClientState(32885);
    paramGL10.glNormalPointer(5132, 0, this.mNormalBuffer);
    paramGL10.glEnable(3553);
    paramGL10.glEnableClientState(32888);
    paramGL10.glTexCoordPointer(2, 5126, 0, this.mTextureBuffer);
    paramGL10.glBindTexture(3553, this.b);
    paramGL10.glDrawArrays(4, 0, this.a);
  }
  
  public float[] generateTexCoor(int paramInt1, int paramInt2)
  {
    float[] arrayOfFloat = new float[paramInt1 * paramInt2 * 6 * 2];
    float f1 = 1.0F / paramInt1;
    float f2 = 1.0F / paramInt2;
    int j = 0;
    int i = 0;
    while (j < paramInt2)
    {
      int k = 0;
      while (k < paramInt1)
      {
        float f3 = k * f1;
        float f4 = j * f2;
        int m = i + 1;
        arrayOfFloat[i] = f3;
        i = m + 1;
        arrayOfFloat[m] = f4;
        m = i + 1;
        arrayOfFloat[i] = f3;
        i = m + 1;
        arrayOfFloat[m] = (f4 + f2);
        m = i + 1;
        arrayOfFloat[i] = (f3 + f1);
        i = m + 1;
        arrayOfFloat[m] = f4;
        m = i + 1;
        arrayOfFloat[i] = (f3 + f1);
        i = m + 1;
        arrayOfFloat[m] = f4;
        m = i + 1;
        arrayOfFloat[i] = f3;
        i = m + 1;
        arrayOfFloat[m] = (f4 + f2);
        m = i + 1;
        arrayOfFloat[i] = (f3 + f1);
        i = m + 1;
        arrayOfFloat[m] = (f4 + f2);
        k += 1;
      }
      j += 1;
    }
    return arrayOfFloat;
  }
  
  public void increaseX(float paramFloat)
  {
    this.mAngleX += paramFloat;
  }
  
  public void increaseY(float paramFloat)
  {
    this.mAngleY += paramFloat;
  }
  
  public void increaseZ(float paramFloat)
  {
    this.mAngleZ += paramFloat;
  }
  
  public void subtractX(float paramFloat)
  {
    this.mAngleX -= paramFloat;
  }
  
  public void subtractY(float paramFloat)
  {
    this.mAngleY -= paramFloat;
  }
  
  public void subtractZ(float paramFloat)
  {
    this.mAngleZ -= paramFloat;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/self/Ball720.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */