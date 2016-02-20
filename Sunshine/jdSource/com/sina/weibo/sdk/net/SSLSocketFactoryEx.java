package com.sina.weibo.sdk.net;

import java.io.IOException;
import java.net.Socket;
import java.net.UnknownHostException;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

public class SSLSocketFactoryEx
  extends org.apache.http.conn.ssl.SSLSocketFactory
{
  private static final String TAG = SSLSocketFactoryEx.class.getName();
  SSLContext sslContext = SSLContext.getInstance("TLS");
  
  public SSLSocketFactoryEx(KeyStore paramKeyStore)
    throws NoSuchAlgorithmException, KeyManagementException, KeyStoreException, UnrecoverableKeyException
  {
    super(paramKeyStore);
    this.sslContext.init(null, new TrustManager[] { new KeyStoresTrustManagerEX(new KeyStore[] { paramKeyStore }) }, null);
  }
  
  public Socket createSocket()
    throws IOException
  {
    return this.sslContext.getSocketFactory().createSocket();
  }
  
  public Socket createSocket(Socket paramSocket, String paramString, int paramInt, boolean paramBoolean)
    throws IOException, UnknownHostException
  {
    return this.sslContext.getSocketFactory().createSocket(paramSocket, paramString, paramInt, paramBoolean);
  }
  
  public static class KeyStoresTrustManagerEX
    implements X509TrustManager
  {
    protected ArrayList<X509TrustManager> x509TrustManagers = new ArrayList();
    
    protected KeyStoresTrustManagerEX(KeyStore... paramVarArgs)
    {
      Object localObject1 = new ArrayList();
      for (;;)
      {
        Object localObject2;
        try
        {
          localObject2 = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
          ((TrustManagerFactory)localObject2).init(null);
          ((ArrayList)localObject1).add(localObject2);
          j = paramVarArgs.length;
          i = 0;
          if (i >= j)
          {
            paramVarArgs = ((ArrayList)localObject1).iterator();
            if (!paramVarArgs.hasNext())
            {
              if (this.x509TrustManagers.size() != 0) {
                break;
              }
              throw new RuntimeException("Couldn't find any X509TrustManagers");
            }
          }
          else
          {
            localObject2 = paramVarArgs[i];
            TrustManagerFactory localTrustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            localTrustManagerFactory.init((KeyStore)localObject2);
            ((ArrayList)localObject1).add(localTrustManagerFactory);
            i += 1;
            continue;
          }
          localObject1 = ((TrustManagerFactory)paramVarArgs.next()).getTrustManagers();
        }
        catch (Exception paramVarArgs)
        {
          throw new RuntimeException(paramVarArgs);
        }
        int j = localObject1.length;
        int i = 0;
        while (i < j)
        {
          localObject2 = localObject1[i];
          if ((localObject2 instanceof X509TrustManager)) {
            this.x509TrustManagers.add((X509TrustManager)localObject2);
          }
          i += 1;
        }
      }
    }
    
    public void checkClientTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString)
      throws CertificateException
    {
      ((X509TrustManager)this.x509TrustManagers.get(0)).checkClientTrusted(paramArrayOfX509Certificate, paramString);
    }
    
    public void checkServerTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString)
      throws CertificateException
    {
      Iterator localIterator = this.x509TrustManagers.iterator();
      for (;;)
      {
        if (!localIterator.hasNext()) {
          throw new CertificateException();
        }
        X509TrustManager localX509TrustManager = (X509TrustManager)localIterator.next();
        try
        {
          localX509TrustManager.checkServerTrusted(paramArrayOfX509Certificate, paramString);
          return;
        }
        catch (CertificateException localCertificateException) {}
      }
    }
    
    public X509Certificate[] getAcceptedIssuers()
    {
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = this.x509TrustManagers.iterator();
      for (;;)
      {
        if (!localIterator.hasNext()) {
          return (X509Certificate[])localArrayList.toArray(new X509Certificate[localArrayList.size()]);
        }
        localArrayList.addAll(Arrays.asList(((X509TrustManager)localIterator.next()).getAcceptedIssuers()));
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/sina/weibo/sdk/net/SSLSocketFactoryEx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */